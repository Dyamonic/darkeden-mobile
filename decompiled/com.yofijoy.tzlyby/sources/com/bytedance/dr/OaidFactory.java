package com.bytedance.dr;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.f5;
import com.bytedance.dr.impl.a;
import com.bytedance.dr.impl.c;
import com.bytedance.dr.impl.d;
import com.bytedance.dr.impl.e;
import com.bytedance.dr.impl.g;
import com.bytedance.dr.impl.h;
import com.bytedance.dr.impl.i;
import com.bytedance.dr.impl.j;
import com.bytedance.dr.impl.k;
import com.bytedance.dr.impl.l;
import com.bytedance.dr.impl.m;
import com.bytedance.dr.impl.n;
import java.util.Locale;

/* loaded from: classes.dex */
public final class OaidFactory {
    public static OaidApi createOaidImpl(Context context) {
        if (f5.b()) {
            return new l(new n());
        }
        boolean z = false;
        try {
            if (n.a()) {
                return new n();
            }
        } catch (Throwable th) {
            LoggerImpl.global().error("Oaid#XiaomiOppoImpl oaid failed -> ", th, new Object[0]);
        }
        if ((Build.MANUFACTURER.equalsIgnoreCase("XIAOMI") || Build.BRAND.equalsIgnoreCase("XIAOMI") || Build.BRAND.equalsIgnoreCase("REDMI")) && n.a()) {
            return new n();
        }
        if (k.a.b(new Object[0]).booleanValue()) {
            return new k();
        }
        if (f5.d() && f5.a()) {
            LoggerImpl.global().debug("honor# Oaid#old honor oaid", new Object[0]);
            return new e();
        }
        if (f5.d() && !f5.a()) {
            LoggerImpl.global().debug("honor# Oaid#new honor oaid", new Object[0]);
            return new g();
        }
        if (f5.e()) {
            return new e();
        }
        if ("OnePlus".equalsIgnoreCase(Build.MANUFACTURER)) {
            return new l(null);
        }
        String str = Build.BRAND;
        if (str == null ? false : str.toLowerCase(Locale.ENGLISH).contains("meizu")) {
            return new i();
        }
        if (Build.VERSION.SDK_INT <= 28) {
            if (f5.f() || !e.a(context)) {
                return null;
            }
            return new e();
        }
        if ("samsung".equalsIgnoreCase(Build.BRAND) || "samsung".equalsIgnoreCase(Build.MANUFACTURER)) {
            return new m();
        }
        String str2 = Build.MANUFACTURER;
        if ((str2 == null ? "" : str2.trim()).toUpperCase().contains("NUBIA")) {
            return new j();
        }
        String str3 = Build.FINGERPRINT;
        if (TextUtils.isEmpty(str3)) {
            String a = f5.a("ro.build.version.incremental");
            if (!TextUtils.isEmpty(a) && a.contains("VIBEUI_V2")) {
                z = true;
            }
        } else {
            z = str3.contains("VIBEUI_V2");
        }
        if (z) {
            return new h();
        }
        String str4 = Build.MANUFACTURER;
        if ((str4 != null ? str4.trim() : "").toUpperCase().contains("ASUS")) {
            return new a();
        }
        d dVar = new d(context);
        return dVar.support(context) ? dVar : new c();
    }
}
