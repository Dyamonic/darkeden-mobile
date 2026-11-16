package com.qq.gdt.action.f.b;

import android.os.Build;
import com.qq.gdt.action.f.b.i;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class e {
    private final d a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar) {
        this.a = dVar;
    }

    private static j a(HttpURLConnection httpURLConnection) throws IOException {
        return new j(httpURLConnection.getContentType(), httpURLConnection.getContentLength(), new BufferedInputStream(b(httpURLConnection)), httpURLConnection);
    }

    private static void a(HttpURLConnection httpURLConnection, long j) {
        if (Build.VERSION.SDK_INT >= 19) {
            httpURLConnection.setFixedLengthStreamingMode(j);
        } else {
            httpURLConnection.setFixedLengthStreamingMode((int) j);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, h hVar) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        httpURLConnection.setDoOutput(true);
        BufferedOutputStream bufferedOutputStream2 = null;
        if ((hVar.a() != null ? hVar.a().toString() : null) != null) {
            httpURLConnection.addRequestProperty("Content-Type", hVar.a().toString());
        }
        long b = hVar.b();
        if (b > 0) {
            a(httpURLConnection, b);
            httpURLConnection.addRequestProperty("Content-Length", Long.toString(b));
        } else {
            httpURLConnection.setChunkedStreamingMode(0);
        }
        try {
            bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        } catch (Throwable th) {
            th = th;
        }
        try {
            hVar.a(bufferedOutputStream);
            k.a(bufferedOutputStream);
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            k.a(bufferedOutputStream2);
            throw th;
        }
    }

    private static void a(HttpURLConnection httpURLConnection, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            if (value != null) {
                httpURLConnection.addRequestProperty(entry.getKey(), value);
            }
        }
    }

    private static InputStream b(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static boolean b(g gVar) {
        if (gVar.f() == null) {
            return false;
        }
        return "POST".equals(gVar.e());
    }

    public i a(g gVar) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(gVar.a()).openConnection();
        httpURLConnection.setRequestMethod(gVar.e());
        httpURLConnection.setReadTimeout(this.a.b);
        httpURLConnection.setConnectTimeout(this.a.a);
        if (gVar.c() > 0) {
            httpURLConnection.setReadTimeout(gVar.c());
        }
        if (gVar.b() > 0) {
            httpURLConnection.setConnectTimeout(gVar.b());
        }
        httpURLConnection.setDoInput(true);
        Map<String, String> d = gVar.d();
        if (d != null && !d.isEmpty()) {
            a(httpURLConnection, d);
        }
        if (b(gVar)) {
            a(httpURLConnection, gVar.f());
        }
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        String responseMessage = httpURLConnection.getResponseMessage();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        return new i.a().a(gVar).a(responseCode).a(responseMessage).a(headerFields).a(a(httpURLConnection)).a();
    }

    public Executor a() {
        return this.a.c;
    }
}
