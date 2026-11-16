package com.taptap.sdk.kit.internal.http;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapHttpExt.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.kit.internal.http.TapHttpExtKt", f = "TapHttpExt.kt", i = {0}, l = {22}, m = "enqueueResult", n = {"onSuccess"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class TapHttpExtKt$enqueueResult$1<T> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TapHttpExtKt$enqueueResult$1(Continuation<? super TapHttpExtKt$enqueueResult$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object enqueueResult = TapHttpExtKt.enqueueResult(null, null, this);
        return enqueueResult == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? enqueueResult : Result.m55boximpl(enqueueResult);
    }
}
