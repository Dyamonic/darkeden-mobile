package rich;

import java.io.DataOutputStream;
import java.net.HttpURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
public class d0 implements c0 {
    public final SSLSocketFactory a = null;

    public static void a(HttpURLConnection httpURLConnection, o oVar) {
        byte[] a = oVar.a();
        if (a != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", f0.q);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(a);
            dataOutputStream.close();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0075. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0167  */
    @Override // rich.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.http.HttpResponse a(rich.o r7, java.util.Map r8) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rich.d0.a(rich.o, java.util.Map):org.apache.http.HttpResponse");
    }
}
