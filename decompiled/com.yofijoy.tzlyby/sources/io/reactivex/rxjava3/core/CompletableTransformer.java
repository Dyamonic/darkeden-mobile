package io.reactivex.rxjava3.core;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface CompletableTransformer {
    CompletableSource apply(Completable upstream);
}
