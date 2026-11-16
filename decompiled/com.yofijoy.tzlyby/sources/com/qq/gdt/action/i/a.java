package com.qq.gdt.action.i;

import android.os.Build;
import com.qq.gdt.action.e;
import com.qq.gdt.action.f;
import com.qq.gdt.action.j.d;
import com.qq.gdt.action.j.g;
import com.qq.gdt.action.j.h;
import com.qq.gdt.action.j.m;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.p;
import com.qq.gdt.action.j.x;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a {
    static String[] a;
    static List b;

    static {
        String[] strArr = {"ipcUserActionSetId", "ipcAppSecretKey", "ipcChannelId", "ipcSaveFileTimeEnd", "ipcUserUniqueId", "ipcChannelType", "ipcSaveFileTimeSuccess"};
        a = strArr;
        b = Arrays.asList(strArr);
    }

    public static void a(com.qq.gdt.action.g.a.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(aVar);
        a(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.lang.String r4, org.json.JSONObject r5, com.qq.gdt.action.f.a.b r6) {
        /*
            r0 = 0
            com.qq.gdt.action.e r1 = com.qq.gdt.action.e.a()     // Catch: java.lang.Exception -> L25
            android.content.Context r1 = r1.g()     // Catch: java.lang.Exception -> L25
            com.qq.gdt.action.b r1 = com.qq.gdt.action.b.a(r1)     // Catch: java.lang.Exception -> L25
            java.lang.String r2 = "http://event.gdt.qq.com/report"
            boolean r2 = r4.equals(r2)     // Catch: java.lang.Exception -> L25
            if (r2 != 0) goto L1d
            java.lang.String r2 = "https://event.gdt.qq.com/report"
            boolean r2 = r4.equals(r2)     // Catch: java.lang.Exception -> L25
            if (r2 == 0) goto L40
        L1d:
            int r1 = r1.m()     // Catch: java.lang.Exception -> L25
            if (r1 != 0) goto L40
            r1 = 1
            goto L41
        L25:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "sendEvent switch："
            r2.append(r3)
            java.lang.String r1 = r1.getMessage()
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            java.lang.Object[] r2 = new java.lang.Object[r0]
            com.qq.gdt.action.j.o.a(r1, r2)
        L40:
            r1 = r0
        L41:
            if (r1 != 0) goto L5a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "sendEvent unable url = "
            r5.append(r6)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            java.lang.Object[] r5 = new java.lang.Object[r0]
            com.qq.gdt.action.j.o.a(r4, r5)
            return
        L5a:
            com.qq.gdt.action.f.e r0 = com.qq.gdt.action.f.b.d()
            com.qq.gdt.action.f.d r4 = r0.a(r4)
            com.qq.gdt.action.f.e r4 = (com.qq.gdt.action.f.e) r4
            java.lang.String r5 = r5.toString()
            byte[] r5 = r5.getBytes()
            com.qq.gdt.action.f.e r4 = r4.a(r5)
            com.qq.gdt.action.f.c r4 = r4.b()
            r4.b(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.i.a.a(java.lang.String, org.json.JSONObject, com.qq.gdt.action.f.a.b):void");
    }

    private static void a(List<com.qq.gdt.action.g.a.a> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    a(list, true, new com.qq.gdt.action.f.a.b() { // from class: com.qq.gdt.action.i.a.1
                        @Override // com.qq.gdt.action.f.a.a
                        public void a(int i, com.qq.gdt.action.f.a aVar) {
                            o.a("reportEvents onSuccess statusCode = " + i + " dp3Response = " + aVar.toString(), new Object[0]);
                        }

                        @Override // com.qq.gdt.action.f.a.a
                        public void b(Throwable th) {
                            o.a("reportEvents onFail e = " + th, new Object[0]);
                        }
                    });
                }
            } catch (Throwable th) {
                o.b("reportEvents e = ", th);
            }
        }
    }

    private static void a(JSONObject jSONObject) throws Exception {
        if (com.qq.gdt.action.b.a(e.a().g()).t() != 0) {
            return;
        }
        jSONObject.putOpt("sdkVersion", f.a());
        jSONObject.putOpt("actionSetId", e.a().h());
        jSONObject.putOpt("appkey", e.a().i());
        jSONObject.putOpt(TapEventParamConstants.PARAM_SUB_CHANNEL, e.a().s());
        jSONObject.putOpt("channelId", e.a().t());
        jSONObject.putOpt("user_unique_id", e.a().v());
        jSONObject.putOpt("sessionId", e.a().n());
        jSONObject.putOpt("processName", d.a(e.a().g()));
        jSONObject.putOpt("processCp", Boolean.valueOf(g.a().b()));
        jSONObject.putOpt("processCpStatus", g.a().a);
        jSONObject.putOpt("processMain", Boolean.valueOf(d.d()));
    }

    private static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 != null) {
            jSONObject2.length();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (b.contains(next)) {
                try {
                    jSONObject.put(next, jSONObject2.optString(next));
                    arrayList.add(next);
                } catch (JSONException e) {
                    o.a("executeParam each key ex = " + e + " key = " + next, new Object[0]);
                }
            }
        }
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jSONObject2.remove((String) it.next());
            }
            jSONObject.putOpt("event_param", jSONObject2);
        } catch (JSONException e2) {
            o.a("executeParam putOpt eventParam ex = " + e2, new Object[0]);
        }
    }

    public static boolean a(List<com.qq.gdt.action.g.a.a> list, boolean z, com.qq.gdt.action.f.a.b bVar) {
        if (list != null && list.size() != 0 && (z || com.qq.gdt.action.b.a(e.a().g()).d())) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("bid", 10021014);
                jSONObject.putOpt("hashImei", h.a());
                x.a(jSONObject, e.a().g());
                jSONObject.putOpt("op", h.e());
                jSONObject.putOpt("osType", 2);
                try {
                    jSONObject.putOpt("privacyAgree", com.qq.gdt.action.multioprocess.d.a().a.g());
                } catch (Throwable th) {
                    jSONObject.putOpt("privacyAgree", "privacy_unknow");
                    o.a("get privacy_agree ", th);
                }
                c(jSONObject);
                b(jSONObject);
                a(jSONObject);
                m.a(jSONObject);
                JSONArray jSONArray = new JSONArray();
                Iterator<com.qq.gdt.action.g.a.a> it = list.iterator();
                while (it.hasNext()) {
                    JSONObject b2 = b(it.next());
                    if (b2 != null) {
                        jSONArray.put(b2);
                    }
                }
                jSONObject.putOpt("body", jSONArray);
                String a2 = com.qq.gdt.action.d.a(jSONObject, e.a().l());
                String b3 = com.qq.gdt.action.d.b(a2);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("v", "0.1");
                jSONObject2.putOpt("data", a2);
                jSONObject2.putOpt("sign", b3);
                jSONObject2.putOpt("encrypt", true);
                o.a("Dp3Service 正式请求：" + jSONObject2.toString(), new Object[0]);
                a(p.c() ? "https://event.gdt.qq.com/report" : "http://event.gdt.qq.com/report", jSONObject2, bVar);
                return true;
            } catch (Exception e) {
                o.a("Dp3Service 加密后 处理Dp3请求时发生错误：" + e.getMessage(), new Object[0]);
            }
        }
        return false;
    }

    private static JSONObject b(com.qq.gdt.action.g.a.a aVar) throws JSONException {
        if (aVar == null) {
            return null;
        }
        if (aVar.b() < 0) {
            o.b("Eventid must not be empty.");
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.putOpt("eventId", Long.valueOf(aVar.b()));
        jSONObject.putOpt("curSessionId", aVar.c());
        jSONObject.putOpt("uniqueEventId", aVar.d());
        jSONObject.putOpt("currentTimeKey", Long.valueOf(aVar.i()));
        jSONObject.putOpt("actionType", aVar.f());
        jSONObject.putOpt("actionTime", Long.valueOf(aVar.g()));
        jSONObject.putOpt("action_id", aVar.e());
        jSONObject.putOpt("actionLogId", Long.valueOf(aVar.j()));
        jSONObject.putOpt("eventLogId", Long.valueOf(aVar.k()));
        a(jSONObject, aVar.h());
        return jSONObject;
    }

    private static void b(JSONObject jSONObject) throws Exception {
        if (com.qq.gdt.action.b.a(e.a().g()).s() != 0) {
            return;
        }
        jSONObject.putOpt("appPackageName", h.d());
        jSONObject.putOpt("appName", h.c(e.a().g()));
        jSONObject.putOpt("appVersionCode", String.valueOf(h.b(e.a().g())));
        jSONObject.putOpt("gk", d.f());
    }

    private static void c(JSONObject jSONObject) throws Exception {
        if (com.qq.gdt.action.b.a(e.a().g()).r() != 0) {
            return;
        }
        jSONObject.putOpt("osVersion", Integer.valueOf(Build.VERSION.SDK_INT));
        jSONObject.putOpt("netType", p.a());
        jSONObject.putOpt("cpuAbi", h.c());
    }
}
