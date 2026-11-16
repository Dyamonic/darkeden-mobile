package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.applog.event.EventBasicData;
import com.bytedance.applog.event.EventPolicy;
import com.bytedance.applog.event.EventType;
import com.bytedance.applog.event.IEventHandler;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class c4 {
    public final d0 a;
    public final b4 b;

    public c4(d0 d0Var, b4 b4Var) {
        this.a = d0Var;
        this.b = b4Var;
    }

    public final EventPolicy a(IEventHandler iEventHandler, int i, String str, x3 x3Var, JSONObject jSONObject) {
        x3Var.h();
        String e = x3Var.e();
        JSONObject jSONObject2 = new JSONObject();
        if (!TextUtils.isEmpty(e)) {
            try {
                jSONObject2 = new JSONObject(e);
            } catch (Throwable unused) {
                this.a.d.D.error(5, "Param:[{}] is not a json string", e);
            }
        }
        if (jSONObject != null) {
            k0.c(jSONObject, jSONObject2);
        }
        EventPolicy onReceive = iEventHandler.onReceive(i, str, jSONObject2, new EventBasicData(x3Var));
        x3Var.o = jSONObject2;
        return onReceive;
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0163 A[Catch: all -> 0x0189, TryCatch #3 {all -> 0x0189, blocks: (B:74:0x0159, B:75:0x015d, B:77:0x0163, B:84:0x0171, B:80:0x017d), top: B:73:0x0159 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a4 A[Catch: all -> 0x01d4, LOOP:2: B:88:0x019e->B:90:0x01a4, LOOP_END, TryCatch #1 {all -> 0x01d4, blocks: (B:87:0x019a, B:88:0x019e, B:90:0x01a4, B:92:0x01b8, B:93:0x01bc, B:95:0x01c2), top: B:86:0x019a }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01c2 A[Catch: all -> 0x01d4, LOOP:3: B:93:0x01bc->B:95:0x01c2, LOOP_END, TRY_LEAVE, TryCatch #1 {all -> 0x01d4, blocks: (B:87:0x019a, B:88:0x019e, B:90:0x01a4, B:92:0x01b8, B:93:0x01bc, B:95:0x01c2), top: B:86:0x019a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(java.util.List<com.bytedance.bdtracker.x3> r23) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.c4.b(java.util.List):void");
    }

    public final boolean a(IEventHandler iEventHandler, x3 x3Var, boolean z) {
        String str;
        if (x3Var != null) {
            EventPolicy eventPolicy = null;
            if (iEventHandler != null) {
                int acceptType = iEventHandler.acceptType();
                if (!(x3Var instanceof z3)) {
                    int i = 2;
                    if (x3Var instanceof e4) {
                        if (EventType.a(acceptType, 1)) {
                            str = ((e4) x3Var).u;
                            i = 1;
                            eventPolicy = a(iEventHandler, i, k0.a((Object) str), x3Var, x3Var.o);
                        }
                    } else if (x3Var instanceof h4) {
                        if (EventType.a(acceptType, 4)) {
                            eventPolicy = a(iEventHandler, 4, "bav2b_page", x3Var, x3Var.o);
                        }
                    } else if ((x3Var instanceof i4) && EventType.a(acceptType, 2)) {
                        str = ((i4) x3Var).t;
                        eventPolicy = a(iEventHandler, i, k0.a((Object) str), x3Var, x3Var.o);
                    }
                } else if (EventType.a(acceptType, 8)) {
                    eventPolicy = a(iEventHandler, 8, "bav2b_click", x3Var, x3Var.o);
                }
            }
            if (x3Var instanceof f4) {
                eventPolicy = z ? EventPolicy.ACCEPT : EventPolicy.DENY;
            }
            if (eventPolicy == EventPolicy.DENY) {
                return false;
            }
        }
        return true;
    }

    public void a(List<x3> list) {
        try {
            for (x3 x3Var : list) {
                if ("eventv3".equals(x3Var.f())) {
                    e4 e4Var = (e4) x3Var;
                    j1 j1Var = this.a.d.c;
                    String str = e4Var.u;
                    String str2 = e4Var.s;
                    j1Var.onEventV3(str, str2 != null ? new JSONObject(str2) : null);
                }
            }
        } catch (Throwable th) {
            this.a.d.D.debug(5, "Notify event observer failed", th);
        }
    }
}
