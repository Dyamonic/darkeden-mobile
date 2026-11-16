package com.bytedance.bdtracker;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class v implements Application.ActivityLifecycleCallbacks {
    public static final j0 a = new j0(null, "@APPLOG_APP_USE");
    public static boolean b = false;
    public static int c;
    public static h4 d;
    public static h4 e;
    public static long f;
    public static String g;
    public static final Map<Integer, List<h4>> h;
    public static final Map<Integer, a> i;
    public static h4 j;
    public static final HashSet<Integer> k;
    public static volatile v l;

    /* loaded from: classes.dex */
    public static class a {
        public h4 a;
        public WeakReference<Object> b;
    }

    static {
        Arrays.asList("android.arch.lifecycle.ReportFragment", "androidx.lifecycle.ReportFragment");
        Collections.singletonList("com.bumptech.glide.manager.SupportRequestManagerFragment");
        c = 0;
        h = new HashMap();
        i = new ConcurrentHashMap();
        k = new HashSet<>(8);
        l = null;
    }

    public static h4 a() {
        h4 h4Var = d;
        h4 h4Var2 = e;
        if (h4Var2 != null) {
            return h4Var2;
        }
        if (h4Var != null) {
            return h4Var;
        }
        return null;
    }

    public static h4 a(boolean z, h4 h4Var, long j2) {
        h4 h4Var2 = (h4) h4Var.m9clone();
        h4Var2.a(j2);
        long j3 = j2 - h4Var.c;
        if (j3 <= 0) {
            j3 = 1000;
        }
        h4Var2.s = j3;
        h4Var2.D = z;
        b.a(h4Var2, new u(h4Var2));
        LoggerImpl.global().debug("[Navigator] pausePage page.name：{}, duration：{}", h4Var2.u, Long.valueOf(h4Var2.s));
        b.a(new s(h4Var2), new t());
        return h4Var2;
    }

    public static synchronized v a(Application application) {
        v vVar;
        synchronized (v.class) {
            if (l == null) {
                l = new v();
                application.registerActivityLifecycleCallbacks(l);
            }
            vVar = l;
        }
        return vVar;
    }

    public void a(Activity activity, int i2) {
        h4 a2 = a(activity.getClass(), false, activity.getClass().getName(), "", b5.c(activity), b5.b(activity), System.currentTimeMillis(), b5.d(activity));
        d = a2;
        a2.A = !k.remove(Integer.valueOf(i2)) ? 1 : 0;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        k.add(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        k.remove(Integer.valueOf(activity.hashCode()));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a9 A[SYNTHETIC] */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityPaused(android.app.Activity r12) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.v.onActivityPaused(android.app.Activity):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        long currentTimeMillis = System.currentTimeMillis();
        a.c(currentTimeMillis);
        b = true;
        String c2 = b5.c(activity);
        LoggerImpl.global().debug("[Navigator] onActivityResumed:{} {}", c2, activity.getClass().getName());
        h4 a2 = a(activity.getClass(), false, activity.getClass().getName(), "", c2, b5.b(activity), currentTimeMillis, b5.d(activity));
        d = a2;
        a2.A = !k.remove(Integer.valueOf(activity.hashCode())) ? 1 : 0;
        activity.isChild();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (g != null) {
            int i2 = c - 1;
            c = i2;
            if (i2 <= 0) {
                g = null;
                f = 0L;
                b.a(new c());
            }
        }
    }

    public static h4 a(Class<?> cls, boolean z, String str, String str2, String str3, String str4, long j2, JSONObject jSONObject) {
        h4 h4Var = new h4();
        h4Var.E = cls;
        if (TextUtils.isEmpty(str2)) {
            h4Var.u = str;
        } else {
            h4Var.u = str + ":" + str2;
        }
        h4Var.a(j2);
        h4Var.z = j2;
        h4Var.s = -1L;
        h4 h4Var2 = j;
        h4Var.t = h4Var2 != null ? h4Var2.u : "";
        if (str3 == null) {
            str3 = "";
        }
        h4Var.v = str3;
        h4 h4Var3 = j;
        h4Var.w = h4Var3 != null ? h4Var3.v : "";
        if (str4 == null) {
            str4 = "";
        }
        h4Var.x = str4;
        h4 h4Var4 = j;
        h4Var.y = h4Var4 != null ? h4Var4.x : "";
        h4Var.o = jSONObject;
        h4Var.D = z;
        b.a(h4Var, new u(h4Var));
        j = h4Var;
        LoggerImpl.global().debug("[Navigator] resumePage page.name：{}", h4Var.u);
        return h4Var;
    }
}
