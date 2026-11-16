package com.bytedance.ads.convert.hume.readapk;

/* loaded from: classes.dex */
public final class Pair<A, B> {
    private final A mFirst;
    private final B mSecond;

    private Pair(A a, B b) {
        this.mFirst = a;
        this.mSecond = b;
    }

    public static <A, B> Pair<A, B> of(A a, B b) {
        return new Pair<>(a, b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Pair pair = (Pair) obj;
        A a = this.mFirst;
        if (a == null) {
            if (pair.mFirst != null) {
                return false;
            }
        } else if (!a.equals(pair.mFirst)) {
            return false;
        }
        B b = this.mSecond;
        B b2 = pair.mSecond;
        if (b == null) {
            if (b2 != null) {
                return false;
            }
        } else if (!b.equals(b2)) {
            return false;
        }
        return true;
    }

    public A getFirst() {
        return this.mFirst;
    }

    public B getSecond() {
        return this.mSecond;
    }

    public int hashCode() {
        A a = this.mFirst;
        int hashCode = a == null ? 0 : a.hashCode();
        B b = this.mSecond;
        return ((hashCode + 31) * 31) + (b != null ? b.hashCode() : 0);
    }
}
