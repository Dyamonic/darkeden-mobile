package com.bytedance.bdtracker;

import com.bytedance.applog.util.HardwareUtils;
import java.util.Collections;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class e0 {
    public final d0 a;

    public e0(d0 d0Var) {
        this.a = d0Var;
    }

    public void a(x3 x3Var) {
        JSONObject jSONObject;
        try {
            if (x3Var.o != null) {
                jSONObject = x3Var.o;
            } else {
                jSONObject = new JSONObject();
            }
            if (this.a.e.c.isScreenOrientationEnabled()) {
                jSONObject.put("$screen_orientation", HardwareUtils.getScreenOrientation(this.a.d.n) == 2 ? "landscape" : "portrait");
            }
            r rVar = this.a.d.B;
            if (rVar != null) {
                jSONObject.put("$longitude", rVar.a);
                jSONObject.put("$latitude", rVar.b);
                jSONObject.put("$geo_coordinate_system", rVar.c);
            }
            if (jSONObject.length() > 0) {
                x3Var.o = jSONObject;
            }
        } catch (Throwable th) {
            this.a.d.D.error(4, Collections.singletonList("LifeHook"), "Do beforeEventSave failed", th, new Object[0]);
        }
    }
}
