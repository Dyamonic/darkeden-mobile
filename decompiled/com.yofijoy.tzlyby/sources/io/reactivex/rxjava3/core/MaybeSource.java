package io.reactivex.rxjava3.core;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface MaybeSource<T> {
    void subscribe(MaybeObserver<? super T> observer);
}
