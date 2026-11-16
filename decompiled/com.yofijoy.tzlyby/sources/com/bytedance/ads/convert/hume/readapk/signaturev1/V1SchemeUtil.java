package com.bytedance.ads.convert.hume.readapk.signaturev1;

import java.io.DataInput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class V1SchemeUtil {
    static final byte[] V1_MAGIC = {108, 116, 108, 111, 118, 101, 122, 104};

    private static boolean isV1MagicMatch(byte[] bArr) {
        if (bArr.length != V1_MAGIC.length) {
            return false;
        }
        int i = 0;
        while (true) {
            byte[] bArr2 = V1_MAGIC;
            if (i >= bArr2.length) {
                return true;
            }
            if (bArr[i] != bArr2[i]) {
                return false;
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0083, code lost:
    
        if (r1 == null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0070, code lost:
    
        if (r1 == null) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String readChannel(java.io.File r7) {
        /*
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63 java.io.IOException -> L6b java.io.FileNotFoundException -> L76 java.io.UnsupportedEncodingException -> L7e
            java.lang.String r2 = "r"
            r1.<init>(r7, r2)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63 java.io.IOException -> L6b java.io.FileNotFoundException -> L76 java.io.UnsupportedEncodingException -> L7e
            long r2 = r1.length()     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            byte[] r7 = com.bytedance.ads.convert.hume.readapk.signaturev1.V1SchemeUtil.V1_MAGIC     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            int r4 = r7.length     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            byte[] r4 = new byte[r4]     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            int r7 = r7.length     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            long r5 = (long) r7     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            long r2 = r2 - r5
            r1.seek(r2)     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            r1.readFully(r4)     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            boolean r7 = isV1MagicMatch(r4)     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            java.lang.String r4 = ""
            if (r7 != 0) goto L2b
            r1.close()     // Catch: java.io.IOException -> L26
            goto L2a
        L26:
            r7 = move-exception
            r7.printStackTrace()
        L2a:
            return r4
        L2b:
            r5 = 2
            long r2 = r2 - r5
            r1.seek(r2)     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            short r7 = readShort(r1)     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            if (r7 > 0) goto L40
            r1.close()     // Catch: java.io.IOException -> L3b
            goto L3f
        L3b:
            r7 = move-exception
            r7.printStackTrace()
        L3f:
            return r4
        L40:
            long r4 = (long) r7
            long r2 = r2 - r4
            r1.seek(r2)     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            byte[] r7 = new byte[r7]     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            r1.readFully(r7)     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            java.lang.String r3 = "UTF-8"
            r2.<init>(r7, r3)     // Catch: java.lang.Exception -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d java.io.UnsupportedEncodingException -> L5f java.lang.Throwable -> L8b
            r1.close()     // Catch: java.io.IOException -> L56
            r0 = r2
            goto L8a
        L56:
            r7 = move-exception
            r0 = r2
            goto L87
        L59:
            r7 = move-exception
            goto L65
        L5b:
            r7 = move-exception
            goto L6d
        L5d:
            r7 = move-exception
            goto L78
        L5f:
            r7 = move-exception
            goto L80
        L61:
            r7 = move-exception
            goto L8d
        L63:
            r7 = move-exception
            r1 = r0
        L65:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto L8a
            goto L85
        L6b:
            r7 = move-exception
            r1 = r0
        L6d:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto L8a
        L72:
            r1.close()     // Catch: java.io.IOException -> L86
            goto L8a
        L76:
            r7 = move-exception
            r1 = r0
        L78:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto L8a
            goto L85
        L7e:
            r7 = move-exception
            r1 = r0
        L80:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto L8a
        L85:
            goto L72
        L86:
            r7 = move-exception
        L87:
            r7.printStackTrace()
        L8a:
            return r0
        L8b:
            r7 = move-exception
            r0 = r1
        L8d:
            if (r0 == 0) goto L97
            r0.close()     // Catch: java.io.IOException -> L93
            goto L97
        L93:
            r0 = move-exception
            r0.printStackTrace()
        L97:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.ads.convert.hume.readapk.signaturev1.V1SchemeUtil.readChannel(java.io.File):java.lang.String");
    }

    private static short readShort(DataInput dataInput) throws IOException {
        byte[] bArr = new byte[2];
        dataInput.readFully(bArr);
        return ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getShort(0);
    }
}
