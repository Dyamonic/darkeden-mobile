package com.qq.gdt.action.j;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class n {
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0039, code lost:
    
        if (r6 != '}') goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r10) {
        /*
            java.lang.String r0 = ""
            if (r10 == 0) goto L74
            boolean r1 = r0.equals(r10)     // Catch: java.lang.Exception -> L74
            if (r1 == 0) goto Lc
            goto L74
        Lc:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L74
            r1.<init>()     // Catch: java.lang.Exception -> L74
            r2 = 0
            r3 = r2
            r4 = r3
            r5 = r4
        L15:
            int r6 = r10.length()     // Catch: java.lang.Exception -> L74
            if (r2 >= r6) goto L6f
            char r6 = r10.charAt(r2)     // Catch: java.lang.Exception -> L74
            r7 = 34
            r8 = 92
            if (r6 == r7) goto L66
            r7 = 44
            r9 = 10
            if (r6 == r7) goto L58
            r3 = 91
            if (r6 == r3) goto L4a
            r3 = 93
            if (r6 == r3) goto L3f
            r3 = 123(0x7b, float:1.72E-43)
            if (r6 == r3) goto L4a
            r3 = 125(0x7d, float:1.75E-43)
            if (r6 == r3) goto L3f
        L3b:
            r1.append(r6)     // Catch: java.lang.Exception -> L74
            goto L6b
        L3f:
            if (r4 != 0) goto L3b
            r1.append(r9)     // Catch: java.lang.Exception -> L74
            int r5 = r5 + (-1)
            a(r1, r5)     // Catch: java.lang.Exception -> L74
            goto L3b
        L4a:
            r1.append(r6)     // Catch: java.lang.Exception -> L74
            if (r4 != 0) goto L6b
            r1.append(r9)     // Catch: java.lang.Exception -> L74
            int r5 = r5 + 1
            a(r1, r5)     // Catch: java.lang.Exception -> L74
            goto L6b
        L58:
            r1.append(r6)     // Catch: java.lang.Exception -> L74
            if (r3 == r8) goto L6b
            if (r4 != 0) goto L6b
            r1.append(r9)     // Catch: java.lang.Exception -> L74
            a(r1, r5)     // Catch: java.lang.Exception -> L74
            goto L6b
        L66:
            if (r3 == r8) goto L3b
            r4 = r4 ^ 1
            goto L3b
        L6b:
            int r2 = r2 + 1
            r3 = r6
            goto L15
        L6f:
            java.lang.String r10 = r1.toString()     // Catch: java.lang.Exception -> L74
            return r10
        L74:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.j.n.a(java.lang.String):java.lang.String");
    }

    public static JSONObject a(String str, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(str, Integer.valueOf(i));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private static void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                sb.append('\t');
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
    }

    public static boolean a(JSONObject jSONObject) {
        return jSONObject == null || jSONObject.length() <= 0;
    }
}
