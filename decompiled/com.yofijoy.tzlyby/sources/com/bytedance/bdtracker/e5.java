package com.bytedance.bdtracker;

import java.util.UUID;

/* loaded from: classes.dex */
public class e5 {
    public static q4<String> a = new a();

    /* loaded from: classes.dex */
    public static class a extends q4<String> {
        @Override // com.bytedance.bdtracker.q4
        public String a(Object[] objArr) {
            return UUID.randomUUID().toString();
        }
    }

    public static String a() {
        return a.b(new Object[0]);
    }
}
