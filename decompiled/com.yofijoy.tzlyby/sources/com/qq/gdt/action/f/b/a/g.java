package com.qq.gdt.action.f.b.a;

import com.qq.gdt.action.f.b.a.c;
import com.qq.gdt.action.f.b.i;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.w;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class g implements c {
    @Override // com.qq.gdt.action.f.b.a.c
    public i a(c.a aVar) throws IOException {
        List<String> list;
        com.qq.gdt.action.f.b.g a = aVar.a();
        Map<String, String> d = a.d();
        if (d != null) {
            d.put("Client-Time", String.valueOf(System.currentTimeMillis()));
        }
        i a2 = aVar.a(a);
        Map<String, List<String>> d2 = a2.d();
        if (d2 != null && (list = d2.get("Server-Time")) != null && list.size() > 0) {
            try {
                w.a(Long.parseLong(list.get(0)));
            } catch (NumberFormatException e) {
                o.b("fail to parse server time !", e);
            }
        }
        return a2;
    }
}
