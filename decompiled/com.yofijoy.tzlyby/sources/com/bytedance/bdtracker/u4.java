package com.bytedance.bdtracker;

import android.accounts.Account;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.applog.store.kv.IKVStore;
import com.bytedance.applog.util.SensitiveUtils;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class u4 {
    public static String h;
    public static String i;
    public static String j;
    public static JSONArray k;
    public static volatile String l;
    public static String[] m;
    public static String n;
    public final Context a;
    public y3 b;
    public final w3 c;
    public final String d;
    public final d e;
    public final v1 f;
    public final List<String> g = Collections.singletonList("DeviceParamsProvider");

    public u4(d dVar, Context context, v1 v1Var, w3 w3Var) {
        this.e = dVar;
        this.f = v1Var;
        this.d = v1Var.c.getLocalTest() ? "_local" : "";
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        t4 t4Var = new t4();
        this.c = w3Var;
        j4 j4Var = new j4(v1Var.c, applicationContext, "snssdk_openudid", v1Var.c.getSpName());
        this.b = j4Var;
        j4Var.a = w3Var;
        if (!v1Var.c.getAnonymous()) {
            new Thread(new s4(t4Var)).start();
        }
        a(v1Var.c.getAccount());
    }

    public void a(Account account) {
        w3 w3Var = this.c;
        if (w3Var != null) {
            w3Var.a(account);
        }
    }

    public void a(String str) {
        this.b.a(str);
        this.e.D.debug(this.g, "DeviceParamsProvider#clear clearKey=" + str + " sDeviceId=" + l, new Object[0]);
    }

    public String b() {
        if (!TextUtils.isEmpty(l)) {
            return l;
        }
        l = this.b.c("", "");
        return l;
    }

    public void b(String str) {
        if (!k0.a(str) || k0.a(str, l)) {
            return;
        }
        l = this.b.c(str, l);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String c() {
        /*
            r8 = this;
            java.lang.String r0 = com.bytedance.bdtracker.u4.h
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r0 = com.bytedance.bdtracker.u4.h
            return r0
        Lb:
            com.bytedance.bdtracker.v1 r0 = r8.f
            com.bytedance.applog.InitConfig r1 = r0.c
            boolean r1 = r1.isAndroidIdEnabled()
            r2 = 1
            java.lang.String r3 = "openudid"
            r4 = 0
            if (r1 == 0) goto L21
            boolean r0 = r0.a(r3)
            if (r0 != 0) goto L21
            r0 = r2
            goto L22
        L21:
            r0 = r4
        L22:
            if (r0 != 0) goto L27
            java.lang.String r0 = ""
            goto L2d
        L27:
            android.content.Context r0 = r8.a
            java.lang.String r0 = com.bytedance.applog.util.HardwareUtils.getSecureAndroidId(r0)
        L2d:
            boolean r1 = com.bytedance.bdtracker.k0.e(r0)     // Catch: java.lang.Throwable -> La2
            r5 = 0
            if (r1 == 0) goto L44
            java.lang.String r1 = "9774d56d682e549c"
            boolean r1 = r1.equals(r0)     // Catch: java.lang.Throwable -> La2
            if (r1 == 0) goto L3d
            goto L44
        L3d:
            com.bytedance.bdtracker.y3 r1 = r8.b     // Catch: java.lang.Throwable -> La2
            java.lang.String r0 = r1.d(r5, r0)     // Catch: java.lang.Throwable -> La2
            goto Lb0
        L44:
            com.bytedance.bdtracker.v1 r1 = r8.f     // Catch: java.lang.Throwable -> La2
            com.bytedance.applog.InitConfig r1 = r1.c     // Catch: java.lang.Throwable -> La2
            android.content.Context r6 = r8.a     // Catch: java.lang.Throwable -> La2
            java.lang.String r7 = "snssdk_openudid"
            com.bytedance.applog.store.kv.IKVStore r1 = com.bytedance.bdtracker.o4.a(r1, r6, r7)     // Catch: java.lang.Throwable -> La2
            java.lang.String r6 = r1.getString(r3, r5)     // Catch: java.lang.Throwable -> La2
            boolean r7 = com.bytedance.bdtracker.k0.e(r6)     // Catch: java.lang.Throwable -> La2
            if (r7 != 0) goto L9b
            java.security.SecureRandom r5 = new java.security.SecureRandom     // Catch: java.lang.Throwable -> La2
            r5.<init>()     // Catch: java.lang.Throwable -> La2
            java.math.BigInteger r6 = new java.math.BigInteger     // Catch: java.lang.Throwable -> La2
            r7 = 80
            r6.<init>(r7, r5)     // Catch: java.lang.Throwable -> La2
            r5 = 16
            java.lang.String r5 = r6.toString(r5)     // Catch: java.lang.Throwable -> La2
            char r6 = r5.charAt(r4)     // Catch: java.lang.Throwable -> La2
            r7 = 45
            if (r6 != r7) goto L78
            java.lang.String r5 = r5.substring(r2)     // Catch: java.lang.Throwable -> La2
        L78:
            int r2 = r5.length()     // Catch: java.lang.Throwable -> La2
            int r2 = 13 - r2
            if (r2 <= 0) goto L96
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La2
            r6.<init>()     // Catch: java.lang.Throwable -> La2
        L85:
            if (r2 <= 0) goto L8f
            r7 = 70
            r6.append(r7)     // Catch: java.lang.Throwable -> La2
            int r2 = r2 + (-1)
            goto L85
        L8f:
            r6.append(r5)     // Catch: java.lang.Throwable -> La2
            java.lang.String r5 = r6.toString()     // Catch: java.lang.Throwable -> La2
        L96:
            r1.putString(r3, r5)     // Catch: java.lang.Throwable -> La2
            r0 = r5
            goto Lb0
        L9b:
            com.bytedance.bdtracker.w3 r1 = r8.c     // Catch: java.lang.Throwable -> La2
            r1.d(r6, r5)     // Catch: java.lang.Throwable -> La2
            r0 = r6
            goto Lb0
        La2:
            r1 = move-exception
            com.bytedance.bdtracker.d r2 = r8.e
            com.bytedance.applog.log.IAppLogLogger r2 = r2.D
            java.util.List<java.lang.String> r3 = r8.g
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.String r5 = "getOpenUdid failed"
            r2.error(r3, r5, r1, r4)
        Lb0:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto Lc3
            java.lang.StringBuilder r0 = com.bytedance.bdtracker.a.a(r0)
            java.lang.String r1 = r8.d
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        Lc3:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto Lcb
            com.bytedance.bdtracker.u4.h = r0
        Lcb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.u4.c():java.lang.String");
    }

    public String d() {
        if (!TextUtils.isEmpty(n)) {
            return n;
        }
        try {
            String e = this.b.e(null, SensitiveUtils.getSerialNumber(this.a));
            if (!TextUtils.isEmpty(e)) {
                e = e + this.d;
            }
            n = e;
            return e;
        } catch (Throwable th) {
            this.e.D.error(this.g, "getSerialNumber failed", th, new Object[0]);
            return null;
        }
    }

    public String[] e() {
        String[] strArr = m;
        if (strArr != null && strArr.length > 0) {
            return strArr;
        }
        try {
            String[] a = this.b.a((String[]) null, SensitiveUtils.getSimSerialNumbers(this.a));
            if (a == null) {
                a = new String[0];
            }
            for (int i2 = 0; i2 < a.length; i2++) {
                a[i2] = a[i2] + this.d;
            }
            m = a;
            return a;
        } catch (Throwable th) {
            this.e.D.error(this.g, "getSimSerialNumbers failed", th, new Object[0]);
            return null;
        }
    }

    public String f() {
        String appImei;
        if (!TextUtils.isEmpty(j)) {
            return j;
        }
        try {
            v1 v1Var = this.f;
            if (v1Var.c.isImeiEnable() && !v1Var.a("IMEI")) {
                appImei = SensitiveUtils.getDeviceId(this.a);
            } else {
                appImei = this.f.c.getAppImei();
            }
            String f = this.b.f(null, appImei);
            if (!TextUtils.isEmpty(f)) {
                f = f + this.d;
            }
            j = f;
            return f;
        } catch (Throwable th) {
            this.e.D.error(this.g, "getUdId failed", th, new Object[0]);
            return null;
        }
    }

    public JSONArray g() {
        JSONArray jSONArray = k;
        if (jSONArray != null) {
            return jSONArray;
        }
        try {
            v1 v1Var = this.f;
            if (!(v1Var.c.isImeiEnable() && !v1Var.a("IMEI"))) {
                return new JSONArray();
            }
            JSONArray multiImeiFromSystem = SensitiveUtils.getMultiImeiFromSystem(this.a);
            if (multiImeiFromSystem == null) {
                multiImeiFromSystem = SensitiveUtils.getMultiImeiFallback(this.a);
            }
            JSONArray jSONArray2 = new JSONArray(this.b.g(null, multiImeiFromSystem.toString()));
            if (!TextUtils.isEmpty(this.d)) {
                String str = this.d;
                if (jSONArray2.length() != 0) {
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject optJSONObject = jSONArray2.optJSONObject(i2);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString(BreakpointSQLiteKey.ID);
                            if (!TextUtils.isEmpty(optString)) {
                                optJSONObject.remove(BreakpointSQLiteKey.ID);
                                optJSONObject.put(BreakpointSQLiteKey.ID, optString + str);
                            }
                        }
                    }
                }
            }
            k = jSONArray2;
            return jSONArray2;
        } catch (Throwable th) {
            this.e.D.error(this.g, "getUdIdList failed", th, new Object[0]);
            return null;
        }
    }

    public String a() {
        if (!TextUtils.isEmpty(i)) {
            return i;
        }
        try {
            IKVStore a = o4.a(this.f.c, this.a, "snssdk_openudid");
            String string = a.getString("clientudid", null);
            if (k0.e(string)) {
                this.c.b(string, null);
            } else {
                string = UUID.randomUUID().toString();
                a.putString("clientudid", string);
            }
            if (!TextUtils.isEmpty(string)) {
                string = string + this.d;
            }
            i = string;
            return string;
        } catch (Throwable th) {
            this.e.D.error(this.g, "getClientUDID failed", th, new Object[0]);
            return "";
        }
    }
}
