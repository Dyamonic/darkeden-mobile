package com.qq.gdt.action.f.b;

import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes.dex */
public class i {
    private final j a;
    private final g b;
    private final int c;
    private final String d;
    private final Map<String, List<String>> e;

    /* loaded from: classes.dex */
    public static class a {
        private j a;
        private g b;
        private int c;
        private String d;
        private Map<String, List<String>> e;

        public a a(int i) {
            this.c = i;
            return this;
        }

        public a a(g gVar) {
            this.b = gVar;
            return this;
        }

        public a a(j jVar) {
            this.a = jVar;
            return this;
        }

        public a a(String str) {
            this.d = str;
            return this;
        }

        public a a(Map<String, List<String>> map) {
            this.e = map;
            return this;
        }

        public i a() {
            return new i(this);
        }
    }

    i(a aVar) {
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.a = aVar.a;
    }

    public g a() {
        return this.b;
    }

    public boolean b() {
        return this.c / 100 == 2;
    }

    public int c() {
        return this.c;
    }

    public Map<String, List<String>> d() {
        return this.e;
    }

    public j e() {
        return this.a;
    }

    public String toString() {
        return "{\"body\":" + this.a + ",\"request\":" + this.b + ",\"code\":" + this.c + ",\"message\":\"" + this.d + "\",\"headers\":" + this.e + AbstractJsonLexerKt.END_OBJ;
    }
}
