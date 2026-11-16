package com.taptap.sdk.update.extension;

import com.taptap.sdk.update.internal.TapUpdateApiKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* compiled from: SystemExt.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\u001a/\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0080@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u001a.\u0010\u0007\u001a\u00020\b2\u001c\u0010\u0002\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\t\u001a.\u0010\n\u001a\u00020\b2\u001c\u0010\u0002\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\t\u001a8\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\r2\u001c\u0010\u0002\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"dispatchMain", "", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runAsync", "Lkotlinx/coroutines/Job;", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;", "runOnMain", "runOnMainWithDelay", "delayMillis", "", "(JLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;", "tap-update_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SystemExtKt {
    public static final Job runAsync(Function1<? super Continuation<? super Unit>, ? extends Object> block) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(block, "block");
        launch$default = BuildersKt__Builders_commonKt.launch$default(TapUpdateApiKt.getUpdateScope(), Dispatchers.getIO(), null, new SystemExtKt$runAsync$1(block, null), 2, null);
        return launch$default;
    }

    public static final Job runOnMain(Function1<? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return runOnMainWithDelay(0L, block);
    }

    public static /* synthetic */ Job runOnMainWithDelay$default(long j, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        return runOnMainWithDelay(j, function1);
    }

    public static final Job runOnMainWithDelay(long j, Function1<? super Continuation<? super Unit>, ? extends Object> block) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(block, "block");
        launch$default = BuildersKt__Builders_commonKt.launch$default(TapUpdateApiKt.getUpdateScope(), Dispatchers.getMain(), null, new SystemExtKt$runOnMainWithDelay$1(j, block, null), 2, null);
        return launch$default;
    }

    public static final Object dispatchMain(Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(Dispatchers.getMain(), new SystemExtKt$dispatchMain$2(function1, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }
}
