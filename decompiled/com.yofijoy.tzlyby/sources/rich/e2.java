package rich;

import android.content.Context;
import android.text.TextUtils;
import rich.k2;

/* loaded from: classes2.dex */
public class e2 extends k2.a {
    public final /* synthetic */ Context b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;

    public e2(Context context, String str, String str2) {
        this.b = context;
        this.c = str;
        this.d = str2;
    }

    @Override // rich.k2.a
    public void a() {
        String str;
        c2.b("PhoneScripUtils", "start save scrip to sp in sub thread");
        Context context = this.b;
        String str2 = this.c;
        long j = f2.c;
        String str3 = this.d;
        b2.a();
        byte[] a = b2.a(context);
        if (a != null) {
            str = b0.a(a, str2, b2.a);
        } else {
            b2.a();
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        i2 m1664a = b0.m1664a();
        m1664a.a.putString(b0.a("phonescripcache"), str);
        m1664a.a("phonescripstarttime", j);
        m1664a.a.putInt(b0.a("phonescripversion"), 1);
        m1664a.a.putString(b0.a("pre_sim_key"), str3);
        m1664a.a.commit();
    }
}
