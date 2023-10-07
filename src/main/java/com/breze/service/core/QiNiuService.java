package com.breze.service.core;

import com.qiniu.common.QiniuException;
import org.springframework.web.multipart.MultipartFile;

public interface QiNiuService {

    String uploadFile(MultipartFile file) throws QiniuException;

    Boolean deleteFile(String url) throws QiniuException;


}
