package com.breze.converter.sys;

import com.breze.entity.dto.sys.JobDTO;
import com.breze.entity.pojo.rbac.Job;
import org.mapstruct.Mapper;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

/**
 * @Author LGX
 * @Date 2023/3/26 16:02
 * @Description
 * @Copyright(c) 2023, 清枫网络工作室
 */
@Mapper
public interface JobConvert {

    JobConvert INSTANCE = Mappers.getMapper(JobConvert.class);

    @Mappings({})
    Job jobDTOToJob(JobDTO jobDTO);
}
