package com.bytedance.bdtracker;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.applog.IOaidObserver;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.d0;
import com.bytedance.dr.OaidApi;
import com.bytedance.dr.OaidFactory;
import com.bytedance.dr.impl.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class q5 {
    public static final String h;
    public static final String i;
    public static final List<IOaidObserver> j;
    public static g k;
    public static String l;
    public static Map<String, String> m;
    public final OaidApi b;
    public final boolean c;
    public final s5 d;
    public final Context e;
    public Long g;
    public final ReentrantLock a = new ReentrantLock();
    public final AtomicBoolean f = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoggerImpl.global().debug(1, "Oaid#init switch thread", new Object[0]);
            q5.this.b();
        }
    }

    static {
        String str = q5.class.getSimpleName() + "#";
        h = str;
        i = str;
        j = new ArrayList();
    }

    public q5(Context context) {
        this.e = context.getApplicationContext();
        OaidApi createOaidImpl = OaidFactory.createOaidImpl(context);
        this.b = createOaidImpl;
        if (createOaidImpl != null) {
            this.c = createOaidImpl.support(context);
        } else {
            this.c = false;
        }
        this.d = new s5(context);
    }

    public static void a(IOaidObserver.Oaid oaid, Object[] objArr) {
        if (oaid == null || objArr == null) {
            return;
        }
        for (Object obj : objArr) {
            ((IOaidObserver) obj).onOaidLoaded(oaid);
        }
    }

    public static void a(IOaidObserver iOaidObserver) {
        g gVar;
        List<IOaidObserver> list = j;
        synchronized (list) {
            list.add(iOaidObserver);
        }
        String str = l;
        if (str != null) {
            a(new IOaidObserver.Oaid(str), new Object[]{iOaidObserver});
        }
        Map<String, String> map = m;
        if (map == null || (gVar = k) == null) {
            return;
        }
        ((d0.b) gVar).a(map);
    }

    public static <K, V> void a(Map<K, V> map, K k2, V v) {
        if (k2 == null || v == null) {
            return;
        }
        map.put(k2, v);
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            jSONObject.put(str, obj);
        } catch (Throwable th) {
            LoggerImpl.global().error(1, "Oaid#JSON put failed", th, new Object[0]);
        }
    }

    public static void b(IOaidObserver iOaidObserver) {
        List<IOaidObserver> list = j;
        synchronized (list) {
            list.remove(iOaidObserver);
        }
    }

    public static Object[] c() {
        Object[] array;
        List<IOaidObserver> list = j;
        synchronized (list) {
            array = list.size() > 0 ? list.toArray() : null;
        }
        return array;
    }

    public void a() {
        LoggerImpl.global().debug(1, "Oaid#init", new Object[0]);
        if (this.f.compareAndSet(false, true)) {
            a aVar = new a();
            String str = i + "-query";
            if (TextUtils.isEmpty(str)) {
                str = "TrackerDr";
            }
            new Thread(new p5(aVar, str), str).start();
        }
    }

    public final void b() {
        String str;
        Boolean bool;
        OaidApi.a oaid;
        LoggerImpl.global().debug(1, "Oaid#initOaid", new Object[0]);
        try {
            this.a.lock();
            LoggerImpl.global().debug(1, "Oaid#initOaid exec", new Object[0]);
            r5 a2 = this.d.a();
            LoggerImpl.global().debug(1, "Oaid#initOaid fetch={}", a2);
            if (a2 != null) {
                l = a2.a;
                m = a2.a();
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Context context = this.e;
            OaidApi oaidApi = this.b;
            r5 r5Var = null;
            String str2 = null;
            if (oaidApi == null || (oaid = oaidApi.getOaid(context)) == null) {
                str = null;
                bool = null;
            } else {
                str = oaid.a;
                bool = Boolean.valueOf(oaid.b);
                if (oaid instanceof e.b) {
                    this.g = Long.valueOf(((e.b) oaid).c);
                }
            }
            Pair pair = new Pair(str, bool);
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            if (pair.first != null) {
                int i2 = -1;
                if (a2 != null) {
                    str2 = a2.b;
                    i2 = a2.f.intValue() + 1;
                }
                if (TextUtils.isEmpty(str2)) {
                    str2 = UUID.randomUUID().toString();
                }
                String str3 = str2;
                if (i2 <= 0) {
                    i2 = 1;
                }
                r5 r5Var2 = new r5((String) pair.first, str3, (Boolean) pair.second, Long.valueOf(elapsedRealtime2), Long.valueOf(System.currentTimeMillis()), Integer.valueOf(i2), this.g);
                this.d.a(r5Var2);
                r5Var = r5Var2;
            }
            if (r5Var != null) {
                l = r5Var.a;
                m = r5Var.a();
            }
            LoggerImpl.global().debug(1, "Oaid#initOaid oaidModel={}", r5Var);
        } finally {
            this.a.unlock();
            a(new IOaidObserver.Oaid(l), c());
            g gVar = k;
            if (gVar != null) {
                ((d0.b) gVar).a(m);
            }
        }
    }
}
