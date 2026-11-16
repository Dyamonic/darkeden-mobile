package rich;

import android.os.SystemClock;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import rich.c;

/* loaded from: classes2.dex */
public class y implements rich.c {
    public final Map a = new LinkedHashMap(16, 0.75f, true);
    public long b = 0;
    public final File c;
    public final int d;

    /* loaded from: classes2.dex */
    public static class c extends FilterInputStream {
        public int a;

        public /* synthetic */ c(InputStream inputStream, a aVar) {
            super(inputStream);
            this.a = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() {
            int read = super.read();
            if (read != -1) {
                this.a++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.a += read;
            }
            return read;
        }
    }

    public y(File file, int i) {
        this.c = file;
        this.d = i;
    }

    public static void a(OutputStream outputStream, int i) {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void a(OutputStream outputStream, long j) {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void a(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    public static byte[] a(InputStream inputStream, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    public static long b(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            long j = ((read & 255) << 0) | 0;
            int read2 = inputStream.read();
            if (read2 != -1) {
                long j2 = j | ((read2 & 255) << 8);
                int read3 = inputStream.read();
                if (read3 != -1) {
                    long j3 = j2 | ((read3 & 255) << 16);
                    int read4 = inputStream.read();
                    if (read4 != -1) {
                        long j4 = j3 | ((read4 & 255) << 24);
                        int read5 = inputStream.read();
                        if (read5 != -1) {
                            long j5 = j4 | ((read5 & 255) << 32);
                            int read6 = inputStream.read();
                            if (read6 != -1) {
                                long j6 = j5 | ((read6 & 255) << 40);
                                int read7 = inputStream.read();
                                if (read7 != -1) {
                                    long j7 = j6 | ((read7 & 255) << 48);
                                    int read8 = inputStream.read();
                                    if (read8 != -1) {
                                        return ((read8 & 255) << 56) | j7;
                                    }
                                    throw new EOFException();
                                }
                                throw new EOFException();
                            }
                            throw new EOFException();
                        }
                        throw new EOFException();
                    }
                    throw new EOFException();
                }
                throw new EOFException();
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    public static String c(InputStream inputStream) {
        return new String(a(inputStream, (int) b(inputStream)), "UTF-8");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized rich.c.a a(java.lang.String r12) {
        /*
            r11 = this;
            monitor-enter(r11)
            java.util.Map r0 = r11.a     // Catch: java.lang.Throwable -> L95
            java.lang.Object r0 = r0.get(r12)     // Catch: java.lang.Throwable -> L95
            rich.y$b r0 = (rich.y.b) r0     // Catch: java.lang.Throwable -> L95
            r1 = 0
            if (r0 != 0) goto Le
            monitor-exit(r11)
            return r1
        Le:
            java.io.File r2 = r11.b(r12)     // Catch: java.lang.Throwable -> L95
            r3 = 1
            r4 = 0
            r5 = 2
            rich.y$c r6 = new rich.y$c     // Catch: java.lang.Throwable -> L45 java.lang.NegativeArraySizeException -> L48 java.io.IOException -> L6a
            java.io.BufferedInputStream r7 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L45 java.lang.NegativeArraySizeException -> L48 java.io.IOException -> L6a
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L45 java.lang.NegativeArraySizeException -> L48 java.io.IOException -> L6a
            r8.<init>(r2)     // Catch: java.lang.Throwable -> L45 java.lang.NegativeArraySizeException -> L48 java.io.IOException -> L6a
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L45 java.lang.NegativeArraySizeException -> L48 java.io.IOException -> L6a
            r6.<init>(r7, r1)     // Catch: java.lang.Throwable -> L45 java.lang.NegativeArraySizeException -> L48 java.io.IOException -> L6a
            rich.y.b.a(r6)     // Catch: java.lang.Throwable -> L3f java.lang.NegativeArraySizeException -> L41 java.io.IOException -> L43
            long r7 = r2.length()     // Catch: java.lang.Throwable -> L3f java.lang.NegativeArraySizeException -> L41 java.io.IOException -> L43
            int r9 = r6.a     // Catch: java.lang.Throwable -> L3f java.lang.NegativeArraySizeException -> L41 java.io.IOException -> L43
            long r9 = (long) r9     // Catch: java.lang.Throwable -> L3f java.lang.NegativeArraySizeException -> L41 java.io.IOException -> L43
            long r7 = r7 - r9
            int r7 = (int) r7     // Catch: java.lang.Throwable -> L3f java.lang.NegativeArraySizeException -> L41 java.io.IOException -> L43
            byte[] r7 = a(r6, r7)     // Catch: java.lang.Throwable -> L3f java.lang.NegativeArraySizeException -> L41 java.io.IOException -> L43
            rich.c$a r12 = r0.a(r7)     // Catch: java.lang.Throwable -> L3f java.lang.NegativeArraySizeException -> L41 java.io.IOException -> L43
            r6.close()     // Catch: java.io.IOException -> L3d java.lang.Throwable -> L95
            monitor-exit(r11)
            return r12
        L3d:
            monitor-exit(r11)
            return r1
        L3f:
            r12 = move-exception
            goto L8c
        L41:
            r0 = move-exception
            goto L4a
        L43:
            r0 = move-exception
            goto L6c
        L45:
            r12 = move-exception
            r6 = r1
            goto L8c
        L48:
            r0 = move-exception
            r6 = r1
        L4a:
            java.lang.String r7 = "%s: %s"
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = r2.getAbsolutePath()     // Catch: java.lang.Throwable -> L3f
            r5[r4] = r2     // Catch: java.lang.Throwable -> L3f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L3f
            r5[r3] = r0     // Catch: java.lang.Throwable -> L3f
            rich.v.b(r7, r5)     // Catch: java.lang.Throwable -> L3f
            r11.d(r12)     // Catch: java.lang.Throwable -> L3f
            if (r6 == 0) goto L68
            r6.close()     // Catch: java.io.IOException -> L66 java.lang.Throwable -> L95
            goto L68
        L66:
            monitor-exit(r11)
            return r1
        L68:
            monitor-exit(r11)
            return r1
        L6a:
            r0 = move-exception
            r6 = r1
        L6c:
            java.lang.String r7 = "%s: %s"
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = r2.getAbsolutePath()     // Catch: java.lang.Throwable -> L3f
            r5[r4] = r2     // Catch: java.lang.Throwable -> L3f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L3f
            r5[r3] = r0     // Catch: java.lang.Throwable -> L3f
            rich.v.b(r7, r5)     // Catch: java.lang.Throwable -> L3f
            r11.d(r12)     // Catch: java.lang.Throwable -> L3f
            if (r6 == 0) goto L8a
            r6.close()     // Catch: java.io.IOException -> L88 java.lang.Throwable -> L95
            goto L8a
        L88:
            monitor-exit(r11)
            return r1
        L8a:
            monitor-exit(r11)
            return r1
        L8c:
            if (r6 == 0) goto L94
            r6.close()     // Catch: java.io.IOException -> L92 java.lang.Throwable -> L95
            goto L94
        L92:
            monitor-exit(r11)
            return r1
        L94:
            throw r12     // Catch: java.lang.Throwable -> L95
        L95:
            r12 = move-exception
            monitor-exit(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: rich.y.a(java.lang.String):rich.c$a");
    }

    public synchronized void a() {
        BufferedInputStream bufferedInputStream;
        if (!this.c.exists()) {
            if (!this.c.mkdirs()) {
                v.c("Unable to create cache dir %s", this.c.getAbsolutePath());
            }
            return;
        }
        File[] listFiles = this.c.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            BufferedInputStream bufferedInputStream2 = null;
            try {
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                b a2 = b.a(bufferedInputStream);
                a2.a = file.length();
                a(a2.b, a2);
                try {
                    bufferedInputStream.close();
                } catch (IOException unused2) {
                }
            } catch (IOException unused3) {
                bufferedInputStream2 = bufferedInputStream;
                if (file != null) {
                    file.delete();
                }
                if (bufferedInputStream2 != null) {
                    bufferedInputStream2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream2 = bufferedInputStream;
                if (bufferedInputStream2 != null) {
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        }
    }

    public final void a(String str, b bVar) {
        if (this.a.containsKey(str)) {
            this.b = (bVar.a - ((b) this.a.get(str)).a) + this.b;
        } else {
            this.b += bVar.a;
        }
        this.a.put(str, bVar);
    }

    public File b(String str) {
        return new File(this.c, c(str));
    }

    public final String c(String str) {
        int length = str.length() / 2;
        StringBuilder a2 = rich.a.a(String.valueOf(str.substring(0, length).hashCode()));
        a2.append(String.valueOf(str.substring(length).hashCode()));
        return a2.toString();
    }

    public synchronized void d(String str) {
        boolean delete = b(str).delete();
        b bVar = (b) this.a.get(str);
        if (bVar != null) {
            this.b -= bVar.a;
            this.a.remove(str);
        }
        if (!delete) {
            v.b("Could not delete cache entry for key=%s, filename=%s", str, c(str));
        }
    }

    /* loaded from: classes2.dex */
    public static class b {
        public long a;
        public String b;
        public String c;
        public long d;
        public long e;
        public long f;
        public long g;
        public Map h;

        public b() {
        }

        public b(String str, c.a aVar) {
            this.b = str;
            this.a = aVar.a.length;
            this.c = aVar.b;
            this.d = aVar.c;
            this.e = aVar.d;
            this.f = aVar.e;
            this.g = aVar.f;
            this.h = aVar.g;
        }

        public static b a(InputStream inputStream) {
            b bVar = new b();
            if (y.a(inputStream) != 538247942) {
                throw new IOException();
            }
            bVar.b = y.c(inputStream);
            String c = y.c(inputStream);
            bVar.c = c;
            if (c.equals("")) {
                bVar.c = null;
            }
            bVar.d = y.b(inputStream);
            bVar.e = y.b(inputStream);
            bVar.f = y.b(inputStream);
            bVar.g = y.b(inputStream);
            int a = y.a(inputStream);
            Map emptyMap = a == 0 ? Collections.emptyMap() : new HashMap(a);
            for (int i = 0; i < a; i++) {
                emptyMap.put(y.c(inputStream).intern(), y.c(inputStream).intern());
            }
            bVar.h = emptyMap;
            return bVar;
        }

        public c.a a(byte[] bArr) {
            c.a aVar = new c.a();
            aVar.a = bArr;
            aVar.b = this.c;
            aVar.c = this.d;
            aVar.d = this.e;
            aVar.e = this.f;
            aVar.f = this.g;
            aVar.g = this.h;
            return aVar;
        }

        public boolean a(OutputStream outputStream) {
            try {
                y.a(outputStream, 538247942);
                y.a(outputStream, this.b);
                String str = this.c;
                if (str == null) {
                    str = "";
                }
                y.a(outputStream, str);
                y.a(outputStream, this.d);
                y.a(outputStream, this.e);
                y.a(outputStream, this.f);
                y.a(outputStream, this.g);
                Map map = this.h;
                if (map != null) {
                    y.a(outputStream, map.size());
                    for (Map.Entry entry : map.entrySet()) {
                        y.a(outputStream, (String) entry.getKey());
                        y.a(outputStream, (String) entry.getValue());
                    }
                } else {
                    y.a(outputStream, 0);
                }
                outputStream.flush();
                return true;
            } catch (IOException e) {
                v.b("%s", e.toString());
                return false;
            }
        }
    }

    public synchronized void a(String str, c.a aVar) {
        long length = aVar.a.length;
        if (this.b + length >= this.d) {
            if (v.b) {
                v.d("Pruning old cache entries.", new Object[0]);
            }
            long j = this.b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator it = this.a.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                b bVar = (b) ((Map.Entry) it.next()).getValue();
                if (b(bVar.b).delete()) {
                    this.b -= bVar.a;
                } else {
                    String str2 = bVar.b;
                    v.b("Could not delete cache entry for key=%s, filename=%s", str2, c(str2));
                }
                it.remove();
                i++;
                if (((float) (this.b + length)) < this.d * 0.9f) {
                    break;
                }
            }
            if (v.b) {
                v.d("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
        File b2 = b(str);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(b2));
            b bVar2 = new b(str, aVar);
            if (!bVar2.a(bufferedOutputStream)) {
                bufferedOutputStream.close();
                v.b("Failed to write header for %s", b2.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(aVar.a);
            bufferedOutputStream.close();
            a(str, bVar2);
        } catch (IOException unused) {
            if (b2.delete()) {
                return;
            }
            v.b("Could not clean up file %s", b2.getAbsolutePath());
        }
    }

    public static int a(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            int i = (read << 0) | 0;
            int read2 = inputStream.read();
            if (read2 != -1) {
                int i2 = i | (read2 << 8);
                int read3 = inputStream.read();
                if (read3 != -1) {
                    int i3 = i2 | (read3 << 16);
                    int read4 = inputStream.read();
                    if (read4 != -1) {
                        return (read4 << 24) | i3;
                    }
                    throw new EOFException();
                }
                throw new EOFException();
            }
            throw new EOFException();
        }
        throw new EOFException();
    }
}
