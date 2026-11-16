package com.qq.gdt.action.j;

/* loaded from: classes.dex */
public class y {
    /* JADX WARN: Removed duplicated region for block: B:31:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] a(byte[] r3) {
        /*
            if (r3 == 0) goto L57
            int r0 = r3.length
            if (r0 != 0) goto L6
            goto L57
        L6:
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            r1 = 0
            java.util.zip.GZIPOutputStream r2 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            r2.write(r3)     // Catch: java.lang.Exception -> L2b java.lang.Throwable -> L41
            r2.finish()     // Catch: java.lang.Exception -> L2b java.lang.Throwable -> L41
            byte[] r1 = r0.toByteArray()     // Catch: java.lang.Exception -> L2b java.lang.Throwable -> L41
            r2.close()     // Catch: java.lang.Exception -> L22
            r0.close()     // Catch: java.lang.Exception -> L22
            goto L40
        L22:
            r3 = move-exception
            java.lang.String r3 = r3.getMessage()
            com.qq.gdt.action.j.o.c(r3)
            goto L40
        L2b:
            r3 = move-exception
            goto L31
        L2d:
            r3 = move-exception
            goto L43
        L2f:
            r3 = move-exception
            r2 = r1
        L31:
            java.lang.String r3 = r3.getMessage()     // Catch: java.lang.Throwable -> L41
            com.qq.gdt.action.j.o.c(r3)     // Catch: java.lang.Throwable -> L41
            if (r2 == 0) goto L3d
            r2.close()     // Catch: java.lang.Exception -> L22
        L3d:
            r0.close()     // Catch: java.lang.Exception -> L22
        L40:
            return r1
        L41:
            r3 = move-exception
            r1 = r2
        L43:
            if (r1 == 0) goto L4b
            r1.close()     // Catch: java.lang.Exception -> L49
            goto L4b
        L49:
            r0 = move-exception
            goto L4f
        L4b:
            r0.close()     // Catch: java.lang.Exception -> L49
            goto L56
        L4f:
            java.lang.String r0 = r0.getMessage()
            com.qq.gdt.action.j.o.c(r0)
        L56:
            throw r3
        L57:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.j.y.a(byte[]):byte[]");
    }
}
