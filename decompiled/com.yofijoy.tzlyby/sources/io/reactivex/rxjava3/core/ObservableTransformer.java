package io.reactivex.rxjava3.core;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface ObservableTransformer<Upstream, Downstream> {
    ObservableSource<Downstream> apply(Observable<Upstream> upstream);
}
