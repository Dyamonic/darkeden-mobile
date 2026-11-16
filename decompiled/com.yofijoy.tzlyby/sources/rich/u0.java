package rich;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import rich.k2;

/* loaded from: classes2.dex */
public class u0 extends k2.a {
    public final /* synthetic */ String b;
    public final /* synthetic */ Context c;
    public final /* synthetic */ l0 d;

    public u0(t0 t0Var, String str, Context context, l0 l0Var) {
        this.b = str;
        this.c = context;
        this.d = l0Var;
    }

    @Override // rich.k2.a
    public void a() {
        String str = "";
        if ("200023".equals(this.b)) {
            SystemClock.sleep(8000L);
        }
        a2 a2Var = new a2();
        Context context = this.c;
        String str2 = this.b;
        l0 l0Var = this.d;
        try {
            x1 a = l0Var.a();
            String b = b0.b(context);
            a.v = str2;
            a.i = l0Var.b("loginMethod", "");
            a.m = l0Var.b("isCacheScrip", false) ? "scrip" : "pgw";
            a.c = b0.a(context);
            if (!TextUtils.isEmpty(b)) {
                str = b;
            }
            a.d = str;
            a2.a(a, l0Var);
            JSONArray jSONArray = null;
            if (a.A.size() > 0) {
                jSONArray = new JSONArray();
                Iterator it = a.A.iterator();
                while (it.hasNext()) {
                    Throwable th = (Throwable) it.next();
                    StringBuffer stringBuffer = new StringBuffer();
                    JSONObject jSONObject = new JSONObject();
                    for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                        stringBuffer.append("\n");
                        stringBuffer.append(stackTraceElement.toString());
                    }
                    jSONObject.put("message", th.toString());
                    jSONObject.put("stack", stringBuffer.toString());
                    jSONArray.put(jSONObject);
                }
                a.A.clear();
            }
            if (jSONArray != null && jSONArray.length() > 0) {
                a.a(jSONArray);
            }
            c2.a("SendLog", "登录日志");
            JSONObject b2 = a.b();
            a2Var.a = l0Var;
            m1.a().a(b2, a2Var.a, new z1(a2Var));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
