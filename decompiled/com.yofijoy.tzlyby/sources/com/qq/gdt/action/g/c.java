package com.qq.gdt.action.g;

import com.qq.gdt.action.j.o;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class c {
    private static volatile c a;

    public static c a() {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c();
                }
            }
        }
        return a;
    }

    private boolean b() {
        boolean z = com.qq.gdt.action.e.a().g() != null;
        if (!z) {
            o.a("event sendToNetwork 上下文 未准备好！！！！ ", new Object[0]);
        }
        return z;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x008e -> B:12:0x0095). Please report as a decompilation issue!!! */
    public void a(int i, com.qq.gdt.action.c.a aVar, JSONObject jSONObject) {
        String a2;
        String str;
        long b;
        long d;
        if (aVar != null) {
            try {
                String c = aVar.c();
                a2 = aVar.a();
                str = c;
                b = aVar.b();
                d = aVar.d();
            } catch (Exception e) {
                o.b("RecorderWrapper event e ", e);
                return;
            }
        } else {
            d = -1;
            b = -1;
            str = null;
            a2 = null;
        }
        try {
        } catch (Exception e2) {
            o.b("RecorderWrapper event e ", e2);
        }
        if (d.a(str, i)) {
            com.qq.gdt.action.g.a.a aVar2 = new com.qq.gdt.action.g.a.a(i, System.currentTimeMillis(), com.qq.gdt.action.e.a().n(), str, a2, d, jSONObject, b, com.qq.gdt.action.e.a().p());
            if (b()) {
                b.a().a(aVar2);
            } else {
                com.qq.gdt.action.i.a.a(aVar2);
                o.a("event不落DB直接发送，eventId:  " + aVar2.b() + ", eventLogId:" + aVar2.k(), new Object[0]);
            }
        }
    }
}
