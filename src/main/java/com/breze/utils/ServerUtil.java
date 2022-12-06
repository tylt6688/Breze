package com.breze.utils;

import cn.hutool.system.oshi.CpuInfo;
import cn.hutool.system.oshi.OshiUtil;
import lombok.experimental.UtilityClass;

import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author tylt
 * @Description 主机监控工具类
 * @Date 2022/2/5 11:57
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@UtilityClass
public class ServerUtil {


    /**
     * 获取cpu利用率
     */
    public static String getOsInfo() {
        CpuInfo cpuInfo = OshiUtil.getCpuInfo();
        double free = cpuInfo.getFree();
        DecimalFormat format = new DecimalFormat("#.00");
        String cpuUsed = String.valueOf(Double.parseDouble(format.format(100.0D - free)));
        return cpuUsed;
    }

    /**
     * 获取内存数据
     */
    public static List getMemoryInfo() {
        String memorySpace = "内存总量：" + OshiUtil.getMemory().getTotal() / 1024 / 1024 + "MB";
        String memoryUsed = "已用内存：" + OshiUtil.getMemory().getAvailable() / 1024 / 1024 + "MB";
        ArrayList<Object> arrayList = new ArrayList<>();
        arrayList.add(memorySpace);
        arrayList.add(memoryUsed);
        return arrayList;
    }

    /**
     * 获取硬盘使用量
     */
    public static List getDiskInfo() {
        File win = new File("/");
        if (win.exists()) {
            long total = win.getTotalSpace();
            long freeSpace = win.getFreeSpace();
            String diskSpace = "磁盘总量：" + total / 1024 / 1024 / 1024 + "G";
            String diskFree = "磁盘剩余：" + freeSpace / 1024 / 1024 / 1024 + "G";
            String diskUsed = "磁盘已用：" + (total - freeSpace) / 1024 / 1024 / 1024 + "G";
            ArrayList<Object> arrayList = new ArrayList<>();
            arrayList.add(diskSpace);
            arrayList.add(diskFree);
            arrayList.add(diskUsed);
            return arrayList;
        }
        return null;
    }

}
