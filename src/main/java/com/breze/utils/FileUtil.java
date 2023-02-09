package com.breze.utils;

import lombok.experimental.UtilityClass;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.Objects;
import java.util.UUID;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 文件工具类
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@UtilityClass
public class FileUtil {
    /**
     * 生成OSS存储空间内的唯一文件名称
     */
    public static String getUniqueFileName(String fileName) {
        Assert.notNull(fileName, "文件不能为空");
        int index = fileName.lastIndexOf(".");
        if ((fileName.isEmpty()) || index == -1) {
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

    /**
     * MultipartFile 转 File
     */
    public static File multipartFileToFile(MultipartFile file) {
        try {
            File toFile;
            if (file != null && file.getSize() > 0) {
                InputStream ins = file.getInputStream();
                toFile = new File(Objects.requireNonNull(file.getOriginalFilename()));
                inputStreamToFile(ins, toFile);
                ins.close();
                return toFile;
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 获取流文件
     *
     * @param ins
     * @param file
     */
    public static void inputStreamToFile(InputStream ins, File file) {
        try {
            OutputStream os = new FileOutputStream(file);
            int bytesRead;
            byte[] buffer = new byte[8192];
            while ((bytesRead = ins.read(buffer, 0, 8192)) != -1) {
                os.write(buffer, 0, bytesRead);
            }
            os.close();
            ins.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 删除本地临时文件
     *
     * @param file
     */
    public static void deleteTempFile(File file) {
        if (file != null) {
            File del = new File(file.toURI());
            del.delete();
        }
    }
}
