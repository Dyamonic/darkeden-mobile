package com.taptap.sdk.kit.internal.http.call;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapHttpCall.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.kit.internal.http.call.TapHttpCall", f = "TapHttpCall.kt", i = {0, 1}, l = {57, 222}, m = "enqueueInner", n = {"this", "this"}, s = {"L$0", "L$0"})
/* loaded from: classes.dex */
public final class TapHttpCall$enqueueInner$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TapHttpCall<DataBean> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapHttpCall$enqueueInner$1(TapHttpCall<DataBean> tapHttpCall, Continuation<? super TapHttpCall$enqueueInner$1> continuation) {
        super(continuation);
        this.this$0 = tapHttpCall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object enqueueInner;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        enqueueInner = this.this$0.enqueueInner(0L, this);
        return enqueueInner;
    }
}
