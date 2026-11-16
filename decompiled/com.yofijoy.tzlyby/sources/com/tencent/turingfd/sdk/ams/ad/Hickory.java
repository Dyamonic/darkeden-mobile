package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.text.TextUtils;
import com.tencent.turingfd.sdk.ams.ad.Ginkgo;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public class Hickory {
    public static final String b;
    public final Handler a;

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Hickory$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements Runnable {
        public final /* synthetic */ Context a;
        public final /* synthetic */ Map b;

        public Cdo(Hickory hickory, Context context, Map map) {
            this.a = context;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            Hickory.a(this.a, (Map<String, String>) this.b);
        }
    }

    static {
        StringBuilder a = Banana.a("turingfd_conf_");
        a.append(Carambola.a);
        a.append("_");
        a.append("ad");
        b = a.toString();
    }

    public Hickory(Handler handler) {
        this.a = handler;
    }

    public static String b(Context context, String str) {
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = context.getSharedPreferences(b, 0);
        } catch (Throwable unused) {
            sharedPreferences = null;
        }
        if (sharedPreferences == null) {
            return "";
        }
        String string = sharedPreferences.getString(str, "");
        if (TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            int i = Damson.a;
            int length = string.length() / 2;
            byte[] bArr = new byte[length];
            char[] charArray = string.toUpperCase().toCharArray();
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 2;
                bArr[i2] = (byte) (((byte) "0123456789ABCDEF".indexOf(charArray[i3 + 1])) | (((byte) "0123456789ABCDEF".indexOf(charArray[i3])) << 4));
            }
            return Damson.a(Cstatic.a(bArr, Cstatic.a()), "UTF-8");
        } catch (Throwable unused2) {
            return "";
        }
    }

    public Ginkgo a(Context context) {
        try {
            String b2 = b(context, "101");
            if (TextUtils.isEmpty(b2)) {
                return Ginkgo.a(1);
            }
            long j = 0;
            try {
                j = Long.valueOf(b(context, "102")).longValue();
            } catch (Throwable unused) {
            }
            String b3 = b(context, "104");
            String b4 = b(context, "105");
            String b5 = b(context, "106");
            String b6 = b(context, "110");
            Ginkgo.Cdo cdo = new Ginkgo.Cdo(0);
            cdo.b = j;
            cdo.a = b2;
            cdo.d = b3;
            cdo.e = b4;
            cdo.f = b5;
            cdo.g = b6;
            return new Ginkgo(cdo);
        } catch (Throwable unused2) {
            return Ginkgo.a(1);
        }
    }

    public void c(Context context, long j) {
        a(context, "503", "" + j, true);
    }

    public void b(Context context, long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("902", "" + j);
        a(context, hashMap);
    }

    public void a(Context context, long j) {
        if (j >= LongCompanionObject.MAX_VALUE) {
            j = Long.MAX_VALUE;
        }
        a(context, "401", "" + j, true);
    }

    public Gemini<Long> a(Context context, int i) {
        System.currentTimeMillis();
        Gemini<Long> gemini = new Gemini<>(i);
        for (String str : b(context, "402").split("_")) {
            try {
                gemini.a(Long.valueOf(Long.valueOf(str).longValue()));
            } catch (NumberFormatException unused) {
            }
        }
        return gemini;
    }

    public static void a(Context context, Map<String, String> map) {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit;
        try {
            sharedPreferences = context.getSharedPreferences(b, 0);
        } catch (Throwable unused) {
            sharedPreferences = null;
        }
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
            return;
        }
        for (String str : map.keySet()) {
            try {
                edit.putString(str, Damson.a(Cstatic.b(map.get(str).getBytes(), Cstatic.a())));
            } catch (Throwable unused2) {
            }
        }
        try {
            edit.commit();
        } catch (Throwable unused3) {
        }
    }

    public final void a(Context context, String str, String str2, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        a(context, hashMap, z);
    }

    public final void a(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        a(context, (Map<String, String>) hashMap, false);
    }

    public final void a(Context context, Map<String, String> map, boolean z) {
        if (z) {
            a(context, map);
        } else {
            this.a.post(new Cdo(this, context, map));
        }
    }

    public final long a(Context context, String str) {
        try {
            return Long.valueOf(b(context, str)).longValue();
        } catch (Throwable unused) {
            return 0L;
        }
    }
}
