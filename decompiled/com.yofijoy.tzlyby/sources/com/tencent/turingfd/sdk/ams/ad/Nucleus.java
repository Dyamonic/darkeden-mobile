package com.tencent.turingfd.sdk.ams.ad;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class Nucleus {
    public final Object a;
    public final Object b;
    public Process c;
    public DataOutputStream d;
    public Cdo e;
    public Cdo f;
    public ByteArrayOutputStream g;
    public ByteArrayOutputStream h;

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Nucleus$for, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cfor {
        public final String a;
        public final String b;
        public final long c;

        public Cfor(String str, String str2, long j) {
            this.a = str;
            this.b = str2;
            this.c = j;
        }
    }

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Nucleus$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cif {
        public final String a;
        public final String b;

        public Cif(String str, Integer num, String str2, String str3) {
            this.a = str2;
            this.b = str3;
        }
    }

    public Nucleus(String str) throws IllegalArgumentException, FileNotFoundException, IOException, InterruptedException {
        boolean z;
        Object obj = new Object();
        this.a = obj;
        this.b = new Object();
        this.g = new ByteArrayOutputStream();
        this.h = new ByteArrayOutputStream();
        if (str != null && str.length() != 0) {
            if (str.startsWith("/") && !new File(str).exists()) {
                throw new FileNotFoundException();
            }
            this.c = Runtime.getRuntime().exec(str);
            synchronized (obj) {
                obj.wait(10L);
            }
            try {
                this.c.exitValue();
                z = true;
            } catch (Exception unused) {
                z = false;
            }
            if (!z) {
                this.d = new DataOutputStream(this.c.getOutputStream());
                this.e = new Cdo("s", this.c.getInputStream(), this.g);
                this.f = new Cdo("e", this.c.getErrorStream(), this.h);
                synchronized (this.a) {
                    this.a.wait(10L);
                }
                this.e.start();
                this.f.start();
                return;
            }
            throw new IOException();
        }
        throw new IllegalArgumentException();
    }

    public final Cif a(Cfor cfor, long j) throws InterruptedException {
        boolean z;
        synchronized (this.a) {
            synchronized (this.b) {
                z = new String(this.g.toByteArray()).lastIndexOf(":RET=") == -1;
            }
            if (z) {
                this.a.wait(j);
            }
        }
        synchronized (this.b) {
            byte[] byteArray = this.g.toByteArray();
            byte[] byteArray2 = this.h.toByteArray();
            String str = new String(byteArray);
            String str2 = new String(byteArray2);
            if (str.lastIndexOf(":RET=") == -1) {
                return null;
            }
            this.g.reset();
            this.h.reset();
            if (str.lastIndexOf(":RET=0") != -1) {
                return new Cif(cfor.a, 0, str.substring(0, str.lastIndexOf(":RET=")), str2);
            }
            return new Cif(cfor.a, Integer.valueOf((str.lastIndexOf(":RET=EOF") == -1 && str2.lastIndexOf(":RET=EOF") == -1) ? 1 : 2), str.substring(0, str.lastIndexOf(":RET=")), str2);
        }
    }

    public void finalize() throws Throwable {
        try {
            a();
        } catch (Throwable unused) {
        }
        super.finalize();
    }

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Nucleus$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo extends Thread {
        public InputStream a;
        public ByteArrayOutputStream b;

        public Cdo(String str, InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream) {
            super(str);
            this.a = inputStream;
            this.b = byteArrayOutputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            byte[] bArr;
            try {
                bArr = new byte[1024];
            } catch (Exception unused) {
                return;
            }
            while (true) {
                int read = this.a.read(bArr);
                if (read < 0) {
                    synchronized (Nucleus.this.b) {
                        this.b.write(":RET=EOF".getBytes());
                        this.b.flush();
                    }
                    synchronized (Nucleus.this.a) {
                        Nucleus.this.a.notifyAll();
                    }
                    return;
                }
                if (read > 0) {
                    synchronized (Nucleus.this.b) {
                        this.b.write(bArr, 0, read);
                        this.b.flush();
                    }
                    synchronized (Nucleus.this.a) {
                        Nucleus.this.a.notifyAll();
                    }
                }
                return;
            }
        }
    }

    public final void a() {
        try {
            this.d.write("exit\n".getBytes());
            this.d.flush();
            this.c.wait(100L);
        } catch (Exception unused) {
        }
        Cdo cdo = this.e;
        if (cdo != null) {
            cdo.interrupt();
            this.e = null;
        }
        Cdo cdo2 = this.f;
        if (cdo2 != null) {
            cdo2.interrupt();
            this.f = null;
        }
        Process process = this.c;
        if (process != null) {
            try {
                process.destroy();
            } catch (Throwable unused2) {
            }
            this.c = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0028 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.tencent.turingfd.sdk.ams.ad.Nucleus.Cif a(com.tencent.turingfd.sdk.ams.ad.Nucleus.Cfor r11) throws java.lang.IllegalArgumentException, java.io.IOException, java.lang.InterruptedException, java.util.concurrent.TimeoutException {
        /*
            r10 = this;
            monitor-enter(r10)
            if (r11 == 0) goto L9c
            java.lang.String r0 = r11.a     // Catch: java.lang.Throwable -> La4
            if (r0 == 0) goto L1a
            int r0 = r0.length()     // Catch: java.lang.Throwable -> La4
            if (r0 <= 0) goto L1a
            java.lang.String r0 = r11.b     // Catch: java.lang.Throwable -> La4
            if (r0 == 0) goto L1a
            int r0 = r0.length()     // Catch: java.lang.Throwable -> La4
            if (r0 > 0) goto L18
            goto L1a
        L18:
            r0 = 0
            goto L1b
        L1a:
            r0 = 1
        L1b:
            if (r0 != 0) goto L9c
            long r0 = r11.c     // Catch: java.lang.Throwable -> La4
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L9c
            java.lang.Object r0 = r10.b     // Catch: java.lang.Throwable -> La4
            monitor-enter(r0)     // Catch: java.lang.Throwable -> La4
            java.io.ByteArrayOutputStream r1 = r10.g     // Catch: java.lang.Throwable -> L99
            r1.reset()     // Catch: java.lang.Throwable -> L99
            java.io.ByteArrayOutputStream r1 = r10.h     // Catch: java.lang.Throwable -> L99
            r1.reset()     // Catch: java.lang.Throwable -> L99
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L99
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La4
            r0.<init>()     // Catch: java.lang.Throwable -> La4
            java.lang.String r1 = r11.b     // Catch: java.lang.Throwable -> La4
            r0.append(r1)     // Catch: java.lang.Throwable -> La4
            java.lang.String r1 = "\n"
            r0.append(r1)     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> La4
            java.io.DataOutputStream r1 = r10.d     // Catch: java.lang.Throwable -> La4
            byte[] r0 = r0.getBytes()     // Catch: java.lang.Throwable -> La4
            r1.write(r0)     // Catch: java.lang.Throwable -> La4
            java.io.DataOutputStream r0 = r10.d     // Catch: java.lang.Throwable -> La4
            r0.flush()     // Catch: java.lang.Throwable -> La4
            java.lang.Object r0 = r10.a     // Catch: java.lang.Throwable -> La4
            monitor-enter(r0)     // Catch: java.lang.Throwable -> La4
            java.lang.Object r1 = r10.a     // Catch: java.lang.Throwable -> L96
            r4 = 10
            r1.wait(r4)     // Catch: java.lang.Throwable -> L96
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L96
            java.io.DataOutputStream r0 = r10.d     // Catch: java.lang.Throwable -> La4
            java.lang.String r1 = "echo :RET=$?\n"
            r0.writeBytes(r1)     // Catch: java.lang.Throwable -> La4
            java.io.DataOutputStream r0 = r10.d     // Catch: java.lang.Throwable -> La4
            r0.flush()     // Catch: java.lang.Throwable -> La4
            long r0 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> La4
            r4 = r2
        L70:
            long r6 = r11.c     // Catch: java.lang.Throwable -> La4
            int r8 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r8 == 0) goto L8e
            long r4 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> La4
            long r4 = r4 - r0
            r8 = 1000000(0xf4240, double:4.940656E-318)
            long r4 = r4 / r8
            long r4 = r6 - r4
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 <= 0) goto L86
            goto L8e
        L86:
            java.util.concurrent.TimeoutException r11 = new java.util.concurrent.TimeoutException     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = "t"
            r11.<init>(r0)     // Catch: java.lang.Throwable -> La4
            throw r11     // Catch: java.lang.Throwable -> La4
        L8e:
            com.tencent.turingfd.sdk.ams.ad.Nucleus$if r6 = r10.a(r11, r4)     // Catch: java.lang.Throwable -> La4
            if (r6 == 0) goto L70
            monitor-exit(r10)
            return r6
        L96:
            r11 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L96
            throw r11     // Catch: java.lang.Throwable -> La4
        L99:
            r11 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L99
            throw r11     // Catch: java.lang.Throwable -> La4
        L9c:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = "v"
            r11.<init>(r0)     // Catch: java.lang.Throwable -> La4
            throw r11     // Catch: java.lang.Throwable -> La4
        La4:
            r11 = move-exception
            monitor-exit(r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Nucleus.a(com.tencent.turingfd.sdk.ams.ad.Nucleus$for):com.tencent.turingfd.sdk.ams.ad.Nucleus$if");
    }
}
