package com.breze.service.rbac.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.breze.common.enums.ErrorEnum;
import com.breze.common.exception.BusinessException;
import com.breze.converter.sys.GroupConvert;
import com.breze.entity.bo.sys.UserGroupJobBO;
import com.breze.entity.pojo.rbac.Group;
import com.breze.entity.pojo.rbac.GroupJob;
import com.breze.entity.pojo.rbac.Job;
import com.breze.entity.vo.sys.ParentGroupVO;
import com.breze.mapper.rbac.GroupJobMapper;
import com.breze.mapper.rbac.GroupMapper;
import com.breze.mapper.rbac.JobMapper;
import com.breze.mapper.rbac.UserGroupJobMapper;
import com.breze.service.rbac.GroupService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author tylt6688
 * @since 2022-03-25
 */
@Slf4j
@Service
public class GroupServiceImpl extends ServiceImpl<GroupMapper, Group> implements GroupService {

    @Autowired
    private GroupMapper groupMapper;

    @Autowired
    private JobMapper jobMapper;

    @Autowired
    private GroupJobMapper groupJobMapper;

    @Autowired
    private UserGroupJobMapper userGroupJobMapper;


    @Override
    public List<Group> findGroupAndJobByUserId(Long userId) {
        List<Group> list = new ArrayList<>();
        List<UserGroupJobBO> groupJobs = userGroupJobMapper.listUserGroupJobBOs(userId);
        groupJobs.forEach(groupJob -> {
            Group group = this.findTreeById(groupJob.getGroupId());
            Job job = jobMapper.selectById(groupJob.getJobId());
            group.setJob(job.getName());
            list.add(group);
        });

        return list;
    }

    @Override
    public List<ParentGroupVO> getGroupParent() {
        List<Group> groups = groupMapper.selectList(new QueryWrapper<Group>().eq("parent_id", 0));
        ArrayList<ParentGroupVO> parentGroupVOS = new ArrayList<>();
        for (Group group : groups) {
            ParentGroupVO parentGroupVO = GroupConvert.INSTANCE.groupToGroupParent(group);
            parentGroupVOS.add(parentGroupVO);
        }
        return parentGroupVOS;
    }

    private List<Group> buildTreeGroup(List<Group> groups) {
        List<Group> finalGroups = new ArrayList<>();
        // 先各自寻找到各自的孩子
        for (Group group : groups) {
            // 提取出父节点
            if (group.getParentId() == 0L) {
                finalGroups.add(group);
            }
            for (Group g : groups) {
                if (group.getId().equals(g.getParentId())) {
                    group.getChildren().add(g);
                }
            }
        }
        return finalGroups;
    }

    @Override
    public List<Group> findAll(String name) {
        return buildTreeGroup(groupMapper.selectList(new QueryWrapper<Group>().like("name", name)));
    }


    @Override
    public List<Job> findJobsByGroupId(Long id) {
        List<GroupJob> groupJobs = groupJobMapper.selectList(new LambdaQueryWrapper<GroupJob>().eq(GroupJob::getGroupId, id));
        List<Job> jobs = new ArrayList<>();
        for (GroupJob groupJob : groupJobs) {
            Job job = jobMapper.selectById(groupJob.getJobId());
            jobs.add(job);
        }
        return jobs;
    }

    @Override
    public Group findById(Long id) {
        Group group = groupMapper.selectById(id);
        QueryWrapper<Group> qw = new QueryWrapper<>();
        qw.eq("parent_id", id);
        List<Group> cgs = groupMapper.selectList(qw);
        group.setChildren(cgs);
        return group;
    }

    // 2022/10/7 21:04 FIXME: 部门递归 获取部门信息 UP BY LUCIFER-LGX
    @Override
    public Group findTreeById(Long id) {
        Group group = groupMapper.selectById(id);
        return findGroup(group);
    }

    private Group findGroup(Group group) {
        List<Group> list = new ArrayList<>();
        if (group.getParentId() == 0L) {
            return group;
        } else {
            Group g = groupMapper.selectById(group.getParentId());
            list.add(group);
            g.setChildren(list);
            return findGroup(g);
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean insert(Group group) {
        if (groupMapper.exists(new QueryWrapper<Group>().eq("name", group.getName()))) {
            return false;
        }
        return groupMapper.insert(group) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean update(Group group) {
        Group g = groupMapper.selectOne(new QueryWrapper<Group>().eq("id", group.getId()));
        if (g == null) {
            return false;
        }
        return groupMapper.updateById(group) > 0;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean delete(Long id) {

        try {
            if (groupJobMapper.selectCount(new QueryWrapper<GroupJob>().eq("group_id", id))>0) {
                throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "删除部门失败");
            }
            if (0 < groupMapper.selectCount(new QueryWrapper<Group>().eq("parent_id", id))) {
                throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "删除部门失败, 子部门存在");
            }
            return groupMapper.deleteById(id) > 0;
        }
        catch (Exception e){
            throw new BusinessException(ErrorEnum.FIND_EXCEPTION, "删除部门失败");
        }




    }
}
