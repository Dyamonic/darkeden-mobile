package com.tencent.turingfd.sdk.ams.ad;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/* loaded from: classes2.dex */
public class UrsaMinor {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0043, code lost:
    
        if (r4 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r3, java.lang.String r4) {
        /*
            java.lang.String r0 = ""
            android.content.pm.PackageManager r1 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L42
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L42
            r2 = 0
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo(r4, r2)     // Catch: java.lang.Throwable -> L42
            int r3 = r3.uid     // Catch: java.lang.Throwable -> L42
            java.lang.String[] r3 = r1.getPackagesForUid(r3)     // Catch: java.lang.Throwable -> L42
            r3 = r3[r2]     // Catch: java.lang.Throwable -> L42
            r4 = 64
            android.content.pm.PackageInfo r3 = r1.getPackageInfo(r3, r4)     // Catch: java.lang.Throwable -> L42
            android.content.pm.Signature[] r3 = r3.signatures     // Catch: java.lang.Throwable -> L42
            r3 = r3[r2]     // Catch: java.lang.Throwable -> L42
            java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L42
            byte[] r3 = r3.toByteArray()     // Catch: java.lang.Throwable -> L42
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L42
            java.lang.String r3 = "X.509"
            java.security.cert.CertificateFactory r3 = java.security.cert.CertificateFactory.getInstance(r3)     // Catch: java.lang.Throwable -> L43
            java.security.cert.Certificate r3 = r3.generateCertificate(r4)     // Catch: java.lang.Throwable -> L43
            java.security.cert.X509Certificate r3 = (java.security.cert.X509Certificate) r3     // Catch: java.lang.Throwable -> L43
            byte[] r3 = r3.getEncoded()     // Catch: java.lang.Throwable -> L43
            java.lang.String r0 = com.tencent.turingfd.sdk.ams.ad.Norma.a(r3)     // Catch: java.lang.Throwable -> L43
        L3e:
            r4.close()     // Catch: java.lang.Throwable -> L46
            goto L46
        L42:
            r4 = 0
        L43:
            if (r4 == 0) goto L46
            goto L3e
        L46:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.UrsaMinor.a(android.content.Context, java.lang.String):java.lang.String");
    }

    public static List<String> a(File file) throws IOException {
        ArrayList arrayList = new ArrayList();
        JarFile jarFile = new JarFile(file);
        try {
            Certificate[] a = a(jarFile, jarFile.getJarEntry("AndroidManifest.xml"), new byte[8192]);
            if (a != null) {
                for (Certificate certificate : a) {
                    arrayList.add(Norma.a(certificate.getEncoded()));
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            jarFile.close();
            throw th;
        }
        jarFile.close();
        return arrayList;
    }

    public static Certificate[] a(JarFile jarFile, JarEntry jarEntry, byte[] bArr) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            inputStream = jarFile.getInputStream(jarEntry);
            do {
                try {
                } catch (IOException unused) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } while (inputStream.read(bArr, 0, bArr.length) != -1);
            Certificate[] certificates = jarEntry != null ? jarEntry.getCertificates() : null;
            try {
                inputStream.close();
            } catch (IOException unused4) {
            }
            return certificates;
        } catch (IOException unused5) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
