package rich;

import java.io.Closeable;
import java.io.IOException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
public class x0 implements y0 {
    public static q1 a;

    /* loaded from: classes2.dex */
    public class a implements HostnameVerifier {
        public final /* synthetic */ String a;

        public a(x0 x0Var, String str) {
            this.a = str;
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return HttpsURLConnection.getDefaultHostnameVerifier().verify(this.a, sSLSession);
        }
    }

    public final String a() {
        return w0.a[0] + "." + w0.a[2] + "." + w0.a[4] + "." + w0.a[6];
    }

    public synchronized SSLSocketFactory a(j1 j1Var, l0 l0Var) {
        if (j1Var instanceof h1) {
            q1 q1Var = new q1(HttpsURLConnection.getDefaultSSLSocketFactory(), l0Var);
            if (a == null) {
                a = q1Var;
            }
            return q1Var;
        }
        if (a == null) {
            a = new q1(HttpsURLConnection.getDefaultSSLSocketFactory(), l0Var);
        }
        return a;
    }

    public final void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(25:(2:146|(28:148|8|(1:10)(1:145)|11|12|13|(4:127|128|(5:131|132|133|134|129)|135)|15|(1:(1:22)(1:23))|24|(1:26)|27|28|(3:30|84|85)(1:126)|86|87|88|89|90|91|(15:92|(4:94|95|96|97)(1:99)|98|36|(1:38)(1:64)|39|(2:41|(1:45))|46|(1:48)|49|(1:51)(1:63)|52|(2:61|62)|58|59)|100|101|(1:103)(1:112)|104|(2:110|111)|58|59))|12|13|(0)|15|(2:17|(0)(0))|24|(0)|27|28|(0)(0)|86|87|88|89|90|91|(16:92|(0)(0)|98|36|(0)(0)|39|(0)|46|(0)|49|(0)(0)|52|(1:54)|61|62|97)|100|101|(0)(0)|104|(1:106)|110|111) */
    /* JADX WARN: Can't wrap try/catch for region: R(32:1|(2:2|3)|(2:146|(28:148|8|(1:10)(1:145)|11|12|13|(4:127|128|(5:131|132|133|134|129)|135)|15|(1:(1:22)(1:23))|24|(1:26)|27|28|(3:30|84|85)(1:126)|86|87|88|89|90|91|(15:92|(4:94|95|96|97)(1:99)|98|36|(1:38)(1:64)|39|(2:41|(1:45))|46|(1:48)|49|(1:51)(1:63)|52|(2:61|62)|58|59)|100|101|(1:103)(1:112)|104|(2:110|111)|58|59))|7|8|(0)(0)|11|12|13|(0)|15|(2:17|(0)(0))|24|(0)|27|28|(0)(0)|86|87|88|89|90|91|(16:92|(0)(0)|98|36|(0)(0)|39|(0)|46|(0)|49|(0)(0)|52|(1:54)|61|62|97)|100|101|(0)(0)|104|(1:106)|110|111|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01cd, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01ce, code lost:
    
        r16 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01d5, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01d6, code lost:
    
        r16 = "remote_ip";
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01d1, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01d2, code lost:
    
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01eb, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01ec, code lost:
    
        r16 = "remote_ip";
        r19 = "";
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0058 A[Catch: all -> 0x01f2, Exception -> 0x01fb, TryCatch #12 {Exception -> 0x01fb, all -> 0x01f2, blocks: (B:3:0x0029, B:5:0x003a, B:8:0x0054, B:10:0x0058, B:11:0x008b, B:145:0x0073, B:146:0x003e, B:148:0x0048), top: B:2:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0073 A[Catch: all -> 0x01f2, Exception -> 0x01fb, TryCatch #12 {Exception -> 0x01fb, all -> 0x01f2, blocks: (B:3:0x0029, B:5:0x003a, B:8:0x0054, B:10:0x0058, B:11:0x008b, B:145:0x0073, B:146:0x003e, B:148:0x0048), top: B:2:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d0 A[Catch: all -> 0x01e0, Exception -> 0x01e2, TryCatch #14 {Exception -> 0x01e2, all -> 0x01e0, blocks: (B:134:0x00a5, B:15:0x00c0, B:17:0x00c6, B:19:0x00ca, B:22:0x00d0, B:23:0x0101, B:24:0x0108, B:26:0x0128, B:27:0x0131, B:30:0x013b), top: B:133:0x00a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0101 A[Catch: all -> 0x01e0, Exception -> 0x01e2, TryCatch #14 {Exception -> 0x01e2, all -> 0x01e0, blocks: (B:134:0x00a5, B:15:0x00c0, B:17:0x00c6, B:19:0x00ca, B:22:0x00d0, B:23:0x0101, B:24:0x0108, B:26:0x0128, B:27:0x0131, B:30:0x013b), top: B:133:0x00a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0128 A[Catch: all -> 0x01e0, Exception -> 0x01e2, TryCatch #14 {Exception -> 0x01e2, all -> 0x01e0, blocks: (B:134:0x00a5, B:15:0x00c0, B:17:0x00c6, B:19:0x00ca, B:22:0x00d0, B:23:0x0101, B:24:0x0108, B:26:0x0128, B:27:0x0131, B:30:0x013b), top: B:133:0x00a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013b A[Catch: all -> 0x01e0, Exception -> 0x01e2, TRY_ENTER, TRY_LEAVE, TryCatch #14 {Exception -> 0x01e2, all -> 0x01e0, blocks: (B:134:0x00a5, B:15:0x00c0, B:17:0x00c6, B:19:0x00ca, B:22:0x00d0, B:23:0x0101, B:24:0x0108, B:26:0x0128, B:27:0x0131, B:30:0x013b), top: B:133:0x00a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0236 A[Catch: all -> 0x02a0, TryCatch #0 {all -> 0x02a0, blocks: (B:36:0x0204, B:39:0x0231, B:41:0x0236, B:43:0x023c, B:45:0x0240, B:91:0x0157, B:92:0x0159, B:94:0x015f, B:97:0x0164, B:100:0x016f), top: B:2:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x015f A[Catch: Exception -> 0x01cd, all -> 0x02a0, TRY_LEAVE, TryCatch #0 {all -> 0x02a0, blocks: (B:36:0x0204, B:39:0x0231, B:41:0x0236, B:43:0x023c, B:45:0x0240, B:91:0x0157, B:92:0x0159, B:94:0x015f, B:97:0x0164, B:100:0x016f), top: B:2:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x016f A[EDGE_INSN: B:99:0x016f->B:100:0x016f BREAK  A[LOOP:0: B:92:0x0159->B:97:0x0164], SYNTHETIC] */
    @Override // rich.y0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(rich.o1 r22, rich.t1 r23, rich.l0 r24) {
        /*
            Method dump skipped, instructions count: 758
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rich.x0.a(rich.o1, rich.t1, rich.l0):void");
    }
}
