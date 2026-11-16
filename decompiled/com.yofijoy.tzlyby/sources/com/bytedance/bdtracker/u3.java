package com.bytedance.bdtracker;

import android.app.Application;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.bytedance.applog.IExtraParams;
import com.bytedance.applog.Level;
import com.bytedance.applog.encryptor.IEncryptorType;
import com.bytedance.applog.util.SensitiveUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class u3 {
    public static final a[] c = {new a("aid", "aid", String.class), new a("google_aid", "google_aid", String.class), new a("carrier", "carrier", String.class), new a("mcc_mnc", "mcc_mnc", String.class), new a("sim_region", "sim_region", String.class), new a(TapEventParamConstants.PARAM_DEVICE_ID, TapEventParamConstants.PARAM_DEVICE_ID, String.class), new a("bd_did", "bd_did", String.class), new a("install_id", "iid", String.class), new a("clientudid", "clientudid", String.class), new a("app_name", "app_name", String.class), new a(TapEventParamConstants.PARAM_SUB_APP_VERSION, "version_name", String.class), new a("version_code", "version_code", Integer.class), new a("manifest_version_code", "manifest_version_code", Integer.class), new a("update_version_code", "update_version_code", Integer.class), new a("sdk_version_code", "sdk_version_code", Integer.class)};
    public volatile IExtraParams a;
    public final d b;

    /* loaded from: classes.dex */
    public static class a {
        public final String a;
        public final String b;
        public final Class c;

        public a(String str, String str2, Class cls) {
            this.a = str;
            this.b = str2;
            this.c = cls;
        }
    }

    public u3(d dVar) {
        this.b = dVar;
    }

    public String a(JSONObject jSONObject, String str, boolean z, Level level) {
        if (this.b.n == null || TextUtils.isEmpty(str)) {
            return str;
        }
        Uri parse = Uri.parse(str);
        Set<String> queryParameterNames = parse.getQueryParameterNames();
        Uri.Builder buildUpon = parse.buildUpon();
        HashMap hashMap = new HashMap();
        a(jSONObject, z, hashMap, level);
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!queryParameterNames.contains(key) && !TextUtils.isEmpty(value)) {
                buildUpon.appendQueryParameter(key, entry.getValue());
            }
        }
        return buildUpon.build().toString();
    }

    public void a(JSONObject jSONObject, boolean z, Map<String, String> map, Level level) {
        HashMap<String, String> hashMap;
        Application application = this.b.n;
        if (application == null || map == null || level == null) {
            return;
        }
        map.put("_rticket", String.valueOf(System.currentTimeMillis()));
        map.put("device_platform", "android");
        if (z) {
            map.put("ssmix", IEncryptorType.DEFAULT_ENCRYPTOR);
        }
        if (TextUtils.isEmpty(i5.a)) {
            DisplayMetrics displayMetrics = application.getResources().getDisplayMetrics();
            int i = displayMetrics == null ? 0 : displayMetrics.widthPixels;
            DisplayMetrics displayMetrics2 = application.getResources().getDisplayMetrics();
            int i2 = displayMetrics2 == null ? 0 : displayMetrics2.heightPixels;
            if (i > 0 && i2 > 0) {
                i5.a = i + Marker.ANY_MARKER + i2;
            }
        }
        String str = i5.a;
        if (!TextUtils.isEmpty(str)) {
            map.put("resolution", str);
        }
        if (i5.b == -1) {
            i5.b = application.getApplicationContext().getResources().getDisplayMetrics().densityDpi;
        }
        int i3 = i5.b;
        if (i3 > 0) {
            map.put("dpi", String.valueOf(i3));
        }
        map.put("device_type", Build.MODEL);
        map.put("device_brand", Build.BRAND);
        map.put("language", application.getResources().getConfiguration().locale.getLanguage());
        map.put("os_api", String.valueOf(Build.VERSION.SDK_INT));
        String str2 = Build.VERSION.RELEASE;
        if (str2 != null && str2.length() > 10) {
            str2 = str2.substring(0, 10);
        }
        map.put("os_version", str2);
        String a2 = z4.a(application, false);
        if (!TextUtils.isEmpty(a2)) {
            map.put("ac", a2);
        }
        int i4 = 0;
        while (true) {
            a[] aVarArr = c;
            hashMap = null;
            if (i4 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i4];
            Object a3 = a(jSONObject, aVar.a, (String) null, (Class<String>) aVar.c);
            if (a3 != null) {
                map.put(aVar.b, a3.toString());
            }
            i4++;
        }
        String str3 = (String) a(jSONObject, "tweaked_channel", "", (Class<String>) String.class);
        if (TextUtils.isEmpty(str3)) {
            str3 = (String) a(jSONObject, TapEventParamConstants.PARAM_SUB_CHANNEL, "", (Class<String>) String.class);
        }
        if (!TextUtils.isEmpty(str3)) {
            map.put(TapEventParamConstants.PARAM_SUB_CHANNEL, str3);
        }
        String str4 = (String) a(jSONObject, "cdid", (String) null, (Class<String>) String.class);
        if (!TextUtils.isEmpty(str4)) {
            map.put("cdid", str4);
        }
        SensitiveUtils.appendSensitiveParams(this, jSONObject, map, c5.a(application), level);
        if (level == Level.L0) {
            String str5 = (String) a(jSONObject, "openudid", (String) null, (Class<String>) String.class);
            if (!TextUtils.isEmpty(str5)) {
                map.put("openudid", str5);
            }
        }
        this.b.getAppContext();
        try {
            if (this.a != null) {
                hashMap = this.a.getExtraParams(level);
            }
            if (hashMap == null || hashMap.isEmpty()) {
                return;
            }
            for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                if (entry != null) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value) && !map.containsKey(key)) {
                        map.put(key, value);
                    }
                }
            }
        } catch (Throwable th) {
            this.b.D.error(11, "Add extra params failed.", th, new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] a(com.bytedance.bdtracker.d0 r7, org.json.JSONObject r8, int r9) {
        /*
            r6 = this;
            com.bytedance.applog.UriConfig r7 = r7.e()
            r0 = 0
            r1 = 1
            if (r9 == 0) goto L21
            if (r9 == r1) goto Ld
            java.lang.String[] r7 = new java.lang.String[r0]
            goto L25
        Ld:
            java.lang.String r9 = r7.getBusinessUri()
            boolean r9 = android.text.TextUtils.isEmpty(r9)
            if (r9 != 0) goto L21
            java.lang.String[] r9 = new java.lang.String[r1]
            java.lang.String r7 = r7.getBusinessUri()
            r9[r0] = r7
            r7 = r9
            goto L25
        L21:
            java.lang.String[] r7 = r7.getSendUris()
        L25:
            int r9 = r7.length
            java.lang.String[] r2 = new java.lang.String[r9]
            com.bytedance.bdtracker.d r3 = r6.b
            boolean r3 = r3.E
        L2c:
            if (r0 >= r9) goto L60
            r4 = r7[r0]
            r2[r0] = r4
            if (r3 == 0) goto L49
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r5 = r2[r0]
            r4.append(r5)
            java.lang.String r5 = "?tt_data=a"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r2[r0] = r4
        L49:
            r4 = r2[r0]
            com.bytedance.applog.Level r5 = com.bytedance.applog.Level.L1
            java.lang.String r4 = r6.a(r8, r4, r1, r5)
            r2[r0] = r4
            r4 = r2[r0]
            java.lang.String[] r5 = com.bytedance.bdtracker.w4.c
            java.lang.String r4 = com.bytedance.bdtracker.s3.a(r4, r5)
            r2[r0] = r4
            int r0 = r0 + 1
            goto L2c
        L60:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.u3.a(com.bytedance.bdtracker.d0, org.json.JSONObject, int):java.lang.String[]");
    }

    public <T> T a(JSONObject jSONObject, String str, T t, Class<T> cls) {
        if (jSONObject == null) {
            return (T) this.b.getHeaderValue(str, t, cls);
        }
        T t2 = null;
        Object opt = jSONObject.opt(str);
        if (opt != null && cls != null) {
            try {
                t2 = cls.cast(opt);
            } catch (Throwable th) {
                this.b.D.error(11, "Cast type failed.", th, new Object[0]);
            }
        }
        return t2 == null ? t : t2;
    }
}
