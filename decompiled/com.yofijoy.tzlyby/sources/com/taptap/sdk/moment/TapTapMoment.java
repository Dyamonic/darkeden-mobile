package com.taptap.sdk.moment;

import androidx.core.app.NotificationCompat;
import com.taptap.sdk.initializer.api.check.TapSdkChecker;
import com.taptap.sdk.kit.internal.extensions.StringExtKt;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.moment.constant.Constant;
import com.taptap.sdk.moment.legacy.entity.NoticeInfo;
import com.taptap.sdk.moment.legacy.utils.SimpleLocalBroadcastManager;
import com.taptap.sdk.moment.legacy.widget.dialog.Alert;
import com.taptap.sdk.moment.model.PublishMetaData;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* compiled from: TapTapMoment.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/taptap/sdk/moment/TapTapMoment;", "", "()V", "Companion", "TapTapMomentCallback", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapTapMoment {
    private static final long PERIOD = 60000;
    private static boolean lastSuccess;
    private static long lastTime;
    private static NoticeInfo noticeInfo;
    private static TapTapMomentCallback tapMomentCallback;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final MutableSharedFlow<Unit> event = SharedFlowKt.MutableSharedFlow$default(0, 1, null, 5, null);

    /* compiled from: TapTapMoment.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;", "", "onCallback", "", "code", "", "msg", "", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface TapTapMomentCallback {
        void onCallback(int code, String msg);
    }

    @JvmStatic
    public static final void close() {
        INSTANCE.close();
    }

    @JvmStatic
    public static final void closeWithTitle(String str, String str2) {
        INSTANCE.closeWithTitle(str, str2);
    }

    @JvmStatic
    public static final void fetchNotification() {
        INSTANCE.fetchNotification();
    }

    @JvmStatic
    public static final void open() {
        INSTANCE.open();
    }

    @JvmStatic
    public static final void openScene(String str) {
        INSTANCE.openScene(str);
    }

    @JvmStatic
    public static final void publish(PublishMetaData publishMetaData) {
        INSTANCE.publish(publishMetaData);
    }

    @JvmStatic
    public static final void setCallback(TapTapMomentCallback tapTapMomentCallback) {
        INSTANCE.setCallback(tapTapMomentCallback);
    }

    private TapTapMoment() {
    }

    /* compiled from: TapTapMoment.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0013\u001a\u00020\u0007H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u00020\u0007H\u0007J\u001c\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0007J\b\u0010\u001a\u001a\u00020\u0007H\u0007J\b\u0010\u001b\u001a\u00020\u0007H\u0007J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0018H\u0007J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {"Lcom/taptap/sdk/moment/TapTapMoment$Companion;", "", "()V", "PERIOD", "", NotificationCompat.CATEGORY_EVENT, "Lkotlinx/coroutines/flow/MutableSharedFlow;", "", "lastSuccess", "", "lastTime", "noticeInfo", "Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;", "tapMomentCallback", "Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;", "getTapMomentCallback$tap_moment_release", "()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;", "setTapMomentCallback$tap_moment_release", "(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V", "_fetchNotification", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "closeWithTitle", "title", "", "content", "fetchNotification", "open", "openScene", "sceneId", "publish", "publishMetaData", "Lcom/taptap/sdk/moment/model/PublishMetaData;", "setCallback", "callback", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TapTapMomentCallback getTapMomentCallback$tap_moment_release() {
            return TapTapMoment.tapMomentCallback;
        }

        public final void setTapMomentCallback$tap_moment_release(TapTapMomentCallback tapTapMomentCallback) {
            TapTapMoment.tapMomentCallback = tapTapMomentCallback;
        }

        /* compiled from: TapTapMoment.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "com.taptap.sdk.moment.TapTapMoment$Companion$1", f = "TapTapMoment.kt", i = {}, l = {73}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.taptap.sdk.moment.TapTapMoment$Companion$1, reason: invalid class name */
        /* loaded from: classes.dex */
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;

            AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TapTapMoment.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "it", "emit", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1}, xi = 48)
            /* renamed from: com.taptap.sdk.moment.TapTapMoment$Companion$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C00371<T> implements FlowCollector {
                public static final C00371<T> INSTANCE = new C00371<>();

                C00371() {
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                    return emit((Unit) obj, (Continuation<? super Unit>) continuation);
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(kotlin.Unit r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
                    /*
                        r9 = this;
                        boolean r10 = r11 instanceof com.taptap.sdk.moment.TapTapMoment$Companion$1$1$emit$1
                        if (r10 == 0) goto L14
                        r10 = r11
                        com.taptap.sdk.moment.TapTapMoment$Companion$1$1$emit$1 r10 = (com.taptap.sdk.moment.TapTapMoment$Companion$1$1$emit$1) r10
                        int r0 = r10.label
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L14
                        int r11 = r10.label
                        int r11 = r11 - r1
                        r10.label = r11
                        goto L19
                    L14:
                        com.taptap.sdk.moment.TapTapMoment$Companion$1$1$emit$1 r10 = new com.taptap.sdk.moment.TapTapMoment$Companion$1$1$emit$1
                        r10.<init>(r9, r11)
                    L19:
                        java.lang.Object r11 = r10.result
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r1 = r10.label
                        r2 = 1
                        if (r1 == 0) goto L34
                        if (r1 != r2) goto L2c
                        long r0 = r10.J$0
                        kotlin.ResultKt.throwOnFailure(r11)
                        goto L8f
                    L2c:
                        java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                        java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                        r10.<init>(r11)
                        throw r10
                    L34:
                        kotlin.ResultKt.throwOnFailure(r11)
                        long r3 = java.lang.System.currentTimeMillis()
                        long r5 = com.taptap.sdk.moment.TapTapMoment.access$getLastTime$cp()
                        long r5 = r3 - r5
                        r7 = 60000(0xea60, double:2.9644E-319)
                        int r11 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                        if (r11 >= 0) goto L81
                        boolean r10 = com.taptap.sdk.moment.TapTapMoment.access$getLastSuccess$cp()
                        r10 = r10 ^ r2
                        if (r10 != r2) goto L5f
                        com.taptap.sdk.moment.TapTapMoment$Companion r10 = com.taptap.sdk.moment.TapTapMoment.INSTANCE
                        com.taptap.sdk.moment.TapTapMoment$TapTapMomentCallback r10 = r10.getTapMomentCallback$tap_moment_release()
                        if (r10 == 0) goto L94
                        r11 = 20100(0x4e84, float:2.8166E-41)
                        java.lang.String r0 = "no data"
                        r10.onCallback(r11, r0)
                        goto L94
                    L5f:
                        com.taptap.sdk.moment.TapTapMoment$Companion r10 = com.taptap.sdk.moment.TapTapMoment.INSTANCE
                        com.taptap.sdk.moment.TapTapMoment$TapTapMomentCallback r10 = r10.getTapMomentCallback$tap_moment_release()
                        if (r10 == 0) goto L94
                        r11 = 20000(0x4e20, float:2.8026E-41)
                        com.taptap.sdk.moment.legacy.entity.NoticeInfo r0 = com.taptap.sdk.moment.TapTapMoment.access$getNoticeInfo$cp()
                        if (r0 == 0) goto L78
                        int r0 = r0.getUnreadCount()
                        java.lang.Integer r0 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r0)
                        goto L79
                    L78:
                        r0 = 0
                    L79:
                        java.lang.String r0 = java.lang.String.valueOf(r0)
                        r10.onCallback(r11, r0)
                        goto L94
                    L81:
                        com.taptap.sdk.moment.TapTapMoment$Companion r11 = com.taptap.sdk.moment.TapTapMoment.INSTANCE
                        r10.J$0 = r3
                        r10.label = r2
                        java.lang.Object r10 = com.taptap.sdk.moment.TapTapMoment.Companion.access$_fetchNotification(r11, r10)
                        if (r10 != r0) goto L8e
                        return r0
                    L8e:
                        r0 = r3
                    L8f:
                        com.taptap.sdk.moment.TapTapMoment$Companion r10 = com.taptap.sdk.moment.TapTapMoment.INSTANCE
                        com.taptap.sdk.moment.TapTapMoment.access$setLastTime$cp(r0)
                    L94:
                        kotlin.Unit r10 = kotlin.Unit.INSTANCE
                        return r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.moment.TapTapMoment.Companion.AnonymousClass1.C00371.emit(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (TapTapMoment.event.collect(C00371.INSTANCE, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                throw new KotlinNothingValueException();
            }
        }

        @JvmStatic
        public final void openScene(String sceneId) {
            Intrinsics.checkNotNullParameter(sceneId, "sceneId");
            if (TapSdkChecker.INSTANCE.checkInitialize()) {
                String generateSessionId = StringExtKt.generateSessionId();
                MomentTracker.INSTANCE.trackStart$tap_moment_release("openScene", generateSessionId, MapsKt.mapOf(TuplesKt.to(Constant.PAGE_SCENE_ID_EXTRA_PARAM, sceneId)));
                Moment.openTapMoment$default(Moment.INSTANCE, 4, null, Moment.INSTANCE.idToJSONObject(sceneId), 2, null);
                MomentTracker.INSTANCE.trackSuccess$tap_moment_release("openScene", generateSessionId, MapsKt.mapOf(TuplesKt.to(Constant.PAGE_SCENE_ID_EXTRA_PARAM, sceneId)));
            }
        }

        @JvmStatic
        public final void open() {
            if (TapSdkChecker.INSTANCE.checkInitialize()) {
                String generateSessionId = StringExtKt.generateSessionId();
                MomentTracker.trackStart$tap_moment_release$default(MomentTracker.INSTANCE, "open", generateSessionId, null, 4, null);
                Moment.openTapMoment$default(Moment.INSTANCE, 0, null, null, 2, null);
                MomentTracker.trackSuccess$tap_moment_release$default(MomentTracker.INSTANCE, "open", generateSessionId, null, 4, null);
            }
        }

        @JvmStatic
        public final void publish(PublishMetaData publishMetaData) {
            Intrinsics.checkNotNullParameter(publishMetaData, "publishMetaData");
            if (TapSdkChecker.INSTANCE.checkInitialize()) {
                TapMomentInternal.INSTANCE.setCurrentPublishSessionId(StringExtKt.generateSessionId());
                MomentTracker.trackStart$tap_moment_release$default(MomentTracker.INSTANCE, "publish", TapMomentInternal.INSTANCE.getCurrentPublishSessionId(), null, 4, null);
                Moment.openTapMoment$default(Moment.INSTANCE, publishMetaData.getVideoPaths().isEmpty() ^ true ? 2 : 1, Moment.INSTANCE.videoMetaDataToJSONObject(publishMetaData), null, 4, null);
            }
        }

        @JvmStatic
        public final void close() {
            if (TapSdkChecker.INSTANCE.checkInitialize()) {
                String generateSessionId = StringExtKt.generateSessionId();
                MomentTracker.trackStart$tap_moment_release$default(MomentTracker.INSTANCE, "close", generateSessionId, null, 4, null);
                Moment.INSTANCE.closeMomentWithConfirmDialog();
                MomentTracker.trackSuccess$tap_moment_release$default(MomentTracker.INSTANCE, "close", generateSessionId, null, 4, null);
            }
        }

        @JvmStatic
        public final void closeWithTitle(final String title, final String content) {
            if (TapSdkChecker.INSTANCE.checkInitialize()) {
                final String generateSessionId = StringExtKt.generateSessionId();
                MomentTracker.trackStart$tap_moment_release$default(MomentTracker.INSTANCE, "close", generateSessionId, null, 4, null);
                Moment.INSTANCE.closeMomentWithConfirmDialog(new Function0<Alert>() { // from class: com.taptap.sdk.moment.TapTapMoment$Companion$closeWithTitle$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final Alert invoke() {
                        String str = title;
                        if (str == null) {
                            str = TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_title);
                        }
                        String str2 = str;
                        String str3 = content;
                        if (str3 == null) {
                            str3 = TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_content);
                        }
                        String localizedString = TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_confirm);
                        String localizedString2 = TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_cancel);
                        final String str4 = generateSessionId;
                        Alert newInstance = Alert.newInstance(str2, str3, localizedString, localizedString2, false, new Alert.ClickStub() { // from class: com.taptap.sdk.moment.TapTapMoment$Companion$closeWithTitle$1.1
                            @Override // com.taptap.sdk.moment.legacy.widget.dialog.Alert.ClickStub, com.taptap.sdk.moment.legacy.widget.dialog.Alert.OnClickListener
                            public void onPositive() {
                                SimpleLocalBroadcastManager.getInstance().sendBroadcast(Constant.TAP_MOMENT_CLOSE_CONFIRM_ACTION);
                                Moment.INSTANCE.closeMomentWithConfirmDialog();
                                MomentTracker.trackSuccess$tap_moment_release$default(MomentTracker.INSTANCE, "close", str4, null, 4, null);
                            }

                            @Override // com.taptap.sdk.moment.legacy.widget.dialog.Alert.ClickStub, com.taptap.sdk.moment.legacy.widget.dialog.Alert.OnClickListener
                            public void onNegative() {
                                SimpleLocalBroadcastManager.getInstance().sendBroadcast(Constant.TAP_MOMENT_CLOSE_CANCEL_ACTION);
                                MomentTracker.trackCancel$tap_moment_release$default(MomentTracker.INSTANCE, "close", str4, null, 4, null);
                            }
                        });
                        Intrinsics.checkNotNullExpressionValue(newInstance, "sessionId = generateSess…      }\n                )");
                        return newInstance;
                    }
                });
            }
        }

        @JvmStatic
        public final void fetchNotification() {
            if (TapSdkChecker.INSTANCE.checkInitialize()) {
                TapTapMoment.event.tryEmit(Unit.INSTANCE);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:14:0x005a A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:11:0x002a, B:12:0x004f, B:14:0x005a, B:15:0x0067), top: B:10:0x002a }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object _fetchNotification(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
            /*
                r5 = this;
                boolean r0 = r6 instanceof com.taptap.sdk.moment.TapTapMoment$Companion$_fetchNotification$1
                if (r0 == 0) goto L14
                r0 = r6
                com.taptap.sdk.moment.TapTapMoment$Companion$_fetchNotification$1 r0 = (com.taptap.sdk.moment.TapTapMoment$Companion$_fetchNotification$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r1 = r1 & r2
                if (r1 == 0) goto L14
                int r6 = r0.label
                int r6 = r6 - r2
                r0.label = r6
                goto L19
            L14:
                com.taptap.sdk.moment.TapTapMoment$Companion$_fetchNotification$1 r0 = new com.taptap.sdk.moment.TapTapMoment$Companion$_fetchNotification$1
                r0.<init>(r5, r6)
            L19:
                java.lang.Object r6 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3e
                if (r2 != r3) goto L36
                java.lang.Object r0 = r0.L$0
                com.taptap.sdk.moment.TapTapMoment$Companion r0 = (com.taptap.sdk.moment.TapTapMoment.Companion) r0
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L34
                kotlin.Result r6 = (kotlin.Result) r6     // Catch: java.lang.Throwable -> L34
                java.lang.Object r6 = r6.getValue()     // Catch: java.lang.Throwable -> L34
                goto L4f
            L34:
                r6 = move-exception
                goto L70
            L36:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L3e:
                kotlin.ResultKt.throwOnFailure(r6)
                com.taptap.sdk.moment.Moment r6 = com.taptap.sdk.moment.Moment.INSTANCE     // Catch: java.lang.Throwable -> L6e
                r0.L$0 = r5     // Catch: java.lang.Throwable -> L6e
                r0.label = r3     // Catch: java.lang.Throwable -> L6e
                java.lang.Object r6 = r6.m23getNoticeDataIoAF18A(r0)     // Catch: java.lang.Throwable -> L6e
                if (r6 != r1) goto L4e
                return r1
            L4e:
                r0 = r5
            L4f:
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L34
                com.taptap.sdk.moment.legacy.entity.NoticeInfo r6 = (com.taptap.sdk.moment.legacy.entity.NoticeInfo) r6     // Catch: java.lang.Throwable -> L34
                com.taptap.sdk.moment.TapTapMoment$TapTapMomentCallback r1 = r0.getTapMomentCallback$tap_moment_release()     // Catch: java.lang.Throwable -> L34
                if (r1 == 0) goto L67
                r2 = 20000(0x4e20, float:2.8026E-41)
                int r4 = r6.getUnreadCount()     // Catch: java.lang.Throwable -> L34
                java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L34
                r1.onCallback(r2, r4)     // Catch: java.lang.Throwable -> L34
            L67:
                com.taptap.sdk.moment.TapTapMoment.access$setNoticeInfo$cp(r6)     // Catch: java.lang.Throwable -> L34
                com.taptap.sdk.moment.TapTapMoment.access$setLastSuccess$cp(r3)     // Catch: java.lang.Throwable -> L34
                goto L83
            L6e:
                r6 = move-exception
                r0 = r5
            L70:
                com.taptap.sdk.moment.TapTapMoment$TapTapMomentCallback r0 = r0.getTapMomentCallback$tap_moment_release()
                if (r0 == 0) goto L7f
                r1 = 20100(0x4e84, float:2.8166E-41)
                java.lang.String r6 = r6.getMessage()
                r0.onCallback(r1, r6)
            L7f:
                r6 = 0
                com.taptap.sdk.moment.TapTapMoment.access$setLastSuccess$cp(r6)
            L83:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.moment.TapTapMoment.Companion._fetchNotification(kotlin.coroutines.Continuation):java.lang.Object");
        }

        @JvmStatic
        public final void setCallback(TapTapMomentCallback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (TapSdkChecker.INSTANCE.checkInitialize()) {
                setTapMomentCallback$tap_moment_release(callback);
            }
        }
    }

    static {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new Companion.AnonymousClass1(null), 3, null);
    }
}
