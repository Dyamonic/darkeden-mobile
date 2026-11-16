package rich;

import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class k1 extends d1 {
    public String y = "";
    public String z = "";

    @Override // rich.j1
    public String a(String str) {
        return this.b + this.c + this.d + this.e + this.f + this.g + this.h + this.i + this.j + this.m + this.n + str + this.o + this.q + this.r + this.s + this.t + this.u + this.v + this.y + this.z + this.w + this.x;
    }

    @Override // rich.j1
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ver", this.a);
            jSONObject.put("sdkver", this.b);
            jSONObject.put("appid", this.c);
            jSONObject.put("imsi", this.d);
            jSONObject.put("operatortype", this.e);
            jSONObject.put("networktype", this.f);
            jSONObject.put("mobilebrand", this.g);
            jSONObject.put("mobilemodel", this.h);
            jSONObject.put("mobilesystem", this.i);
            jSONObject.put("clienttype", this.j);
            jSONObject.put("interfacever", this.k);
            jSONObject.put("expandparams", this.l);
            jSONObject.put("msgid", this.m);
            jSONObject.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, this.n);
            jSONObject.put("subimsi", this.o);
            jSONObject.put("sign", this.p);
            jSONObject.put("apppackage", this.q);
            jSONObject.put("appsign", this.r);
            jSONObject.put("ipv4_list", this.s);
            jSONObject.put("ipv6_list", this.t);
            jSONObject.put("sdkType", this.u);
            jSONObject.put("tempPDR", this.v);
            jSONObject.put("scrip", this.y);
            jSONObject.put("userCapaid", this.z);
            jSONObject.put("funcType", this.w);
            jSONObject.put("socketip", this.x);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public void c(String str) {
        if (str == null) {
            str = "";
        }
        this.z = str;
    }

    public String toString() {
        return this.a + "&" + this.b + "&" + this.c + "&" + this.d + "&" + this.e + "&" + this.f + "&" + this.g + "&" + this.h + "&" + this.i + "&" + this.j + "&" + this.k + "&" + this.l + "&" + this.m + "&" + this.n + "&" + this.o + "&" + this.p + "&" + this.q + "&" + this.r + "&&" + this.s + "&" + this.t + "&" + this.u + "&" + this.v + "&" + this.y + "&" + this.z + "&" + this.w + "&" + this.x;
    }
}
