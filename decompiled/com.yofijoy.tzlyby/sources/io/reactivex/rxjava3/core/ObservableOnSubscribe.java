package io.reactivex.rxjava3.core;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface ObservableOnSubscribe<T> {
    void subscribe(ObservableEmitter<T> emitter) throws Throwable;
}
