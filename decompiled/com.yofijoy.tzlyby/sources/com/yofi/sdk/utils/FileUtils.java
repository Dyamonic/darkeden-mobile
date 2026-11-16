package com.yofi.sdk.utils;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;

/* loaded from: classes2.dex */
public class FileUtils {
    public static void write(Context context, String fileName, String content) {
        if (content == null) {
            content = "";
        }
        try {
            FileOutputStream openFileOutput = context.openFileOutput(fileName, 0);
            openFileOutput.write(content.getBytes());
            openFileOutput.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getFileName(String filePath) {
        return isEmpty(filePath) ? "" : filePath.substring(filePath.lastIndexOf(File.separator) + 1);
    }

    public static boolean isEmpty(String input) {
        if (input != null && !"".equals(input)) {
            for (int i = 0; i < input.length(); i++) {
                char charAt = input.charAt(i);
                if (charAt != ' ' && charAt != '\t' && charAt != '\r' && charAt != '\n') {
                    return false;
                }
            }
        }
        return true;
    }
}
