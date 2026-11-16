package com.qq.gdt.action.f.b.a;

import com.qq.gdt.action.f.b.a.c;
import com.qq.gdt.action.f.b.i;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.v;
import java.io.IOException;

/* loaded from: classes.dex */
public class f implements c {
    public int a;

    public f(int i) {
        this.a = i;
    }

    @Override // com.qq.gdt.action.f.b.a.c
    public i a(c.a aVar) throws IOException {
        com.qq.gdt.action.f.b.g a = aVar.a();
        i a2 = aVar.a(a);
        int i = 0;
        while (!a2.b() && i < this.a) {
            a2.e().close();
            i++;
            o.a(v.a("Retry for %s, retry number = %d", a.a(), Integer.valueOf(i)), new Object[0]);
            a2 = aVar.a(a);
        }
        return a2;
    }
}
