package io.reactivex.rxjava3.core;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface SingleOnSubscribe<T> {
    void subscribe(SingleEmitter<T> emitter) throws Throwable;
}
