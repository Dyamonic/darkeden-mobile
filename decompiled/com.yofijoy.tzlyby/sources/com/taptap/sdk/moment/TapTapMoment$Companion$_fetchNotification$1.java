package com.taptap.sdk.moment;

import com.taptap.sdk.moment.TapTapMoment;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapTapMoment.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.moment.TapTapMoment$Companion", f = "TapTapMoment.kt", i = {0}, l = {238}, m = "_fetchNotification", n = {"this"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class TapTapMoment$Companion$_fetchNotification$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TapTapMoment.Companion this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapTapMoment$Companion$_fetchNotification$1(TapTapMoment.Companion companion, Continuation<? super TapTapMoment$Companion$_fetchNotification$1> continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0._fetchNotification(this);
    }
}
