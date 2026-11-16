package com.tencent.turingfd.sdk.ams.ad;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.native, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cnative {
    public static byte[] a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
        try {
            deflaterOutputStream.write(bArr);
            deflaterOutputStream.finish();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
                deflaterOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return byteArray;
        } catch (Exception unused) {
            try {
                byteArrayOutputStream.close();
                deflaterOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return null;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
                deflaterOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            throw th;
        }
    }

    public static byte[] b(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        InflaterInputStream inflaterInputStream = new InflaterInputStream(byteArrayInputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int read = inflaterInputStream.read();
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(read);
            } catch (Exception unused) {
                try {
                    byteArrayInputStream.close();
                    inflaterInputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return null;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                    inflaterInputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayInputStream.close();
            inflaterInputStream.close();
            byteArrayOutputStream.close();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        return byteArray;
    }
}
