package com.breze.utils;

import lombok.Cleanup;
import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Objects;
import java.util.UUID;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 文件工具类
 * @Copyright(c) 2022 , 青枫网络工作室
 */

@Log4j2
@UtilityClass
public class FileUtil {

    /**
     * 本地文件上传
     */
    public static String uploadFile(String uploadPath, MultipartFile receiveFile) throws IOException {
        String fileName = receiveFile.getOriginalFilename();
        File file = new File(uploadPath + File.separator + fileName);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        String filePath = file.getAbsolutePath();
        receiveFile.transferTo(Paths.get(filePath));
        return filePath;
    }

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
        // 返回上传至云服务器的唯一文件名
        return uuid + suffix;
    }

    /**
     * MultipartFile 转 File
     */
    public static File multipartFileToFile(MultipartFile file) {
        try {
            File toFile;
            if (file != null && file.getSize() > 0) {
                @Cleanup InputStream ins = file.getInputStream();
                toFile = new File(Objects.requireNonNull(file.getOriginalFilename()));
                inputStreamToFile(ins, toFile);
                return toFile;
            }
            return null;
        } catch (IOException e) {
            log.error("multipartFileToFile 转换失败", e);
            return null;
        }
    }

    /**
     * 获取流文件
     *
     * @param ins  输入流
     * @param file 文件
     */
    public static void inputStreamToFile(InputStream ins, File file) {
        try {
            @Cleanup OutputStream os = Files.newOutputStream(file.toPath());
            int bytesRead;
            byte[] buffer = new byte[8192];
            while ((bytesRead = ins.read(buffer, 0, 8192)) != -1) {
                os.write(buffer, 0, bytesRead);
            }
            ins.close();
        } catch (Exception e) {
            log.error("inputStreamToFile 转换失败", e);
        }
    }


    /**
     * 删除本地临时文件
     *
     * @param file 文件
     */
    public static Boolean deleteTempFile(File file) {
        if (file != null) {
            File del = new File(file.toURI());
            return del.delete();
        }
        return false;
    }
}
