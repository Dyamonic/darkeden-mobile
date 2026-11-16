package com.taptap.sdk.moment.wrapper;

import com.taptap.sdk.moment.wrapper.NoticeUtils;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NoticeUtils.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.moment.wrapper.NoticeUtils$Companion", f = "NoticeUtils.kt", i = {}, l = {93}, m = "getNoticeInfo-gIAlu-s", n = {}, s = {})
/* loaded from: classes.dex */
public final class NoticeUtils$Companion$getNoticeInfo$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NoticeUtils.Companion this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoticeUtils$Companion$getNoticeInfo$1(NoticeUtils.Companion companion, Continuation<? super NoticeUtils$Companion$getNoticeInfo$1> continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object m26getNoticeInfogIAlus = this.this$0.m26getNoticeInfogIAlus(null, this);
        return m26getNoticeInfogIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? m26getNoticeInfogIAlus : Result.m55boximpl(m26getNoticeInfogIAlus);
    }
}
