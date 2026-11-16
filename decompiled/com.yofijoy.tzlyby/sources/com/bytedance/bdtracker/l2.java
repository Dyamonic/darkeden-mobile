package com.bytedance.bdtracker;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.migrate.MigrateDetectorActivity;
import com.bytedance.applog.store.kv.IKVStore;

/* loaded from: classes.dex */
public final class l2 {
    public static volatile l2 e;
    public final PackageManager a;
    public final ComponentName b;
    public final boolean c;
    public final IKVStore d;

    public l2(Context context) {
        boolean z;
        int componentEnabledSetting;
        int i;
        Context applicationContext = context.getApplicationContext();
        IKVStore a = o4.a(applicationContext, "bdtracker_dr_migrate_detector");
        this.d = a;
        PackageManager packageManager = applicationContext.getPackageManager();
        this.a = packageManager;
        ComponentName componentName = new ComponentName(context, (Class<?>) MigrateDetectorActivity.class);
        this.b = componentName;
        try {
            componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
            i = a.getInt("component_state", 0);
            IAppLogLogger global = LoggerImpl.global();
            StringBuilder a2 = a.a("MigrateDetector#isMigrateInternal cs=");
            a2.append(a(componentEnabledSetting));
            a2.append(" ss=");
            a2.append(a(i));
            global.debug(a2.toString(), new Object[0]);
        } catch (Exception unused) {
        }
        if (componentEnabledSetting == 0 && i == 2) {
            z = true;
            this.c = z;
            IAppLogLogger global2 = LoggerImpl.global();
            StringBuilder a3 = a.a("MigrateDetector#constructor migrate=");
            a3.append(z);
            global2.debug(a3.toString(), new Object[0]);
        }
        z = false;
        this.c = z;
        IAppLogLogger global22 = LoggerImpl.global();
        StringBuilder a32 = a.a("MigrateDetector#constructor migrate=");
        a32.append(z);
        global22.debug(a32.toString(), new Object[0]);
    }

    public static l2 a(Context context) {
        if (e == null) {
            synchronized (l2.class) {
                if (e == null) {
                    e = new l2(context);
                }
            }
        }
        return e;
    }

    public static String a(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "UNKNOWN" : "STATE_DISABLED" : "STATE_ENABLED" : "STATE_DEFAULT";
    }

    public void a() {
        LoggerImpl.global().debug("MigrateDetector#disableComponent", new Object[0]);
        this.a.setComponentEnabledSetting(this.b, 2, 1);
        this.d.putInt("component_state", 2);
    }
}
