package rich;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;
import rich.c;

/* loaded from: classes2.dex */
public class w implements h {
    public static final boolean c = v.b;
    public static int d = 3000;
    public static int e = 4096;
    public final c0 a;
    public final x b;

    public w(c0 c0Var) {
        x xVar = new x(e);
        this.a = c0Var;
        this.b = xVar;
    }

    public static Map a(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    public static void a(String str, o oVar, u uVar) {
        e eVar = oVar.l;
        int g = oVar.g();
        try {
            eVar.b++;
            float f = eVar.a;
            eVar.a = (int) ((eVar.d * f) + f);
            if (!(eVar.b <= eVar.c)) {
                throw uVar;
            }
            oVar.a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(g)));
        } catch (u e2) {
            oVar.a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(g)));
            throw e2;
        }
    }

    public final void a(Map map, c.a aVar) {
        if (aVar == null) {
            return;
        }
        String str = aVar.b;
        if (str != null) {
            map.put("If-None-Match", str);
        }
        long j = aVar.d;
        if (j > 0) {
            map.put("If-Modified-Since", DateUtils.formatDate(new Date(j)));
        }
    }

    public final byte[] a(HttpEntity httpEntity) {
        g0 g0Var = new g0(this.b, (int) httpEntity.getContentLength());
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new s();
            }
            byte[] a = this.b.a(1024);
            while (true) {
                int read = content.read(a);
                if (read == -1) {
                    break;
                }
                g0Var.write(a, 0, read);
            }
            byte[] byteArray = g0Var.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException unused) {
                v.d("Error occured when calling consumingContent", new Object[0]);
            }
            this.b.a(a);
            g0Var.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                httpEntity.consumeContent();
            } catch (IOException unused2) {
                v.d("Error occured when calling consumingContent", new Object[0]);
            }
            this.b.a((byte[]) null);
            g0Var.close();
            throw th;
        }
    }

    public final void a(long j, o oVar, byte[] bArr, StatusLine statusLine) {
        if (c || j > d) {
            Object[] objArr = new Object[5];
            objArr[0] = oVar;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(oVar.l.b);
            v.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public rich.k a(rich.o r25) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rich.w.a(rich.o):rich.k");
    }
}
