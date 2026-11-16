package com.qq.gdt.action.e.a.a;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public class a {
    public static String a(String str) {
        try {
            Process exec = Runtime.getRuntime().exec(new String[]{"/system/bin/cat", str});
            String readLine = new BufferedReader(new InputStreamReader(exec.getInputStream())).readLine();
            if (readLine != null) {
                return readLine.trim();
            }
            exec.waitFor();
            int exitValue = exec.exitValue();
            if (exitValue == 0) {
                return "get cat error";
            }
            System.err.println("命令执行失败，退出值: " + exitValue);
            return "get cat error";
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return "get cat error";
        }
    }
}
