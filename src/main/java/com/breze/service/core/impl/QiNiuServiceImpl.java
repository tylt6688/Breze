package com.breze.service.core.impl;

import cn.hutool.core.text.CharSequenceUtil;
import cn.hutool.core.util.StrUtil;
import com.breze.config.OssConfig;
import com.breze.service.core.QiNiuService;
import com.breze.utils.FileUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.Region;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
public class QiNiuServiceImpl implements QiNiuService {

    private final OssConfig ossConfig;
    /**
     * 七牛文件上传管理器
     */
    private UploadManager uploadManager;
    /**
     * 上传的token
     */
    private String token;

    private BucketManager bucketManager;


    public QiNiuServiceImpl(OssConfig ossConfig) {
        this.ossConfig = ossConfig;
        init();
    }

    private void init() {
        // 我是华东地区的所以是region0，如果是其他地区的需要修改
        //具体官方文档可参考 [https://developer.qiniu.com/kodo/1239/java]
        uploadManager = new UploadManager(new Configuration(Region.region0()));
        /**
         * 七牛认证管理
         */
        Auth auth = Auth.create(ossConfig.getAccessKey(), ossConfig.getSecretKey());
        // 根据命名空间生成的上传token
        bucketManager = new BucketManager(auth, new Configuration(Region.region0()));
        token = auth.uploadToken(ossConfig.getBucketName());
    }


    @Override
    public String uploadFile(MultipartFile file) throws QiniuException {

        // 获取文件的名称
        String fileName = file.getOriginalFilename();
        // 使用工具类根据上传文件生成唯一图片名称
        assert fileName != null;
        String newFileName = FileUtil.getUniqueFileName(fileName);
        // 上传文件
        Response res;
        try {
            res = uploadManager.put(file.getInputStream(), newFileName, token, null, null);

            if (!res.isOK()) {
                throw new RuntimeException("上传七牛云出错：" + res);
            }

            // 解析上传成功的结果
            ObjectMapper objectMapper = new ObjectMapper();

            DefaultPutRet putRet = objectMapper.readValue(res.bodyString(), DefaultPutRet.class);

            //获取上传后oss空间内唯一文件地址
            String path = ossConfig.getUrl() + "/" + putRet.key;
            // 直接返回外链地址
            return path;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Boolean deleteFile(String url) throws QiniuException {
        String key = StrUtil.subSuf(url, 25);
        Response response = null;
        try {
            response = bucketManager.delete(ossConfig.getBucketName(), key);
        } catch (QiniuException e) {
            return false;
        }
        return response.isOK();

    }

    /**
     * 给外链添加域名前缀
     */
    @Override
    public String addDomainPrefix(String url) {
        return CharSequenceUtil.isNotBlank(url) ? ossConfig.getUrl() + url : null;
    }


}
