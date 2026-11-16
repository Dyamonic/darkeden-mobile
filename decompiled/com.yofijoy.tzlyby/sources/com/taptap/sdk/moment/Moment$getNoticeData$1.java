package com.taptap.sdk.moment;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Moment.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.moment.Moment", f = "Moment.kt", i = {}, l = {117}, m = "getNoticeData-IoAF18A", n = {}, s = {})
/* loaded from: classes.dex */
public final class Moment$getNoticeData$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Moment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Moment$getNoticeData$1(Moment moment, Continuation<? super Moment$getNoticeData$1> continuation) {
        super(continuation);
        this.this$0 = moment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m23getNoticeDataIoAF18A = this.this$0.m23getNoticeDataIoAF18A(this);
        return m23getNoticeDataIoAF18A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? m23getNoticeDataIoAF18A : Result.m55boximpl(m23getNoticeDataIoAF18A);
    }
}
