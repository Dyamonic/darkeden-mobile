package com.tencent.turingfd.sdk.ams.ad;

import java.util.LinkedList;

/* loaded from: classes2.dex */
public class Gemini<E> {
    public final int a;
    public final LinkedList<E> b = new LinkedList<>();

    public Gemini(int i) {
        this.a = i;
    }

    public void a(E e) {
        if (this.b.size() >= this.a) {
            this.b.poll();
        }
        this.b.offer(e);
    }
}
