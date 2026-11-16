package com.tencent.turingfd.sdk.ams.ad;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class Sculptor extends Ara {
    public final AtomicReference<String> a = new AtomicReference<>(null);
    public final boolean b;

    public Sculptor(boolean z) {
        this.b = z;
    }

    public String toString() {
        synchronized (this.a) {
            String str = this.a.get();
            if (str != null) {
                return str;
            }
            try {
                this.a.wait(2000L);
            } catch (InterruptedException unused) {
            }
            return this.a.get();
        }
    }
}
