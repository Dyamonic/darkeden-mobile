package com.tencent.turingfd.sdk.ams.ad;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class Peanut implements Runnable {
    public final /* synthetic */ AtomicBoolean a;
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ Object c;

    public Peanut(AtomicBoolean atomicBoolean, AtomicReference atomicReference, Object obj) {
        this.a = atomicBoolean;
        this.b = atomicReference;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.get()) {
            return;
        }
        try {
            throw new Exception("");
        } catch (Exception e) {
            String a = Cfinally.a(Cfinally.F0);
            for (StackTraceElement stackTraceElement : e.getStackTrace()) {
                if (a.equals(stackTraceElement.getClassName() + "_" + stackTraceElement.getMethodName())) {
                    this.b.set(Boolean.TRUE);
                }
            }
            synchronized (this.c) {
                this.c.notify();
            }
        }
    }
}
