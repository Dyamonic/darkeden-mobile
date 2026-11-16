package com.taptap.sdk.kit.internal.http.call;

import androidx.core.app.NotificationCompat;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.kit.internal.http.TapErrorConstants;
import com.taptap.sdk.kit.internal.http.TapHttpException;
import com.taptap.sdk.kit.internal.http.call.ITapHttpCall;
import com.taptap.sdk.kit.internal.http.hanlder.ITapHttpParser;
import com.taptap.sdk.kit.internal.http.hanlder.ITapHttpRetry;
import com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam;
import com.taptap.sdk.kit.internal.utils.TapOpenlogHelper;
import com.taptap.sdk.okhttp3.Call;
import com.taptap.sdk.okhttp3.Response;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: TapHttpCall.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B'\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0019\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\u0019\u0010\u0010\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\u0015\u0010\u0011\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0003¢\u0006\u0002\u0010\u0012J.\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;", "DataBean", "Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;", "param", "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;", "httpParser", "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;", "httpRetry", "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;", "(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V", "getParam", "()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;", "enqueue", "delay", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "enqueueInner", "execute", "(J)Ljava/lang/Object;", "executeInner", "onResultFailure", "", NotificationCompat.CATEGORY_CALL, "Lcom/taptap/sdk/okhttp3/Call;", "startTime", "it", "", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapHttpCall<DataBean> implements ITapHttpCall<DataBean> {
    private final ITapHttpParser<DataBean> httpParser;
    private final ITapHttpRetry httpRetry;
    private final AbsTapHttpParam<?> param;

    public TapHttpCall(AbsTapHttpParam<?> param, ITapHttpParser<DataBean> httpParser, ITapHttpRetry httpRetry) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(httpParser, "httpParser");
        Intrinsics.checkNotNullParameter(httpRetry, "httpRetry");
        this.param = param;
        this.httpParser = httpParser;
        this.httpRetry = httpRetry;
    }

    @Override // com.taptap.sdk.kit.internal.http.call.ITapHttpCall
    /* renamed from: enqueueResult-gIAlu-s */
    public Object mo13enqueueResultgIAlus(long j, Continuation<? super Result<? extends DataBean>> continuation) {
        return ITapHttpCall.DefaultImpls.m15enqueueResultgIAlus(this, j, continuation);
    }

    @Override // com.taptap.sdk.kit.internal.http.call.ITapHttpCall
    /* renamed from: executeResult-IoAF18A */
    public Object mo14executeResultIoAF18A(long j) {
        return ITapHttpCall.DefaultImpls.m17executeResultIoAF18A(this, j);
    }

    public final AbsTapHttpParam<?> getParam() {
        return this.param;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // com.taptap.sdk.kit.internal.http.call.ITapHttpCall
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object enqueue(long r9, kotlin.coroutines.Continuation<? super DataBean> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueue$1
            if (r0 == 0) goto L14
            r0 = r11
            com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueue$1 r0 = (com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueue$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueue$1 r0 = new com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueue$1
            r0.<init>(r8, r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r11)
            goto L67
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L35:
            java.lang.Object r9 = r0.L$0
            com.taptap.sdk.kit.internal.http.call.TapHttpCall r9 = (com.taptap.sdk.kit.internal.http.call.TapHttpCall) r9
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L3d
            goto L67
        L3d:
            r10 = move-exception
            goto L4f
        L3f:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L4d
            r0.label = r4     // Catch: java.lang.Throwable -> L4d
            java.lang.Object r11 = r8.enqueueInner(r9, r0)     // Catch: java.lang.Throwable -> L4d
            if (r11 != r1) goto L67
            return r1
        L4d:
            r10 = move-exception
            r9 = r8
        L4f:
            com.taptap.sdk.kit.internal.http.hanlder.ITapHttpRetry r11 = r9.httpRetry
            long r4 = r11.nextRetryMillis(r10)
            r6 = 0
            int r11 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r11 < 0) goto L68
            r10 = 0
            r0.L$0 = r10
            r0.label = r3
            java.lang.Object r11 = r9.enqueue(r4, r0)
            if (r11 != r1) goto L67
            return r1
        L67:
            return r11
        L68:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.http.call.TapHttpCall.enqueue(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.taptap.sdk.kit.internal.http.call.ITapHttpCall
    public DataBean execute(long delay) {
        try {
            return executeInner(delay);
        } catch (Throwable th) {
            long nextRetryMillis = this.httpRetry.nextRetryMillis(th);
            if (nextRetryMillis >= 0) {
                return execute(nextRetryMillis);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(15:1|(2:3|(13:5|6|(1:(1:(2:10|11)(2:13|14))(1:15))(3:35|(2:37|(1:39))|40)|16|17|18|19|(1:21)|22|(1:24)|25|(1:27)|(1:29)(1:11)))|41|6|(0)(0)|16|17|18|19|(0)|22|(0)|25|(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
    
        if (r10.isCompleted() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0081, code lost:
    
        r5 = kotlin.Result.INSTANCE;
        r10.resumeWith(kotlin.Result.m56constructorimpl(kotlin.ResultKt.createFailure(r3)));
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00d7 A[PHI: r10
  0x00d7: PHI (r10v7 java.lang.Object) = (r10v6 java.lang.Object), (r10v1 java.lang.Object) binds: [B:28:0x00d4, B:10:0x0029] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r3v11, types: [T, com.taptap.sdk.okhttp3.Call] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object enqueueInner(long r8, kotlin.coroutines.Continuation<? super DataBean> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$1
            if (r0 == 0) goto L14
            r0 = r10
            com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$1 r0 = (com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$1 r0 = new com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$1
            r0.<init>(r7, r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r8 = r0.L$0
            com.taptap.sdk.kit.internal.http.call.TapHttpCall r8 = (com.taptap.sdk.kit.internal.http.call.TapHttpCall) r8
            kotlin.ResultKt.throwOnFailure(r10)
            goto Ld7
        L32:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3a:
            java.lang.Object r8 = r0.L$0
            com.taptap.sdk.kit.internal.http.call.TapHttpCall r8 = (com.taptap.sdk.kit.internal.http.call.TapHttpCall) r8
            kotlin.ResultKt.throwOnFailure(r10)
            goto L57
        L42:
            kotlin.ResultKt.throwOnFailure(r10)
            r5 = 0
            int r10 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r10 <= 0) goto L56
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r8, r0)
            if (r8 != r1) goto L56
            return r1
        L56:
            r8 = r7
        L57:
            r0.L$0 = r8
            r0.label = r3
            kotlinx.coroutines.CancellableContinuationImpl r9 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r10 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
            r9.<init>(r10, r4)
            r9.initCancellability()
            r10 = r9
            kotlinx.coroutines.CancellableContinuation r10 = (kotlinx.coroutines.CancellableContinuation) r10
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam r3 = r8.getParam()     // Catch: java.lang.Throwable -> L7a
            com.taptap.sdk.okhttp3.Call r3 = r3.newCall$tap_kit_release()     // Catch: java.lang.Throwable -> L7a
            r2.element = r3     // Catch: java.lang.Throwable -> L7a
            goto L91
        L7a:
            r3 = move-exception
            boolean r4 = r10.isCompleted()
            if (r4 != 0) goto L91
            r4 = r10
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            java.lang.Object r3 = kotlin.ResultKt.createFailure(r3)
            java.lang.Object r3 = kotlin.Result.m56constructorimpl(r3)
            r4.resumeWith(r3)
        L91:
            com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$2$1 r3 = new com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$2$1
            r3.<init>()
            kotlin.jvm.functions.Function1 r3 = (kotlin.jvm.functions.Function1) r3
            r10.invokeOnCancellation(r3)
            com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam r3 = r8.getParam()
            boolean r3 = r3.enableTechnicalLog$tap_kit_release()
            if (r3 == 0) goto Lb3
            com.taptap.sdk.kit.internal.utils.TapOpenlogHelper r3 = com.taptap.sdk.kit.internal.utils.TapOpenlogHelper.INSTANCE
            com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$2$2 r4 = new com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$2$2
            r4.<init>(r8)
            kotlin.jvm.functions.Function0 r4 = (kotlin.jvm.functions.Function0) r4
            java.lang.String r5 = "http_execute"
            r3.reportTechnicalLog(r5, r4)
        Lb3:
            long r3 = java.lang.System.currentTimeMillis()
            T r2 = r2.element
            com.taptap.sdk.okhttp3.Call r2 = (com.taptap.sdk.okhttp3.Call) r2
            if (r2 == 0) goto Lc7
            com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$2$3 r5 = new com.taptap.sdk.kit.internal.http.call.TapHttpCall$enqueueInner$2$3
            r5.<init>(r8)
            com.taptap.sdk.okhttp3.Callback r5 = (com.taptap.sdk.okhttp3.Callback) r5
            r2.enqueue(r5)
        Lc7:
            java.lang.Object r10 = r9.getResult()
            java.lang.Object r8 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r10 != r8) goto Ld4
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        Ld4:
            if (r10 != r1) goto Ld7
            return r1
        Ld7:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.http.call.TapHttpCall.enqueueInner(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onResultFailure(final Call call, final long startTime, final Throwable it, CancellableContinuation<? super DataBean> continuation) {
        if (this.param.enableTechnicalLog$tap_kit_release()) {
            final long currentTimeMillis = System.currentTimeMillis();
            TapOpenlogHelper.INSTANCE.reportTechnicalLog("http_performance", new Function0<Map<String, ? extends String>>(this) { // from class: com.taptap.sdk.kit.internal.http.call.TapHttpCall$onResultFailure$1
                final /* synthetic */ TapHttpCall<DataBean> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Map<String, ? extends String> invoke() {
                    Map<String, ? extends String> mutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("succeed", "0"), TuplesKt.to("module_name", this.this$0.getParam().moduleName$tap_kit_release()), TuplesKt.to("version_name", this.this$0.getParam().moduleVersion$tap_kit_release()), TuplesKt.to("url", call.request().url().toString()), TuplesKt.to(ActionUtils.METHOD, call.request().method()), TuplesKt.to(MetricsSQLiteCacheKt.METRICS_START_TIME, String.valueOf(startTime)), TuplesKt.to(MetricsSQLiteCacheKt.METRICS_END_TIME, String.valueOf(currentTimeMillis)));
                    Throwable th = it;
                    if (th instanceof TapHttpException.ServerError) {
                        mutableMapOf.put(TapErrorConstants.ERROR_SERVER_ERROR, ((TapHttpException.ServerError) th).getError().getError());
                        mutableMapOf.put("http_code", String.valueOf(((TapHttpException.ServerError) it).getHttpCode()));
                    } else if (th instanceof TapHttpException.NoServerError) {
                        mutableMapOf.put("http_code", String.valueOf(((TapHttpException.NoServerError) th).getHttpCode()));
                    } else if (th instanceof TapHttpException.ParseDataError) {
                        mutableMapOf.put("http_code", String.valueOf(((TapHttpException.ParseDataError) th).getHttpCode()));
                        mutableMapOf.put("local_error_msg", "ParseDataError");
                    } else if (th instanceof TapHttpException.UnknownError) {
                        mutableMapOf.put("local_error_msg", "UnknownError");
                    }
                    return mutableMapOf;
                }
            });
        }
        if (continuation.isCompleted()) {
            return;
        }
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m56constructorimpl(ResultKt.createFailure(it)));
    }

    private final DataBean executeInner(long delay) {
        if (delay > 0) {
            Thread.sleep(delay);
        }
        Response response = this.param.newCall$tap_kit_release().execute();
        ITapHttpParser<DataBean> iTapHttpParser = this.httpParser;
        Intrinsics.checkNotNullExpressionValue(response, "response");
        DataBean databean = (DataBean) iTapHttpParser.mo19parseIoAF18A(response);
        if (Result.m63isSuccessimpl(databean)) {
            return databean;
        }
        Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(databean);
        if (m59exceptionOrNullimpl != null) {
            throw m59exceptionOrNullimpl;
        }
        throw new TapHttpException.UnknownError();
    }
}
