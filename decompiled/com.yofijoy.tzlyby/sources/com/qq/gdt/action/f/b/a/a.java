package com.qq.gdt.action.f.b.a;

import com.qq.gdt.action.f.b.a.c;
import com.qq.gdt.action.f.b.i;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.t;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class a implements c {
    @Override // com.qq.gdt.action.f.b.a.c
    public i a(c.a aVar) throws IOException {
        com.qq.gdt.action.f.b.g a = aVar.a();
        Map<String, String> d = a.d();
        if (d != null) {
            d.put("abs", String.valueOf(true));
        }
        i a2 = aVar.a(a);
        Map<String, List<String>> d2 = a2.d();
        if (d2 != null) {
            List<String> list = d2.get("at");
            if (list != null && list.size() > 0) {
                try {
                    t.a(com.qq.gdt.action.e.a().g(), Long.parseLong(list.get(0)));
                } catch (NumberFormatException e) {
                    o.b("fail to parse SERVER_ACTIVATE_TIME !", e);
                }
            }
            List<String> list2 = d2.get("ai");
            if (list2 != null && list2.size() > 0) {
                try {
                    t.a(com.qq.gdt.action.e.a().g(), Boolean.parseBoolean(list2.get(0)));
                } catch (Exception e2) {
                    o.b("fail to parse ACTIVATE_WITH_IMEI !", e2);
                }
            }
            List<String> list3 = d2.get("ao");
            if (list3 != null && list3.size() > 0) {
                try {
                    t.b(com.qq.gdt.action.e.a().g(), Boolean.parseBoolean(list3.get(0)));
                } catch (Exception e3) {
                    o.b("fail to parse ACTIVATE_WITH_OAID !", e3);
                }
            }
        }
        return a2;
    }
}
