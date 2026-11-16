package com.taptap.sdk.kit.internal.identifier;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.utils.CryptoUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DataUtils {
    private static final String ENCODE_PREFIX = "_encode_identify_prefix_";
    private static final String TAG = "DataUtils";

    DataUtils() {
    }

    private static String handleSecurityData(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return str2;
        }
        CryptoUtils cryptoUtils = CryptoUtils.getInstance(context);
        if (cryptoUtils != null) {
            if (str2.startsWith(ENCODE_PREFIX)) {
                String aesDecrypt = cryptoUtils.aesDecrypt(str2.substring(24));
                if (aesDecrypt == null) {
                    PreferenceManager.getDefaultSharedPreferences(context).edit().remove(str).apply();
                }
                return aesDecrypt;
            }
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString(str, ENCODE_PREFIX + cryptoUtils.aesEncrypt(str2)).apply();
            return str2;
        }
        TapLogger.logd(TAG, " data should be decrypt but util is null");
        return str2.startsWith(ENCODE_PREFIX) ? "" : str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0049 A[EDGE_INSN: B:20:0x0049->B:14:0x0049 BREAK  A[LOOP:0: B:8:0x002d->B:19:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDeviceId(android.content.Context r7) {
        /*
            android.content.SharedPreferences r0 = android.preference.PreferenceManager.getDefaultSharedPreferences(r7)
            java.lang.String r1 = "tapdb_game_mobile_identify"
            if (r0 == 0) goto L52
            r2 = 0
            java.lang.String r3 = r0.getString(r1, r2)     // Catch: java.lang.Exception -> L18
            if (r3 == 0) goto L21
            java.lang.String r3 = handleSecurityData(r7, r1, r3)     // Catch: java.lang.Exception -> L16
            if (r3 == 0) goto L21
            return r3
        L16:
            r4 = move-exception
            goto L1a
        L18:
            r4 = move-exception
            r3 = r2
        L1a:
            java.lang.String r5 = "DataUtils"
            java.lang.String r6 = "getDeviceId"
            com.taptap.sdk.kit.internal.TapLogger.loge(r5, r6, r4)
        L21:
            java.util.Map r0 = r0.getAll()
            java.util.Set r4 = r0.keySet()
            java.util.Iterator r4 = r4.iterator()
        L2d:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L49
            java.lang.Object r5 = r4.next()
            java.lang.String r5 = (java.lang.String) r5
            java.lang.String r6 = "__game_mobile__0__"
            boolean r6 = r5.contains(r6)
            if (r6 == 0) goto L2d
            java.lang.Object r0 = r0.get(r5)
            r3 = r0
            java.lang.String r3 = (java.lang.String) r3
            r2 = r5
        L49:
            if (r3 == 0) goto L52
            java.lang.String r0 = handleSecurityData(r7, r2, r3)
            if (r0 == 0) goto L52
            return r0
        L52:
            java.lang.String r0 = com.taptap.sdk.kit.internal.identifier.TapIdentifierUtil.getAndroidID(r7)
            java.lang.String r0 = getTapDBId(r0)
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            r3 = 256(0x100, float:3.59E-43)
            if (r2 != 0) goto L6f
            int r2 = r0.length()
            if (r2 > r3) goto L6f
            java.lang.String r0 = handleSecurityData(r7, r1, r0)
            if (r0 == 0) goto L6f
            return r0
        L6f:
            java.util.UUID r0 = java.util.UUID.randomUUID()
            java.lang.String r0 = r0.toString()
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L8a
            int r2 = r0.length()
            if (r2 > r3) goto L8a
            java.lang.String r7 = handleSecurityData(r7, r1, r0)
            if (r7 == 0) goto L8a
            return r7
        L8a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.identifier.DataUtils.getDeviceId(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
    
        if (java.util.Arrays.asList(r0).contains(r7) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getTapDBId(java.lang.String r7) {
        /*
            java.lang.String r0 = "0000000000000000"
            java.lang.String r1 = "ffffffffffffffff"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}
            r1 = 0
            if (r7 == 0) goto L41
            java.lang.String r2 = "^[0-9a-zA-Z]{8,16}$"
            boolean r2 = r7.matches(r2)
            if (r2 != 0) goto L15
        L13:
            r7 = r1
            goto L41
        L15:
            int r2 = r7.length()
            r3 = 16
            if (r2 >= r3) goto L36
            r4 = 0
        L1e:
            int r5 = 16 - r2
            if (r4 >= r5) goto L36
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "0"
            r5.append(r6)
            r5.append(r7)
            java.lang.String r7 = r5.toString()
            int r4 = r4 + 1
            goto L1e
        L36:
            java.util.List r0 = java.util.Arrays.asList(r0)
            boolean r0 = r0.contains(r7)
            if (r0 == 0) goto L41
            goto L13
        L41:
            if (r7 == 0) goto L44
            goto L4c
        L44:
            java.util.UUID r7 = java.util.UUID.randomUUID()
            java.lang.String r7 = r7.toString()
        L4c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.identifier.DataUtils.getTapDBId(java.lang.String):java.lang.String");
    }
}
