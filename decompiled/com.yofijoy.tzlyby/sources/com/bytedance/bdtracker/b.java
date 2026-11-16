package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.IAppLogInstance;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class b {
    public static e a = new a();
    public static e b = new C0003b();
    public static e c = new c();

    /* loaded from: classes.dex */
    public static class a implements e {
        @Override // com.bytedance.bdtracker.b.e
        public boolean a(com.bytedance.bdtracker.d dVar) {
            return dVar.isH5CollectEnable();
        }
    }

    /* renamed from: com.bytedance.bdtracker.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0003b implements e {
        @Override // com.bytedance.bdtracker.b.e
        public boolean a(com.bytedance.bdtracker.d dVar) {
            return dVar.getInitConfig() != null && dVar.getInitConfig().isHandleLifeCycle();
        }
    }

    /* loaded from: classes.dex */
    public static class c implements e {
        @Override // com.bytedance.bdtracker.b.e
        public boolean a(com.bytedance.bdtracker.d dVar) {
            return !(dVar.getInitConfig() != null && dVar.getInitConfig().isPageMetaAnnotationEnable());
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(com.bytedance.bdtracker.d dVar);
    }

    /* loaded from: classes.dex */
    public interface e {
        boolean a(com.bytedance.bdtracker.d dVar);
    }

    /* loaded from: classes.dex */
    public interface f {
        x3 a();
    }

    public static com.bytedance.bdtracker.d a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.K) {
            if (str.equals(dVar.m)) {
                return dVar;
            }
        }
        return null;
    }

    public static boolean b(String str) {
        boolean z;
        if (!TextUtils.isEmpty(str)) {
            Iterator<com.bytedance.bdtracker.d> it = com.bytedance.bdtracker.d.K.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (str.equals(it.next().m)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static String a(IAppLogInstance iAppLogInstance, String str) {
        if (AppLog.getInstance() == iAppLogInstance) {
            return str;
        }
        return str + "_" + iAppLogInstance.getAppId();
    }

    public static void a(d dVar) {
        Iterator<com.bytedance.bdtracker.d> it = com.bytedance.bdtracker.d.K.iterator();
        while (it.hasNext()) {
            dVar.a(it.next());
        }
    }

    public static boolean a(e eVar) {
        Iterator<com.bytedance.bdtracker.d> it = com.bytedance.bdtracker.d.K.iterator();
        while (it.hasNext()) {
            if (eVar.a(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static void a(String[] strArr) {
        Iterator<com.bytedance.bdtracker.d> it = com.bytedance.bdtracker.d.K.iterator();
        while (it.hasNext()) {
            it.next().receive((String[]) strArr.clone());
        }
    }

    public static void a(f fVar, e eVar) {
        x3 x3Var = null;
        for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.K) {
            if (eVar.a(dVar)) {
                if (x3Var == null) {
                    x3Var = fVar.a();
                }
                dVar.receive(x3Var.m9clone());
            }
        }
    }

    public static void a(x3 x3Var, e eVar) {
        for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.K) {
            if (eVar.a(dVar)) {
                dVar.receive(x3Var.m9clone());
            }
        }
    }
}
