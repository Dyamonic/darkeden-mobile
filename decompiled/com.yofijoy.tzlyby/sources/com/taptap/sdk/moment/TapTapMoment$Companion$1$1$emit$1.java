package com.taptap.sdk.moment;

import com.taptap.sdk.moment.TapTapMoment;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapTapMoment.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.moment.TapTapMoment$Companion$1$1", f = "TapTapMoment.kt", i = {0}, l = {92}, m = "emit", n = {"currentTime"}, s = {"J$0"})
/* loaded from: classes.dex */
public final class TapTapMoment$Companion$1$1$emit$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TapTapMoment.Companion.AnonymousClass1.C00371<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TapTapMoment$Companion$1$1$emit$1(TapTapMoment.Companion.AnonymousClass1.C00371<? super T> c00371, Continuation<? super TapTapMoment$Companion$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = c00371;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit((Unit) null, (Continuation<? super Unit>) this);
    }
}
