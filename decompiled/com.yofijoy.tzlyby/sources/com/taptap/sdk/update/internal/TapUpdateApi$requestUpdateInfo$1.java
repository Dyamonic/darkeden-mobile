package com.taptap.sdk.update.internal;

import com.taptap.sdk.update.TapUpdateApiCallback;
import com.taptap.sdk.update.bean.UpdateResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapUpdateApi.kt */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.update.internal.TapUpdateApi$requestUpdateInfo$1", f = "TapUpdateApi.kt", i = {}, l = {62, 144, 78, 89}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class TapUpdateApi$requestUpdateInfo$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ TapUpdateApiCallback $callback;
    final /* synthetic */ String $packageName;
    final /* synthetic */ int $versionCode;
    Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapUpdateApi$requestUpdateInfo$1(String str, int i, TapUpdateApiCallback tapUpdateApiCallback, Continuation<? super TapUpdateApi$requestUpdateInfo$1> continuation) {
        super(1, continuation);
        this.$packageName = str;
        this.$versionCode = i;
        this.$callback = tapUpdateApiCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new TapUpdateApi$requestUpdateInfo$1(this.$packageName, this.$versionCode, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((TapUpdateApi$requestUpdateInfo$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00f6  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.update.internal.TapUpdateApi$requestUpdateInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TapUpdateApi.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "com.taptap.sdk.update.internal.TapUpdateApi$requestUpdateInfo$1$1", f = "TapUpdateApi.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.taptap.sdk.update.internal.TapUpdateApi$requestUpdateInfo$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ TapUpdateApiCallback $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TapUpdateApiCallback tapUpdateApiCallback, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$callback = tapUpdateApiCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            UpdateResult updateResult;
            UpdateResult updateResult2;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                updateResult = TapUpdateApi.cachedUpdateInfo;
                if (updateResult != null) {
                    updateResult.updateSessionId();
                }
                TapUpdateApiCallback tapUpdateApiCallback = this.$callback;
                if (tapUpdateApiCallback != null) {
                    updateResult2 = TapUpdateApi.cachedUpdateInfo;
                    tapUpdateApiCallback.onSuccess(updateResult2);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
