package com.qq.gdt.action.j;

import android.content.Context;
import com.qq.gdt.action.e.d;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class x {
    public static void a(JSONObject jSONObject, Context context) {
        try {
            d.b d = h.d(context);
            jSONObject.putOpt("taid", d.b);
            jSONObject.putOpt("taid_standard", d.b);
            jSONObject.putOpt("taid_ticket_standard", d.c);
            jSONObject.putOpt("m10", d.a);
            jSONObject.putOpt("m10_standard", d.a);
            jSONObject.putOpt("m10Error", Integer.valueOf(d.d));
        } catch (Throwable th) {
            o.a("appendTuringDID err", th);
        }
    }
}
