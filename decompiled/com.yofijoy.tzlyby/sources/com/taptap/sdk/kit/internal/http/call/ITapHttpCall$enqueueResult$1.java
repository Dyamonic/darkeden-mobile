package com.taptap.sdk.kit.internal.http.call;

import com.taptap.sdk.kit.internal.http.call.ITapHttpCall;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ITapHttpCall.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.kit.internal.http.call.ITapHttpCall$DefaultImpls", f = "ITapHttpCall.kt", i = {}, l = {19}, m = "enqueueResult-gIAlu-s", n = {}, s = {})
/* loaded from: classes.dex */
public final class ITapHttpCall$enqueueResult$1<DataBean> extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ITapHttpCall$enqueueResult$1(Continuation<? super ITapHttpCall$enqueueResult$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m15enqueueResultgIAlus = ITapHttpCall.DefaultImpls.m15enqueueResultgIAlus(null, 0L, this);
        return m15enqueueResultgIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? m15enqueueResultgIAlus : Result.m55boximpl(m15enqueueResultgIAlus);
    }
}
