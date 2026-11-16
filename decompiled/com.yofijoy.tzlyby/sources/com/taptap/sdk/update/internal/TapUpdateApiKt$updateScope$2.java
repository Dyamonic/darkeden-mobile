package com.taptap.sdk.update.internal;

import com.taptap.sdk.update.constants.LoggerConst;
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

/* compiled from: TapUpdateApi.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineScope;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
final class TapUpdateApiKt$updateScope$2 extends Lambda implements Function0<CoroutineScope> {
    public static final TapUpdateApiKt$updateScope$2 INSTANCE = new TapUpdateApiKt$updateScope$2();

    TapUpdateApiKt$updateScope$2() {
        super(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread invoke$lambda$0(Runnable runnable) {
        return new Thread(LoggerConst.OBJECT_TYPE_UPDATE);
    }

    @Override // kotlin.jvm.functions.Function0
    public final CoroutineScope invoke() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.taptap.sdk.update.internal.-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread invoke$lambda$0;
                invoke$lambda$0 = TapUpdateApiKt$updateScope$2.invoke$lambda$0(runnable);
                return invoke$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(newSingleThreadExecutor, "newSingleThreadExecutor { Thread(\"tap_update\") }");
        return CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(newSingleThreadExecutor));
    }
}
