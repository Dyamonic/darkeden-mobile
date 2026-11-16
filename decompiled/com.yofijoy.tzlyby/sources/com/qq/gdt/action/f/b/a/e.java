package com.qq.gdt.action.f.b.a;

import com.qq.gdt.action.f.b.a.c;
import com.qq.gdt.action.f.b.i;
import com.qq.gdt.action.j.n;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.v;
import java.io.IOException;

/* loaded from: classes.dex */
public class e implements c {
    @Override // com.qq.gdt.action.f.b.a.c
    public i a(c.a aVar) throws IOException {
        com.qq.gdt.action.f.b.g a = aVar.a();
        long nanoTime = System.nanoTime();
        o.a(v.a("Sending request %s %s", a.e(), a.a()), new Object[0]);
        i a2 = aVar.a(a);
        o.a(v.a("Received response for %s in %.1fms (http status code %d)%n%s", a2.a().a(), Double.valueOf((System.nanoTime() - nanoTime) / 1000000.0d), Integer.valueOf(a2.c()), n.a(a2.e().c())), new Object[0]);
        return a2;
    }
}
