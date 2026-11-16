package com.bytedance.bdtracker;

import android.os.Handler;
import android.text.TextUtils;
import androidx.core.os.EnvironmentCompat;
import com.bytedance.applog.util.SensitiveUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;

/* loaded from: classes.dex */
public abstract class y3 {
    public y3 a;
    public Handler b;

    /* loaded from: classes.dex */
    public class a implements h<String> {
        public a() {
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a() {
            return y3.this.b("openudid");
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean b(String str) {
            return k0.e(str);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean a(String str, String str2) {
            return k0.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a(String str, String str2, y3 y3Var) {
            String str3 = str;
            return y3Var == null ? str3 : y3Var.d(str3, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public void a(String str) {
            y3.this.a("openudid", str);
        }
    }

    /* loaded from: classes.dex */
    public class b implements h<String> {
        public b() {
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a() {
            return y3.this.b("clientudid");
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean b(String str) {
            return k0.e(str);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean a(String str, String str2) {
            return k0.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a(String str, String str2, y3 y3Var) {
            String str3 = str;
            return y3Var == null ? str3 : y3Var.b(str3, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public void a(String str) {
            y3.this.a("clientudid", str);
        }
    }

    /* loaded from: classes.dex */
    public class c implements h<String> {
        public c() {
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a() {
            return y3.this.b("serial_number");
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean b(String str) {
            String str2 = str;
            return (TextUtils.isEmpty(str2) || TextUtils.equals(str2, EnvironmentCompat.MEDIA_UNKNOWN)) ? false : true;
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean a(String str, String str2) {
            return k0.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a(String str, String str2, y3 y3Var) {
            String str3 = str;
            return y3Var == null ? str3 : y3Var.e(str3, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public void a(String str) {
            y3.this.a("serial_number", str);
        }
    }

    /* loaded from: classes.dex */
    public class d implements h<String[]> {
        public d() {
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String[] a() {
            return y3.this.c("sim_serial_number");
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean b(String[] strArr) {
            String[] strArr2 = strArr;
            return strArr2 != null && strArr2.length > 0;
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean a(String[] strArr, String[] strArr2) {
            String[] strArr3 = strArr;
            String[] strArr4 = strArr2;
            if (strArr3 == strArr4) {
                return true;
            }
            if (strArr3 != null && strArr4 != null && strArr3.length == strArr4.length) {
                for (String str : strArr3) {
                    boolean z = false;
                    for (String str2 : strArr4) {
                        z = k0.a(str2, str) || z;
                    }
                    if (z) {
                    }
                }
                return true;
            }
            return false;
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String[] a(String[] strArr, String[] strArr2, y3 y3Var) {
            String[] strArr3 = strArr;
            return y3Var == null ? strArr3 : y3Var.a(strArr3, strArr2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public void a(String[] strArr) {
            y3.this.a("sim_serial_number", strArr);
        }
    }

    /* loaded from: classes.dex */
    public class e implements h<String> {
        public e() {
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a() {
            return y3.this.b("udid");
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean b(String str) {
            return k0.e(str);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean a(String str, String str2) {
            return k0.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a(String str, String str2, y3 y3Var) {
            String str3 = str;
            return y3Var == null ? str3 : y3Var.f(str3, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public void a(String str) {
            y3.this.a("udid", str);
        }
    }

    /* loaded from: classes.dex */
    public class f implements h<String> {
        public f() {
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a() {
            return y3.this.b("udid_list");
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean b(String str) {
            return SensitiveUtils.validMultiImei(str);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean a(String str, String str2) {
            return k0.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a(String str, String str2, y3 y3Var) {
            String str3 = str;
            return y3Var == null ? str3 : y3Var.g(str3, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public void a(String str) {
            y3.this.a("udid_list", str);
        }
    }

    /* loaded from: classes.dex */
    public class g implements h<String> {
        public g() {
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a() {
            return y3.this.b(TapEventParamConstants.PARAM_DEVICE_ID);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean b(String str) {
            return !TextUtils.isEmpty(str);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public boolean a(String str, String str2) {
            return k0.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public String a(String str, String str2, y3 y3Var) {
            String str3 = str;
            return y3Var == null ? str3 : y3Var.c(str3, str2);
        }

        @Override // com.bytedance.bdtracker.y3.h
        public void a(String str) {
            y3.this.a(TapEventParamConstants.PARAM_DEVICE_ID, str);
        }
    }

    /* loaded from: classes.dex */
    public interface h<L> {
        L a();

        L a(L l, L l2, y3 y3Var);

        void a(L l);

        boolean a(L l, L l2);

        boolean b(L l);
    }

    public void a(String str) {
        y3 y3Var = this.a;
        if (y3Var != null) {
            y3Var.a(str);
        }
    }

    public abstract void a(String str, String str2);

    public abstract void a(String str, String[] strArr);

    public String[] a(String[] strArr, String[] strArr2) {
        return (String[]) a(strArr, strArr2, new d());
    }

    public abstract String b(String str);

    public String b(String str, String str2) {
        return (String) a(str, str2, new b());
    }

    public String c(String str, String str2) {
        return (String) a(str, str2, new g());
    }

    public abstract String[] c(String str);

    public String d(String str, String str2) {
        return (String) a(str, str2, new a());
    }

    public String e(String str, String str2) {
        return (String) a(str, str2, new c());
    }

    public String f(String str, String str2) {
        return (String) a(str, str2, new e());
    }

    public String g(String str, String str2) {
        return (String) a(str, str2, new f());
    }

    public final <T> T a(T t, T t2, h<T> hVar) {
        if (hVar == null) {
            throw new IllegalArgumentException("agent == null");
        }
        y3 y3Var = this.a;
        T a2 = hVar.a();
        boolean b2 = hVar.b(t);
        boolean b3 = hVar.b(a2);
        if (!b2 && b3) {
            t = a2;
        }
        if (y3Var != null) {
            T a3 = hVar.a(t, t2, y3Var);
            if (!hVar.a(a3, a2)) {
                hVar.a(a3);
            }
            return a3;
        }
        boolean z = false;
        if (b2 || b3) {
            t2 = t;
        } else {
            z = true;
        }
        if ((z && hVar.b(t2)) || (b2 && !hVar.a(t2, a2))) {
            hVar.a(t2);
        }
        return t2;
    }

    public void a(Handler handler) {
        y3 y3Var = this.a;
        if (y3Var != null) {
            y3Var.a(handler);
        }
        this.b = handler;
    }
}
