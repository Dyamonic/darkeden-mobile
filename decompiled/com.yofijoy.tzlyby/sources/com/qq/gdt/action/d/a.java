package com.qq.gdt.action.d;

/* loaded from: classes.dex */
public class a extends Exception {
    private String a;

    public a(String str, Throwable th) {
        super(str, th);
        this.a = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.a;
    }
}
