package com.qq.gdt.action.j;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class j {
    private static volatile j a;
    private Executor b;

    public static j a() {
        if (a == null) {
            synchronized (j.class) {
                if (a == null) {
                    a = new j();
                }
            }
        }
        return a;
    }

    public synchronized Executor b() {
        if (this.b == null) {
            this.b = Executors.newCachedThreadPool();
        }
        return this.b;
    }
}
