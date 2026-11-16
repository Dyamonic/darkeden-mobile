package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.android.vending.expansion.zipfile.APEZProvider;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public final class ag {
    private final SimpleDateFormat a;
    private final ad b;

    /* synthetic */ ag(byte b2) {
        this();
    }

    private ag() {
        this.a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", Locale.US);
        this.b = new ad();
    }

    public final void a(List<c> list) {
        if (list == null || list.isEmpty()) {
            al.d("sla batch report event is null", new Object[0]);
            return;
        }
        al.c("sla batch report event size:%s", Integer.valueOf(list.size()));
        ArrayList arrayList = new ArrayList();
        Iterator<c> it = list.iterator();
        while (it.hasNext()) {
            b b2 = b(it.next());
            if (b2 != null) {
                arrayList.add(b2);
            }
        }
        e(arrayList);
        b(arrayList);
    }

    public final void b(final List<b> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            ak.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.ag.1
                @Override // java.lang.Runnable
                public final void run() {
                    ag.c(list);
                }
            });
        } else {
            c(list);
        }
    }

    static void c(List<b> list) {
        if (list == null || list.isEmpty()) {
            al.c("sla batch report data is empty", new Object[0]);
            return;
        }
        al.c("sla batch report list size:%s", Integer.valueOf(list.size()));
        if (list.size() > 30) {
            list = list.subList(0, 29);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().c);
        }
        Pair<Integer, String> a2 = ad.a(arrayList);
        al.c("sla batch report result, rspCode:%s rspMsg:%s", a2.first, a2.second);
        if (((Integer) a2.first).intValue() == 200) {
            d(list);
        }
    }

    private static void e(List<b> list) {
        for (b bVar : list) {
            al.c("sla save id:%s time:%s msg:%s", bVar.a, Long.valueOf(bVar.b), bVar.c);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(APEZProvider.FILEID, bVar.a);
                contentValues.put("_tm", Long.valueOf(bVar.b));
                contentValues.put("_dt", bVar.c);
                w.a().a("t_sla", contentValues, (v) null);
            } catch (Throwable th) {
                al.b(th);
            }
        }
    }

    public static void d(List<b> list) {
        if (list == null || list.isEmpty()) {
            al.c("sla batch delete list is null", new Object[0]);
            return;
        }
        al.c("sla batch delete list size:%s", Integer.valueOf(list.size()));
        try {
            String str = "_id in (" + a(",", list) + ")";
            al.c("sla batch delete where:%s", str);
            w.a().a("t_sla", str);
        } catch (Throwable th) {
            al.b(th);
        }
    }

    private static String a(String str, Iterable<b> iterable) {
        Iterator<b> it = iterable.iterator();
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("'").append(it.next().a).append("'");
        while (it.hasNext()) {
            sb.append(str);
            sb.append("'").append(it.next().a).append("'");
        }
        return sb.toString();
    }

    public static List<b> a() {
        Cursor a2 = w.a().a("t_sla", new String[]{APEZProvider.FILEID, "_tm", "_dt"}, (String) null, "_tm", "30");
        if (a2 == null) {
            return null;
        }
        if (a2.getCount() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (a2.moveToNext()) {
            try {
                b bVar = new b();
                bVar.a = a2.getString(a2.getColumnIndex(APEZProvider.FILEID));
                bVar.b = a2.getLong(a2.getColumnIndex("_tm"));
                bVar.c = a2.getString(a2.getColumnIndex("_dt"));
                al.c(bVar.toString(), new Object[0]);
                arrayList.add(bVar);
            } finally {
                try {
                    return arrayList;
                } finally {
                }
            }
        }
        return arrayList;
    }

    /* compiled from: BUGLY */
    /* loaded from: classes.dex */
    public static class c {
        String a;
        String b;
        long c;
        boolean d;
        long e;
        String f;
        String g;

        public c(String str, String str2, long j, boolean z, long j2, String str3, String str4) {
            this.a = str;
            this.b = str2;
            this.c = j;
            this.d = z;
            this.e = j2;
            this.f = str3;
            this.g = str4;
        }

        public c() {
        }
    }

    /* compiled from: BUGLY */
    /* loaded from: classes.dex */
    public static class b {
        String a;
        public long b;
        public String c;

        public final String toString() {
            return "SLAData{uuid='" + this.a + "', time=" + this.b + ", data='" + this.c + '\'' + AbstractJsonLexerKt.END_OBJ;
        }
    }

    /* compiled from: BUGLY */
    /* loaded from: classes.dex */
    public static class a {
        private static final ag a = new ag(0);

        public static /* synthetic */ ag a() {
            return a;
        }
    }

    public final void a(c cVar) {
        if (TextUtils.isEmpty(cVar.b)) {
            al.d("sla report event is null", new Object[0]);
        } else {
            al.c("sla report single event", new Object[0]);
            a(Collections.singletonList(cVar));
        }
    }

    private b b(c cVar) {
        if (cVar == null || TextUtils.isEmpty(cVar.b)) {
            al.d("sla convert event is null", new Object[0]);
            return null;
        }
        aa b2 = aa.b();
        if (b2 == null) {
            al.d("sla convert failed because ComInfoManager is null", new Object[0]);
            return null;
        }
        String str = "&app_version=" + b2.o + "&app_name=" + b2.q + "&app_bundle_id=" + b2.c + "&client_type=android&user_id=" + b2.f() + "&sdk_version=" + b2.h + "&event_code=" + cVar.b + "&event_result=" + (cVar.d ? 1 : 0) + "&event_time=" + this.a.format(new Date(cVar.c)) + "&event_cost=" + cVar.e + "&device_id=" + b2.g() + "&debug=" + (b2.D ? 1 : 0) + "&param_0=" + cVar.f + "&param_1=" + cVar.a + "&param_2=" + (b2.M ? "rqd" : "ext") + "&param_4=" + b2.e();
        if (!TextUtils.isEmpty(cVar.g)) {
            str = str + "&param_3=" + cVar.g;
        }
        al.c("sla convert eventId:%s eventType:%s, eventTime:%s success:%s cost:%s from:%s uploadMsg:", cVar.a, cVar.b, Long.valueOf(cVar.c), Boolean.valueOf(cVar.d), Long.valueOf(cVar.e), cVar.f, cVar.g);
        String str2 = cVar.a + "-" + cVar.b;
        b bVar = new b();
        bVar.a = str2;
        bVar.b = cVar.c;
        bVar.c = str;
        return bVar;
    }
}
