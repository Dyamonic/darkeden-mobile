package com.qq.gdt.action.f;

import com.qq.gdt.action.f.b.g;
import com.qq.gdt.action.f.d;
import com.qq.gdt.action.j.i;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class d<T extends d> {
    protected String a;
    protected Map<String, String> b;
    protected final g.a c = new g.a();

    public T a(String str) {
        this.a = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.c.a("User-Agent", i.a("GDTActionSDK-[" + System.getProperty("http.agent") + "]"));
        Map<String, String> map = this.b;
        if (map == null || map.isEmpty()) {
            return;
        }
        for (String str : this.b.keySet()) {
            this.c.a(str, this.b.get(str));
        }
    }
}
