package com.qq.gdt.action.f.b;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;

/* loaded from: classes.dex */
public class j implements Closeable {
    private final String a;
    private final long b;
    private BufferedInputStream c;
    private HttpURLConnection d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(String str, long j, BufferedInputStream bufferedInputStream, HttpURLConnection httpURLConnection) {
        this.a = str;
        this.b = j;
        this.c = bufferedInputStream;
        this.d = httpURLConnection;
    }

    public byte[] a() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = this.c.read(bArr);
                if (-1 == read) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } finally {
            k.a(byteArrayOutputStream);
            k.a(this);
        }
    }

    public final String b() throws IOException {
        return new String(a(), k.a);
    }

    public final String c() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = this.c.read(bArr);
                if (-1 == read) {
                    this.c = new BufferedInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    return new String(byteArrayOutputStream.toByteArray(), k.a);
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } finally {
            k.a(byteArrayOutputStream);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        k.a(this.c);
        this.d.disconnect();
        this.d = null;
    }
}
