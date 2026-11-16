package com.taptap.sdk.review.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;

/* compiled from: TapReviewApi.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineScope;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
final class TapReviewApiKt$reviewScope$2 extends Lambda implements Function0<CoroutineScope> {
    public static final TapReviewApiKt$reviewScope$2 INSTANCE = new TapReviewApiKt$reviewScope$2();

    TapReviewApiKt$reviewScope$2() {
        super(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread invoke$lambda$0(Runnable runnable) {
        return new Thread("tap_review");
    }

    @Override // kotlin.jvm.functions.Function0
    public final CoroutineScope invoke() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.taptap.sdk.review.internal.-$$Lambda$TapReviewApiKt$reviewScope$2$9pmPWcEyjxomlsednfmM4_AF8SY
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread invoke$lambda$0;
                invoke$lambda$0 = TapReviewApiKt$reviewScope$2.invoke$lambda$0(runnable);
                return invoke$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(newSingleThreadExecutor, "newSingleThreadExecutor { Thread(\"tap_review\") }");
        return CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(newSingleThreadExecutor));
    }
}
