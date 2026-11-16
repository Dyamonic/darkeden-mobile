package com.tencent.turingfd.sdk.ams.ad;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.volatile, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cvolatile {
    /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r5, java.lang.String r6) {
        /*
            r0 = 0
            r1 = 0
            android.content.Context r5 = r5.getApplicationContext()     // Catch: java.lang.Throwable -> L15
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L15
            if (r5 == 0) goto L15
            android.content.pm.PackageInfo r5 = r5.getPackageArchiveInfo(r6, r0)     // Catch: java.lang.Throwable -> L15
            if (r5 == 0) goto L15
            java.lang.String r5 = r5.packageName     // Catch: java.lang.Throwable -> L15
            goto L16
        L15:
            r5 = r1
        L16:
            if (r5 == 0) goto L19
            return r5
        L19:
            r2 = 19
            java.lang.String r3 = "AndroidManifest.xml"
            java.util.zip.ZipFile r4 = new java.util.zip.ZipFile     // Catch: java.lang.Throwable -> L5c
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L5c
            java.util.zip.ZipEntry r6 = r4.getEntry(r3)     // Catch: java.lang.Throwable -> L5d
            java.io.InputStream r6 = r4.getInputStream(r6)     // Catch: java.lang.Throwable -> L5d
            com.tencent.turingfd.sdk.ams.ad.return r1 = new com.tencent.turingfd.sdk.ams.ad.return     // Catch: java.lang.Throwable -> L5a
            r1.<init>()     // Catch: java.lang.Throwable -> L5a
            org.w3c.dom.Document r1 = r1.a(r6)     // Catch: java.lang.Throwable -> L5a
            org.w3c.dom.NodeList r1 = r1.getChildNodes()     // Catch: java.lang.Throwable -> L5a
            org.w3c.dom.Node r0 = r1.item(r0)     // Catch: java.lang.Throwable -> L5a
            org.w3c.dom.NamedNodeMap r0 = r0.getAttributes()     // Catch: java.lang.Throwable -> L5a
            java.lang.String r1 = "package"
            org.w3c.dom.Node r0 = r0.getNamedItem(r1)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r5 = r0.getNodeValue()     // Catch: java.lang.Throwable -> L5a
            com.tencent.turingfd.sdk.ams.ad.Auriga.a(r6)
            int r6 = com.tencent.turingfd.sdk.ams.ad.Cdefault.b()     // Catch: java.lang.Throwable -> L6d
            if (r6 < r2) goto L56
            com.tencent.turingfd.sdk.ams.ad.Auriga.a(r4)     // Catch: java.lang.Throwable -> L6d
            goto L6d
        L56:
            r4.close()     // Catch: java.lang.Throwable -> L6d
            goto L6d
        L5a:
            r1 = r6
            goto L5d
        L5c:
            r4 = r1
        L5d:
            com.tencent.turingfd.sdk.ams.ad.Auriga.a(r1)
            int r6 = com.tencent.turingfd.sdk.ams.ad.Cdefault.b()     // Catch: java.lang.Throwable -> L6d
            if (r6 < r2) goto L6a
            com.tencent.turingfd.sdk.ams.ad.Auriga.a(r4)     // Catch: java.lang.Throwable -> L6d
            goto L6d
        L6a:
            r4.close()     // Catch: java.lang.Throwable -> L6d
        L6d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Cvolatile.a(android.content.Context, java.lang.String):java.lang.String");
    }
}
