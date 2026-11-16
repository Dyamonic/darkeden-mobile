package com.bytedance.bdtracker;

import android.accounts.Account;
import android.content.Context;

/* loaded from: classes.dex */
public class z1 {
    public volatile u4 a;
    public Account b;
    public w3 c;

    public u4 a(d dVar, Context context, v1 v1Var) {
        if (this.a == null) {
            synchronized (z1.class) {
                if (this.a == null) {
                    if (context == null) {
                        throw new IllegalArgumentException("context == null");
                    }
                    if (this.c == null) {
                        this.c = new w3(dVar, context);
                    }
                    if (this.a == null) {
                        this.a = new u4(dVar, context, v1Var, this.c);
                        if (this.b != null) {
                            this.a.a(this.b);
                        }
                    }
                }
            }
        }
        return this.a;
    }
}
