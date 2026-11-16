package com.qq.gdt.action.f.b;

import com.qq.gdt.action.j.o;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class c {
    private final d a;
    private List<com.qq.gdt.action.f.b.a.c> b;

    /* loaded from: classes.dex */
    public static class a {
        private final d a = new d();
        private final List<com.qq.gdt.action.f.b.a.c> b = new ArrayList();

        public a a(com.qq.gdt.action.f.b.a.c cVar) {
            if (cVar == null) {
                o.b("interceptor == null");
                return this;
            }
            this.b.add(cVar);
            return this;
        }

        public c a() {
            return new c(this);
        }
    }

    c(a aVar) {
        this.b = new ArrayList();
        this.a = aVar.a;
        this.b = k.a(aVar.b);
    }

    public com.qq.gdt.action.f.b.a a(g gVar) {
        return new com.qq.gdt.action.f.b.a(new e(this.a), gVar, this);
    }

    public List<com.qq.gdt.action.f.b.a.c> a() {
        return this.b;
    }
}
