package com.qq.gdt.action.i;

import com.qq.gdt.action.e;
import com.qq.gdt.action.f.b.i;
import com.qq.gdt.action.f.f;
import com.qq.gdt.action.j.l;
import com.qq.gdt.action.j.n;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.p;
import com.qq.gdt.action.j.u;
import com.qq.gdt.action.j.v;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.io.IOException;
import javax.crypto.SecretKey;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b {
    public static f a() {
        String str = p.b() ? "https://a.gdt.qq.com/getSdkConf" : "http://a.gdt.qq.com/getSdkConf";
        try {
            JSONObject b = b();
            SecretKey k = e.a().k();
            o.a("LaunchService#launch 加密前\n" + n.a(b.toString()), new Object[0]);
            String a = a(b, k);
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("data", a);
            jSONObject.putOpt(TapEventParamConstants.PARAM_SUB_OS, "Android");
            jSONObject.putOpt("sdkv", com.qq.gdt.action.f.a());
            jSONObject.putOpt("sdkvc", Integer.valueOf(com.qq.gdt.action.f.b()));
            o.a("LaunchService#launch 正式请求\n" + n.a(jSONObject.toString()), new Object[0]);
            i a2 = com.qq.gdt.action.f.b.d().a(str).a(jSONObject.toString().getBytes()).b().a();
            f fVar = new f(-1, "Unknown message");
            if (a2 != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject(a2.e().b());
                    fVar.a(jSONObject2.optInt("code", -3));
                    fVar.a(jSONObject2.optString("message", "Deserialize message error"));
                    if (jSONObject2.has("data")) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("data");
                        if (jSONObject3.has("conf")) {
                            com.qq.gdt.action.b.a(e.a().g()).a(jSONObject3.getJSONObject("conf"));
                        }
                    }
                } catch (IOException | JSONException unused) {
                    o.a("Deserialize service response error", new Object[0]);
                    fVar.a(-3);
                    fVar.a("Deserialize service response error");
                }
            }
            return fVar;
        } catch (Throwable th) {
            o.b(v.a("LaunchService launch(%s) exception", str), th);
            return null;
        }
    }

    public static String a(JSONObject jSONObject, SecretKey secretKey) throws Exception {
        byte[] b = com.qq.gdt.action.j.a.b(secretKey, jSONObject.toString().getBytes());
        byte[] bArr = new byte[48];
        System.arraycopy(u.b(b), 0, bArr, 0, 16);
        System.arraycopy(secretKey.getEncoded(), 0, bArr, 16, 32);
        byte[] a = l.a(bArr);
        byte[] bArr2 = new byte[b.length + 130];
        System.arraycopy(new byte[]{0, 1}, 0, bArr2, 0, 2);
        System.arraycopy(a, 0, bArr2, 2, 128);
        System.arraycopy(b, 0, bArr2, 130, b.length);
        return com.qq.gdt.action.j.i.a(bArr2);
    }

    private static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("did", e.a().q());
            jSONObject.putOpt("sdkv", com.qq.gdt.action.f.a());
            jSONObject.putOpt("asid", e.a().h());
            jSONObject.putOpt("conf_version", com.qq.gdt.action.b.a(e.a().g()).a());
        } catch (JSONException e) {
            o.b("Json Exception while build init req", e);
        }
        return jSONObject;
    }
}
