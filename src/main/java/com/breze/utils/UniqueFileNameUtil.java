package com.breze.utils;

import java.util.UUID;
/*
 * TODO 生成OSS存储空间内的唯一文件名称
 */

public class UniqueFileNameUtil {
    public static String getRandomImgName(String fileName) {
        int index = fileName.lastIndexOf(".");
        if ((fileName == null || fileName.isEmpty()) || index == -1) {
            throw new IllegalArgumentException();
        }
        // 获取文件后缀
        String suffix = fileName.substring(index);
        // 生成UUID
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        // 生成上传至云服务器的路径
        String path = uuid + suffix;
        return path;
    }

}
