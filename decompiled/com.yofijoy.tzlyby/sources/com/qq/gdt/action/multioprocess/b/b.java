package com.qq.gdt.action.multioprocess.b;

import com.qq.gdt.action.j.o;
import java.io.Serializable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes.dex */
public abstract class b implements Serializable {
    private String b;
    private int d;
    private String a = getClass().getSimpleName();
    private int c = 0;

    /* loaded from: classes.dex */
    public static class a extends b {
    }

    /* renamed from: com.qq.gdt.action.multioprocess.b.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0036b extends b {
    }

    /* loaded from: classes.dex */
    public static class c extends b {
    }

    /* loaded from: classes.dex */
    public static class d extends b {
    }

    /* loaded from: classes.dex */
    public static class e extends b {
    }

    /* loaded from: classes.dex */
    public static class f extends b {
    }

    /* loaded from: classes.dex */
    public static class g extends b {
    }

    /* loaded from: classes.dex */
    public static class h extends b {
    }

    /* loaded from: classes.dex */
    public static class i extends b {
    }

    /* loaded from: classes.dex */
    public static class j extends b {
    }

    /* loaded from: classes.dex */
    public static class k extends b {
    }

    /* loaded from: classes.dex */
    public static class l extends b {
    }

    /* loaded from: classes.dex */
    public static class m extends b {
    }

    public b() {
        this.d = 1;
        try {
            this.d = com.qq.gdt.action.b.a(com.qq.gdt.action.e.a().g()).p();
        } catch (Throwable th) {
            o.a("DeviceInfoItem fetchLimit e = " + th, new Object[0]);
        }
    }

    public String a() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public int b() {
        return this.c;
    }

    public int c() {
        return this.d;
    }

    public void d() {
        this.c++;
    }

    public String toString() {
        return "{\"type\":\"" + this.a + "\",\"deviceValue\":\"" + this.b + "\",\"fetchTimes\":" + this.c + ",\"limitTimes\":" + this.d + AbstractJsonLexerKt.END_OBJ;
    }
}
