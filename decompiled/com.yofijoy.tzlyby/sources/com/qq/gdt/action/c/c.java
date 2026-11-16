package com.qq.gdt.action.c;

import androidx.core.os.EnvironmentCompat;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes.dex */
public class c {
    private String a;
    private int b;

    public c(int i, int i2) {
        this.a = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? EnvironmentCompat.MEDIA_UNKNOWN : "abandon" : "ignore" : "fail" : "success" : "pending";
        this.b = i2;
    }

    public String a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public String toString() {
        return "ActionStatusCount{status=" + this.a + ", count=" + this.b + AbstractJsonLexerKt.END_OBJ;
    }
}
