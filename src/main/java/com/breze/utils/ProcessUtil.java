package com.breze.utils;

import lombok.experimental.UtilityClass;
import lombok.extern.log4j.Log4j2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.util.List;


/**
 * @Author tylt6688
 * @Date 2024/8/5 11:27
 * @Description 外部 Python 脚本执行工具类
 * @Copyright(c) 2024 , 青枫网络工作室
 */

@Log4j2
@UtilityClass
public class ProcessUtil {

    private static final ProcessBuilder processBuilder = new ProcessBuilder();


    /**
     * Python 脚本执行
     *
     * @param commend 命令参数
     * @return process 进程对象
     */
    public static Process exec(List<String> commend) {
        Process process = null;
        try {
            String[] commends = new String[commend.size()];
            /*
             * 将一个可遍历的commends对象流转换成一个新的String数组,原理是将commends对象流中的元素依次收集并创建一个新的String数组
             * 这种转换方法的优点是它避免了直接将commends对象转换为String[]数组时
             * 如果commends是一个 parallelCollection，那么直接转换可能会导致并发问题
             * 因为commends的元素可能会被并发访问。使用toArray方法可以确保线程安全，同时提高性能
             */
            commend.toArray(commends);
            processBuilder.command(commends);
            // 启动进程
            process = processBuilder.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return process;
    }


    /**
     * 获取脚本执行结果
     *
     * @param process 进程对象
     * @return String 脚本执行结果
     */
    public static String getOutput(Process process) {
        String output = null;
        BufferedReader reader = null;
        try {
            if (process != null) {
                StringBuilder stringBuilder = new StringBuilder();
                reader = new BufferedReader(new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8));
                String line;
                while ((line = reader.readLine()) != null) {
                    stringBuilder.append(line);
                    // 保留换行分隔符
                    stringBuilder.append(System.lineSeparator());
                }
                output = stringBuilder.toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeQuietly(reader);
        return output;
    }

    /**
     * 获取脚本执行错误原因
     *
     * @param process 进程对象
     * @return String 脚本执行错误原因
     */
    public static String getError(Process process) {
        String errput = null;
        BufferedReader reader = null;
        try {
            if (process != null) {
                StringBuilder stringBuffer = new StringBuilder();
                reader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
                while (reader.read() != -1) {
                    stringBuffer.append("\n").append(reader.readLine());
                }
                errput = stringBuffer.toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        closeQuietly(reader);
        return errput;
    }


    /**
     * 关闭输入流
     *
     * @param reader 字符输入流对象
     */
    public static void closeQuietly(Reader reader) {
        try {
            if (reader != null) {
                reader.close();
            }
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }


    /**
     * 销毁进程对象
     *
     * @param process 进程对象
     */
    public static void destroy(Process process) {
        if (process != null) {
            process.destroyForcibly();
        }
    }

}

