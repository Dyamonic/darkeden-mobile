package io.reactivex.rxjava3.core;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface MaybeConverter<T, R> {
    R apply(Maybe<T> upstream);
}
