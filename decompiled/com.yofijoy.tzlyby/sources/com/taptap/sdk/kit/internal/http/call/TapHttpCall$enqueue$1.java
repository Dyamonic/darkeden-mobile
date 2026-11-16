package com.taptap.sdk.kit.internal.http.call;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapHttpCall.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.kit.internal.http.call.TapHttpCall", f = "TapHttpCall.kt", i = {0}, l = {28, 33}, m = "enqueue", n = {"this"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class TapHttpCall$enqueue$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TapHttpCall<DataBean> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapHttpCall$enqueue$1(TapHttpCall<DataBean> tapHttpCall, Continuation<? super TapHttpCall$enqueue$1> continuation) {
        super(continuation);
        this.this$0 = tapHttpCall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.enqueue(0L, this);
    }
}
