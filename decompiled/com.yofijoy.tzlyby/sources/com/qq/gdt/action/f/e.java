package com.qq.gdt.action.f;

import com.qq.gdt.action.f.b.h;

/* loaded from: classes.dex */
public class e extends d<e> {
    private byte[] d;

    public e a(byte[] bArr) {
        this.d = bArr;
        return this;
    }

    public c b() {
        a();
        return new c(this.c.a(h.a(com.qq.gdt.action.f.b.f.a("application/json; charset=utf-8"), this.d)).a(this.a).a());
    }
}
