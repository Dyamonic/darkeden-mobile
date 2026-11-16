package com.qq.gdt.action.f.b.a;

import com.qq.gdt.action.f.b.a.c;
import com.qq.gdt.action.f.b.i;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class d implements c.a {
    private final List<c> a;
    private final int b;
    private int c;
    private final com.qq.gdt.action.f.b.g d;
    private final com.qq.gdt.action.f.b.e e;
    private final com.qq.gdt.action.f.b.a f;

    public d(com.qq.gdt.action.f.b.e eVar, List<c> list, int i, com.qq.gdt.action.f.b.g gVar, com.qq.gdt.action.f.b.a aVar) {
        this.e = eVar;
        this.a = list;
        this.b = i;
        this.d = gVar;
        this.f = aVar;
    }

    @Override // com.qq.gdt.action.f.b.a.c.a
    public com.qq.gdt.action.f.b.g a() {
        return this.d;
    }

    @Override // com.qq.gdt.action.f.b.a.c.a
    public i a(com.qq.gdt.action.f.b.g gVar) throws IOException {
        if (this.b >= this.a.size()) {
            throw new AssertionError();
        }
        this.c++;
        d dVar = new d(this.e, this.a, this.b + 1, gVar, this.f);
        c cVar = this.a.get(this.b);
        i a = cVar.a(dVar);
        if (a == null) {
            throw new NullPointerException("interceptor " + cVar + " returned null");
        }
        if (a.e() != null) {
            return a;
        }
        throw new IllegalStateException("interceptor " + cVar + " returned a response with no body");
    }

    public com.qq.gdt.action.f.b.e b() {
        return this.e;
    }
}
