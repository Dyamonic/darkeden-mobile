package com.tencent.turingfd.sdk.ams.ad;

import android.os.Build;
import com.tencent.turingfd.sdk.ams.ad.Nucleus;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class Casaba {
    public static volatile Nucleus a;

    public static Nucleus a(String str) {
        Nucleus nucleus;
        try {
            nucleus = new Nucleus(str);
            try {
                int i = Build.VERSION.SDK_INT;
                if (i >= 14 && i < 20) {
                    synchronized (nucleus) {
                        synchronized (nucleus) {
                            nucleus.a(new Nucleus.Cfor("export LD_LIBRARY_PATH=/vendor/lib:/system/lib", "export LD_LIBRARY_PATH=/vendor/lib:/system/lib", 5000L));
                        }
                    }
                }
            } catch (Exception unused) {
                if (nucleus != null) {
                    try {
                        nucleus.a();
                        return null;
                    } catch (Throwable unused2) {
                        return null;
                    }
                }
                return nucleus;
            }
        } catch (Exception unused3) {
            nucleus = null;
        }
        return nucleus;
    }

    public static Nucleus.Cif b(String str) {
        Nucleus.Cfor cfor = new Nucleus.Cfor(str, str, 5000L);
        Nucleus.Cif cif = null;
        try {
            if (a == null) {
                synchronized (Casaba.class) {
                    if (a == null) {
                        a = a("sh");
                    }
                }
            }
            cif = a.a(cfor);
        } catch (Exception e) {
            if (((e instanceof IOException) || (e instanceof InterruptedException)) && a != null) {
                synchronized (Casaba.class) {
                    if (a != null) {
                        Nucleus nucleus = a;
                        nucleus.getClass();
                        try {
                            nucleus.a();
                        } catch (Throwable unused) {
                        }
                        a = null;
                    }
                }
            }
        }
        return cif == null ? new Nucleus.Cif(cfor.a, 2, "", "e") : cif;
    }
}
