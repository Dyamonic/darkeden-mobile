package com.qq.gdt.action.j;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;

/* loaded from: classes.dex */
public class g {
    private static volatile g b;
    private volatile boolean c = false;
    private volatile boolean d = false;
    public volatile a a = a.NO_CP;

    /* loaded from: classes.dex */
    public enum a {
        UNKNOW,
        CP,
        NO_CP
    }

    public static g a() {
        if (b == null) {
            synchronized (g.class) {
                if (b == null) {
                    b = new g();
                }
            }
        }
        return b;
    }

    public synchronized void a(boolean z) {
        this.d = z;
    }

    public synchronized boolean b() {
        if (this.c) {
            return this.d;
        }
        try {
            boolean z = false;
            o.a("isCpProcess = " + this.d, new Object[0]);
            if (!this.d) {
                o.a("isCpProcess false, need check", new Object[0]);
                PackageInfo packageInfo = com.qq.gdt.action.e.a().g().getPackageManager().getPackageInfo(com.qq.gdt.action.e.a().g().getPackageName(), 8);
                if (packageInfo.providers != null) {
                    ProviderInfo[] providerInfoArr = packageInfo.providers;
                    int length = providerInfoArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        ProviderInfo providerInfo = providerInfoArr[i];
                        o.a("providerInfo name =" + providerInfo.name, new Object[0]);
                        if (providerInfo.name.contains("GDTInitProvider")) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                }
                if (!z) {
                    this.d = true;
                    this.a = a.UNKNOW;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        this.c = true;
        return this.d;
    }
}
