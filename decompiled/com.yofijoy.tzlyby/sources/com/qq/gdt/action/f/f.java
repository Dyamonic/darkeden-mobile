package com.qq.gdt.action.f;

/* loaded from: classes.dex */
public class f {
    private int a;
    private String b;

    public f() {
        this.a = -1;
        this.b = "Unknown message";
    }

    public f(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public int a() {
        return this.a;
    }

    public f a(int i) {
        this.a = i;
        return this;
    }

    public f a(String str) {
        this.b = str;
        return this;
    }

    public String b() {
        return this.b;
    }
}
