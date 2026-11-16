package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes2.dex */
public class Kiwifruit {
    public static final String d = Cfinally.a(Cfinally.a1);
    public static final long e = TimeUnit.HOURS.toMillis(32);
    public static final Kiwifruit f = new Kiwifruit();
    public volatile Cprivate a = null;
    public final AtomicBoolean b = new AtomicBoolean(false);
    public final ReentrantReadWriteLock c = new ReentrantReadWriteLock();

    public void a(Cprivate cprivate, boolean z) {
        this.c.writeLock().lock();
        if (z) {
            try {
                Draco draco = new Draco(128);
                cprivate.a(draco);
                if (Cstrictfp.a(b("2"), Cstatic.b(Cnative.a(draco.a()), Cstatic.a()), true)) {
                    File file = new File(b("1"));
                    if (file.exists()) {
                        file.delete();
                    }
                }
            } finally {
                this.a = cprivate;
                this.c.writeLock().unlock();
            }
        }
    }

    public final String b(String str) {
        Context context;
        synchronized (Ccase.class) {
            context = Ccase.a;
        }
        File dir = context.getDir("turingfd", 0);
        if (dir == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(dir.getAbsolutePath());
        String str2 = File.separator;
        sb.append(str2);
        sb.append(Constants.VIA_REPORT_TYPE_SET_AVATAR);
        File file = new File(sb.toString());
        if (!file.exists() && !file.mkdirs()) {
            return "";
        }
        return file.getAbsolutePath() + str2 + Carambola.a + "_ad_" + str;
    }

    public Set<String> c() {
        String a;
        if (!d()) {
            a = Cfinally.a(Cfinally.h1);
        } else {
            a = a("p_l_h_l");
        }
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, a.split(","));
        return hashSet;
    }

    public final boolean d() {
        return b() != null;
    }

    public final Cprivate b(String str, boolean z) {
        try {
            byte[] a = Cstrictfp.a(str, true);
            if (a == null) {
                return null;
            }
            if (z && ((a = Cnative.b(Cstatic.a(a, Cstatic.a()))) == null || a.length == 0)) {
                return null;
            }
            Cprivate cprivate = new Cprivate();
            cprivate.a(new Dorado(a));
            return cprivate;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final String a(String str) {
        Cprivate b;
        Map<String, String> map;
        if (str == null || (b = b()) == null || (map = b.g) == null) {
            return null;
        }
        return map.get(str);
    }

    public Cprivate b() {
        this.c.readLock().lock();
        try {
            if (this.b.get()) {
                return this.a;
            }
            synchronized (this.b) {
                if (this.b.get()) {
                    return this.a;
                }
                Cprivate b = b(b("2"), true);
                if (b == null) {
                    b = b(b("1"), false);
                }
                this.a = b;
                this.b.set(true);
                return this.a;
            }
        } finally {
            this.c.readLock().unlock();
        }
    }

    public final boolean a(String str, boolean z) {
        String a = a(str);
        if (a == null) {
            return z;
        }
        try {
            return Integer.parseInt(a) > 0;
        } catch (NumberFormatException unused) {
            return z;
        }
    }

    public String a() {
        String a;
        if (!d()) {
            a = Cfinally.a(Cfinally.g1);
        } else {
            a = a("a_f_ok_c");
        }
        String a2 = a("a_f_ok_s");
        HashSet hashSet = new HashSet();
        if (!TextUtils.isEmpty(a)) {
            for (String str : a.split(",")) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
        }
        if (!TextUtils.isEmpty(a2)) {
            Loquat.a.b().a();
            if (Triangulum.a()) {
                for (String str2 : a2.split(",")) {
                    if (!TextUtils.isEmpty(str2)) {
                        hashSet.add(str2);
                    }
                }
            }
        }
        if (hashSet.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append(str3);
        }
        return sb.toString();
    }
}
