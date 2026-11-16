package com.qq.gdt.action.b;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public class c {
    public static String a(File file, int i) {
        byte[] b;
        if (file != null && file.exists() && file.isFile() && (b = b(file, i)) != null) {
            try {
                if (b.length > 0) {
                    return new String(b, "UTF-8").trim();
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return "";
    }

    public static Map<Integer, ByteBuffer> a(File file) {
        if (file != null && file.exists() && file.isFile()) {
            try {
                return g.a(g.a(file));
            } catch (e e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] b(File file, int i) {
        ByteBuffer c;
        if (file == null || !file.exists() || !file.isFile() || (c = c(file, i)) == null) {
            return null;
        }
        return Arrays.copyOfRange(c.array(), c.arrayOffset() + c.position(), c.arrayOffset() + c.limit());
    }

    public static ByteBuffer c(File file, int i) {
        Map<Integer, ByteBuffer> a;
        if (file == null || !file.exists() || !file.isFile() || (a = a(file)) == null) {
            return null;
        }
        return a.get(Integer.valueOf(i));
    }
}
