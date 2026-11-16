package com.qq.gdt.action.f.b;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class g {
    private String a;
    private String b;
    private Map<String, String> c;
    private h d;
    private int e;
    private int f;

    /* loaded from: classes.dex */
    public static class a {
        private String a;
        private String b = "GET";
        private Map<String, String> c = new HashMap();
        private h d;
        private int e;
        private int f;

        private void b(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt <= 31 || charAt >= 127) {
                    throw new IllegalArgumentException(k.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
            }
            if (str2 == null) {
                throw new IllegalArgumentException("value == null");
            }
            int length2 = str2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                char charAt2 = str2.charAt(i2);
                if (charAt2 <= 31 || charAt2 >= 127) {
                    throw new IllegalArgumentException(k.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
                }
            }
        }

        public a a(h hVar) {
            return a("POST", hVar);
        }

        public a a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("url == null");
            }
            this.a = str;
            return this;
        }

        public a a(String str, h hVar) {
            this.b = str;
            this.d = hVar;
            return this;
        }

        public a a(String str, String str2) {
            b(str, str2);
            this.c.put(str, str2);
            return this;
        }

        public g a() {
            if (this.a != null) {
                return new g(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    g(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
    }

    public String a() {
        return this.a;
    }

    public int b() {
        return this.e;
    }

    public int c() {
        return this.f;
    }

    public Map<String, String> d() {
        return this.c;
    }

    public String e() {
        return this.b;
    }

    public h f() {
        return this.d;
    }
}
