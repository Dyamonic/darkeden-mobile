package com.yofi.sdk.cachewebviewlib.utils;

import android.os.Looper;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import kotlin.UByte;

/* loaded from: classes2.dex */
public class FileUtil {
    public static void deleteDirs(String path, boolean isDeleteDir) {
        if (TextUtils.isEmpty(path)) {
            return;
        }
        File file = new File(path);
        if (file.exists()) {
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    deleteDirs(file2.getAbsolutePath(), isDeleteDir);
                } else {
                    file2.delete();
                }
            }
            if (isDeleteDir) {
                file.delete();
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream out) throws IOException {
        byte[] bArr = new byte[512];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                out.write(bArr, 0, read);
            } else {
                inputStream.close();
                out.close();
                return;
            }
        }
    }

    public static String getFileMD5(File file) {
        if (!file.isFile()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    return bytesToHexString(messageDigest.digest());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String bytesToHexString(byte[] src) {
        StringBuilder sb = new StringBuilder("");
        if (src == null || src.length <= 0) {
            return null;
        }
        for (byte b : src) {
            String hexString = Integer.toHexString(b & UByte.MAX_VALUE);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x011e A[Catch: IOException -> 0x0122, TRY_LEAVE, TryCatch #5 {IOException -> 0x0122, blocks: (B:55:0x0119, B:50:0x011e), top: B:54:0x0119 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0119 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File createFile(java.io.InputStream r11, final java.lang.String r12, final java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yofi.sdk.cachewebviewlib.utils.FileUtil.createFile(java.io.InputStream, java.lang.String, java.lang.String):java.io.File");
    }

    public static boolean isMainThread() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }
}
