package com.qq.gdt.action.f;

import com.qq.gdt.action.f.b.a.g;
import com.qq.gdt.action.f.b.c;

/* loaded from: classes.dex */
public class b {
    private static volatile b a;
    private com.qq.gdt.action.f.b.c b;
    private com.qq.gdt.action.f.b.c c;

    private b() {
        a(null);
        b(null);
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    a = new b();
                }
            }
        }
        return a;
    }

    private void a(com.qq.gdt.action.f.b.c cVar) {
        if (cVar == null) {
            cVar = new c.a().a(new com.qq.gdt.action.f.b.a.e()).a(new com.qq.gdt.action.f.b.a.f(3)).a(new g()).a(new com.qq.gdt.action.f.b.a.a()).a();
        }
        this.b = cVar;
    }

    private void b(com.qq.gdt.action.f.b.c cVar) {
        if (this.c == null) {
            cVar = new c.a().a(new com.qq.gdt.action.f.b.a.e()).a(new com.qq.gdt.action.f.b.a.f(3)).a();
        }
        this.c = cVar;
    }

    public static e d() {
        return new e();
    }

    public com.qq.gdt.action.f.b.c b() {
        return this.b;
    }

    public com.qq.gdt.action.f.b.c c() {
        return this.c;
    }
}
