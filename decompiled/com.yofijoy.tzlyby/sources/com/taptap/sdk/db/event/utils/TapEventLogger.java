package com.taptap.sdk.db.event.utils;

import android.content.Context;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.core.TapTapEvent;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.db.event.TapEventQueue;
import com.taptap.sdk.db.event.iap.InAppPurchaseManager;
import com.taptap.sdk.db.event.model.TapEventBean;
import com.taptap.sdk.db.event.model.TapEventType;
import com.taptap.sdk.db.event.playgame.TapPlayGameDurationTracker;
import com.taptap.sdk.initializer.api.option.TapTapSdkOptions;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.exception.TapSdkException;
import com.taptap.sdk.kit.internal.exception.TapSdkNotInitializedException;
import com.taptap.sdk.kit.internal.identifier.TapIdentifierUtil;
import java.util.Arrays;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* compiled from: TapEventLogger.kt */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u001c\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0010H\u0000¢\u0006\u0002\b%J\u001d\u0010&\u001a\u00020#2\u0006\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0001H\u0000¢\u0006\u0002\b)J\u001a\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u0010H\u0002J6\u0010/\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u00100\u001a\u0004\u0018\u00010\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u00101\u001a\u0002022\b\u0010.\u001a\u0004\u0018\u00010\u0010H\u0003J$\u00103\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00062\b\u0010.\u001a\u0004\u0018\u00010\u0010H\u0003J\r\u00104\u001a\u00020#H\u0000¢\u0006\u0002\b5J#\u00106\u001a\u00020#2\u0012\u00107\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000608\"\u00020\u0006H\u0000¢\u0006\u0004\b9\u0010:J\r\u0010;\u001a\u00020#H\u0000¢\u0006\u0002\b<J\r\u0010=\u001a\u00020#H\u0000¢\u0006\u0002\b>J\u0010\u0010?\u001a\u00020#2\u0006\u0010@\u001a\u00020\bH\u0002J\b\u0010A\u001a\u00020#H\u0002J\u001d\u0010B\u001a\u00020#2\u0006\u0010@\u001a\u00020\b2\u0006\u0010C\u001a\u00020\u0018H\u0001¢\u0006\u0002\bDJ\b\u0010E\u001a\u000202H\u0002J=\u0010F\u001a\u00020#2\u0006\u0010,\u001a\u00020-2\b\u00100\u001a\u0004\u0018\u00010\u00062\u0006\u00101\u001a\u0002022\b\u0010$\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006H\u0001¢\u0006\u0002\bGJ\u0017\u0010H\u001a\u00020#2\b\u0010I\u001a\u0004\u0018\u00010\u0012H\u0000¢\u0006\u0002\bJJ\u0015\u0010K\u001a\u00020#2\u0006\u0010L\u001a\u000202H\u0000¢\u0006\u0002\bMJ\u0015\u0010N\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u0006H\u0000¢\u0006\u0002\bOJ\b\u0010P\u001a\u00020#H\u0002J\r\u0010Q\u001a\u00020#H\u0000¢\u0006\u0002\bRJ\u0015\u0010Q\u001a\u00020#2\u0006\u0010S\u001a\u00020\u0006H\u0000¢\u0006\u0002\bRR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u001f\u001a\u0004\u0018\u00010\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u0006@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006T"}, d2 = {"Lcom/taptap/sdk/db/event/utils/TapEventLogger;", "", "()V", "LOCK", "Ljava/util/concurrent/locks/ReentrantLock;", "TAG", "", "applicationContext", "Landroid/content/Context;", "getApplicationContext$tap_db_release", "()Landroid/content/Context;", "setApplicationContext$tap_db_release", "(Landroid/content/Context;)V", "autoEventEnable", "Ljava/util/concurrent/atomic/AtomicBoolean;", "commonProperties", "Lorg/json/JSONObject;", "dynamicProperties", "Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;", "eventIndex", "", "generalParameter", "initialized", "sdkOptions", "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;", "getSdkOptions", "()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;", "setSdkOptions", "(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V", "sessionUUID", "<set-?>", "userId", "getUserId$tap_db_release", "()Ljava/lang/String;", "addCommonProperties", "", TapEventParamConstants.PARAM_PROPERTIES, "addCommonProperties$tap_db_release", "addCommonProperty", "key", ActionUtils.PAYMENT_AMOUNT, "addCommonProperty$tap_db_release", "buildDeviceEventBean", "Lcom/taptap/sdk/db/event/model/TapEventBean;", "eventType", "Lcom/taptap/sdk/db/event/model/TapEventType;", "eventProperties", "buildTrackEventBean", "eventName", "isAutomatically", "", "buildUserEventBean", "clearAllCommonProperties", "clearAllCommonProperties$tap_db_release", "clearCommonProperties", "keys", "", "clearCommonProperties$tap_db_release", "([Ljava/lang/String;)V", "clearUser", "clearUser$tap_db_release", "flush", "flush$tap_db_release", "initGeneralParameter", "context", "initSecretParameter", "initialize", "option", "initialize$tap_db_release", "isInitialized", "logEventInner", "logEventInner$tap_db_release", "registerDynamicProperties", "eventDynamicProperties", "registerDynamicProperties$tap_db_release", "setAutoEventEnable", "enable", "setAutoEventEnable$tap_db_release", "setUserId", "setUserId$tap_db_release", "validateInitialized", "validateUserId", "validateUserId$tap_db_release", "methodName", "tap-db_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapEventLogger {
    private static final String TAG = "TapEventLogger";
    public static Context applicationContext;
    private static final JSONObject commonProperties;
    private static TapTapEvent.TapEventDynamicProperties dynamicProperties;
    private static long eventIndex;
    public static TapTapSdkOptions sdkOptions;
    private static final String sessionUUID;
    private static String userId;
    public static final TapEventLogger INSTANCE = new TapEventLogger();
    private static final ReentrantLock LOCK = new ReentrantLock();
    private static final AtomicBoolean initialized = new AtomicBoolean(false);
    private static final AtomicBoolean autoEventEnable = new AtomicBoolean(false);
    private static final JSONObject generalParameter = new JSONObject();

    /* compiled from: TapEventLogger.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TapEventType.values().length];
            try {
                iArr[TapEventType.TRACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TapEventType.DEVICE_INITIALISE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TapEventType.DEVICE_UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TapEventType.DEVICE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TapEventType.USER_INITIALISE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TapEventType.USER_UPDATE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TapEventType.USER_ADD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final void logEventInner$tap_db_release(TapEventType eventType, String str, boolean z, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        logEventInner$tap_db_release$default(this, eventType, str, z, jSONObject, null, 16, null);
    }

    private TapEventLogger() {
    }

    static {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        sessionUUID = uuid;
        commonProperties = new JSONObject();
    }

    public final TapTapSdkOptions getSdkOptions() {
        TapTapSdkOptions tapTapSdkOptions = sdkOptions;
        if (tapTapSdkOptions != null) {
            return tapTapSdkOptions;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sdkOptions");
        return null;
    }

    public final void setSdkOptions(TapTapSdkOptions tapTapSdkOptions) {
        Intrinsics.checkNotNullParameter(tapTapSdkOptions, "<set-?>");
        sdkOptions = tapTapSdkOptions;
    }

    public final Context getApplicationContext$tap_db_release() {
        Context context = applicationContext;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("applicationContext");
        return null;
    }

    public final void setApplicationContext$tap_db_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        applicationContext = context;
    }

    public final String getUserId$tap_db_release() {
        return userId;
    }

    @JvmStatic
    public static final synchronized void initialize$tap_db_release(Context context, TapTapSdkOptions option) {
        synchronized (TapEventLogger.class) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(option, "option");
            if (initialized.compareAndSet(false, true)) {
                TapLogger.logi(TapLogger.TAG, "TapEvent initialize start");
                TapEventLogger tapEventLogger = INSTANCE;
                tapEventLogger.setApplicationContext$tap_db_release(context);
                tapEventLogger.setSdkOptions(option);
                tapEventLogger.initGeneralParameter(context);
                tapEventLogger.initSecretParameter();
                TapPlayGameDurationTracker.INSTANCE.initializeIfNotInitialized();
                TapLogger.logi(TapLogger.TAG, "TapEvent initialize end");
            }
        }
    }

    public static /* synthetic */ void logEventInner$tap_db_release$default(TapEventLogger tapEventLogger, TapEventType tapEventType, String str, boolean z, JSONObject jSONObject, String str2, int i, Object obj) {
        if ((i & 16) != 0) {
            str2 = userId;
        }
        tapEventLogger.logEventInner$tap_db_release(tapEventType, str, z, jSONObject, str2);
    }

    public final void logEventInner$tap_db_release(final TapEventType eventType, final String eventName, final boolean isAutomatically, final JSONObject properties, final String userId2) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        validateInitialized();
        TapLogger.logd(TAG, "logEventInner eventType = " + eventType + " , eventName = " + eventName + " , properties = \n" + properties);
        TapEventQueue.getSingleThreadExecutor$tap_db_release().execute(new Runnable() { // from class: com.taptap.sdk.db.event.utils.-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4
            @Override // java.lang.Runnable
            public final void run() {
                TapEventLogger.logEventInner$lambda$0(TapEventType.this, eventName, userId2, isAutomatically, properties);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0052 A[Catch: Exception -> 0x0080, TryCatch #0 {Exception -> 0x0080, blocks: (B:3:0x0005, B:4:0x000d, B:5:0x0010, B:6:0x007c, B:7:0x007f, B:9:0x0014, B:10:0x002d, B:12:0x0046, B:17:0x0052, B:18:0x0069, B:22:0x001b, B:23:0x0022), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void logEventInner$lambda$0(com.taptap.sdk.db.event.model.TapEventType r6, java.lang.String r7, java.lang.String r8, boolean r9, org.json.JSONObject r10) {
        /*
            java.lang.String r0 = "$eventType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            int[] r0 = com.taptap.sdk.db.event.utils.TapEventLogger.WhenMappings.$EnumSwitchMapping$0     // Catch: java.lang.Exception -> L80
            int r1 = r6.ordinal()     // Catch: java.lang.Exception -> L80
            r0 = r0[r1]     // Catch: java.lang.Exception -> L80
            switch(r0) {
                case 1: goto L22;
                case 2: goto L1b;
                case 3: goto L1b;
                case 4: goto L1b;
                case 5: goto L14;
                case 6: goto L14;
                case 7: goto L14;
                default: goto L10;
            }     // Catch: java.lang.Exception -> L80
        L10:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException     // Catch: java.lang.Exception -> L80
            goto L7c
        L14:
            com.taptap.sdk.db.event.utils.TapEventLogger r9 = com.taptap.sdk.db.event.utils.TapEventLogger.INSTANCE     // Catch: java.lang.Exception -> L80
            com.taptap.sdk.db.event.model.TapEventBean r8 = r9.buildUserEventBean(r6, r8, r10)     // Catch: java.lang.Exception -> L80
            goto L2d
        L1b:
            com.taptap.sdk.db.event.utils.TapEventLogger r8 = com.taptap.sdk.db.event.utils.TapEventLogger.INSTANCE     // Catch: java.lang.Exception -> L80
            com.taptap.sdk.db.event.model.TapEventBean r8 = r8.buildDeviceEventBean(r6, r10)     // Catch: java.lang.Exception -> L80
            goto L2d
        L22:
            com.taptap.sdk.db.event.utils.TapEventLogger r0 = com.taptap.sdk.db.event.utils.TapEventLogger.INSTANCE     // Catch: java.lang.Exception -> L80
            r1 = r6
            r2 = r7
            r3 = r8
            r4 = r9
            r5 = r10
            com.taptap.sdk.db.event.model.TapEventBean r8 = r0.buildTrackEventBean(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L80
        L2d:
            java.lang.String r9 = "TapTapSdk"
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L80
            r10.<init>()     // Catch: java.lang.Exception -> L80
            java.lang.String r0 = "TapEvent insert event waiting to be send , eventType["
            r10.append(r0)     // Catch: java.lang.Exception -> L80
            r10.append(r6)     // Catch: java.lang.Exception -> L80
            r6 = 93
            r10.append(r6)     // Catch: java.lang.Exception -> L80
            r0 = r7
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: java.lang.Exception -> L80
            if (r0 == 0) goto L4f
            int r0 = r0.length()     // Catch: java.lang.Exception -> L80
            if (r0 != 0) goto L4d
            goto L4f
        L4d:
            r0 = 0
            goto L50
        L4f:
            r0 = 1
        L50:
            if (r0 != 0) goto L67
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L80
            r0.<init>()     // Catch: java.lang.Exception -> L80
            java.lang.String r1 = " eventName["
            r0.append(r1)     // Catch: java.lang.Exception -> L80
            r0.append(r7)     // Catch: java.lang.Exception -> L80
            r0.append(r6)     // Catch: java.lang.Exception -> L80
            java.lang.String r6 = r0.toString()     // Catch: java.lang.Exception -> L80
            goto L69
        L67:
            java.lang.String r6 = ""
        L69:
            r10.append(r6)     // Catch: java.lang.Exception -> L80
            r6 = 46
            r10.append(r6)     // Catch: java.lang.Exception -> L80
            java.lang.String r6 = r10.toString()     // Catch: java.lang.Exception -> L80
            com.taptap.sdk.kit.internal.TapLogger.logi(r9, r6)     // Catch: java.lang.Exception -> L80
            com.taptap.sdk.db.event.TapEventQueue.add(r8)     // Catch: java.lang.Exception -> L80
            goto L8a
        L7c:
            r6.<init>()     // Catch: java.lang.Exception -> L80
            throw r6     // Catch: java.lang.Exception -> L80
        L80:
            r6 = move-exception
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            r7 = 2
            java.lang.String r8 = "TapEventLogger"
            r9 = 0
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r8, r9, r6, r7, r9)
        L8a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.db.event.utils.TapEventLogger.logEventInner$lambda$0(com.taptap.sdk.db.event.model.TapEventType, java.lang.String, java.lang.String, boolean, org.json.JSONObject):void");
    }

    public final void flush$tap_db_release() {
        validateInitialized();
        TapLogger.logd(TAG, "flush");
        TapEventQueue.INSTANCE.flush$tap_db_release();
    }

    public final void setAutoEventEnable$tap_db_release(boolean enable) {
        AtomicBoolean atomicBoolean = autoEventEnable;
        if (atomicBoolean.get() == enable) {
            return;
        }
        atomicBoolean.set(enable);
        TapLogger.logd(TAG, "autoEventEnable = " + enable);
        TapPlayGameDurationTracker.INSTANCE.setAutoEventEnable(enable);
        if (getSdkOptions().getRegion() == 1 && enable && getSdkOptions().getAutoIAPEventEnabled()) {
            TapLogger.logd(TAG, "InAppPurchaseManager setEnable true");
            InAppPurchaseManager.setEnableAutoLogging(true);
        }
        TapLogger.logi(TapLogger.TAG, "TapEvent setAutoEventEnable = " + enable);
    }

    public final void setUserId$tap_db_release(String userId2) {
        Intrinsics.checkNotNullParameter(userId2, "userId");
        validateInitialized();
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            TapLogger.logd(TAG, "setUserId = " + userId2);
            userId = userId2;
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void clearUser$tap_db_release() {
        validateInitialized();
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            TapLogger.logd(TAG, "clearUser");
            userId = null;
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void addCommonProperty$tap_db_release(String key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        validateInitialized();
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            TapLogger.logd(TAG, "addCommonProperty key = " + key + ", value = " + value);
            TapEventParameterKitKt.putProperty(commonProperties, key, value);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void addCommonProperties$tap_db_release(JSONObject properties) {
        validateInitialized();
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            TapLogger.logd(TAG, "addCommonProperties = \n" + properties);
            TapCoreKit.INSTANCE.filterProperties("addCommonProperties Error", properties);
            TapEventParameterKitKt.putProperties(commonProperties, properties, true);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void clearCommonProperties$tap_db_release(String... keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        validateInitialized();
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            TapLogger.logd(TAG, "clearCommonProperty = " + CollectionsKt.listOf(Arrays.copyOf(keys, keys.length)));
            for (String str : keys) {
                commonProperties.remove(str);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void clearAllCommonProperties$tap_db_release() {
        validateInitialized();
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            TapLogger.logd(TAG, "clearAllCommonProperties");
            Iterator<String> keys = commonProperties.keys();
            Intrinsics.checkNotNullExpressionValue(keys, "keys");
            while (keys.hasNext()) {
                keys.next();
                keys.remove();
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void registerDynamicProperties$tap_db_release(TapTapEvent.TapEventDynamicProperties eventDynamicProperties) {
        validateInitialized();
        ReentrantLock reentrantLock = LOCK;
        reentrantLock.lock();
        try {
            TapLogger.logd(TAG, "registerDynamicProperties");
            dynamicProperties = eventDynamicProperties;
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    private final void initGeneralParameter(Context context) {
        TapEventParameterKit tapEventParameterKit = TapEventParameterKit.INSTANCE;
        JSONObject jSONObject = generalParameter;
        tapEventParameterKit.fillingGeneralParameter(context, jSONObject);
        TapLogger.logd(TAG, "init generalParameter = \n" + jSONObject);
    }

    private final void initSecretParameter() {
        int region = getSdkOptions().getRegion();
        if (region == 0) {
            TapIdentifierUtil.INSTANCE.queryOAID(new Function1<String, Unit>() { // from class: com.taptap.sdk.db.event.utils.TapEventLogger$initSecretParameter$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String str) {
                    TapLogger.logd("TapEventLogger", "TapOAIDUtil.queryOAID = " + str);
                }
            });
        } else {
            if (region != 1) {
                return;
            }
            TapIdentifierUtil.INSTANCE.queryGAID(new Function1<TapIdentifierUtil.GAID, Unit>() { // from class: com.taptap.sdk.db.event.utils.TapEventLogger$initSecretParameter$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TapIdentifierUtil.GAID gaid) {
                    invoke2(gaid);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TapIdentifierUtil.GAID gaid) {
                    TapLogger.logd("TapEventLogger", "TapGAIDUtil.queryGAID = " + gaid);
                }
            });
        }
    }

    private final TapEventBean buildUserEventBean(TapEventType eventType, String userId2, JSONObject eventProperties) {
        TapCoreKit.assertIsNotMainThread();
        JSONObject jSONObject = new JSONObject();
        TapEventParameterKitKt.putProperty(jSONObject, "type", eventType.getType());
        TapEventParameterKitKt.putProperty(jSONObject, "client_id", getSdkOptions().getClientId());
        TapEventParameterKitKt.putProperty(jSONObject, "user_id", userId2);
        JSONObject obtainJSONObject = TapEventParameterKitKt.obtainJSONObject(jSONObject, TapEventParamConstants.PARAM_PROPERTIES);
        TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_SDK_VERSION, "4.5.4");
        TapCoreKit.INSTANCE.filterProperties("UserEvent[" + eventType + "] Properties Error", eventProperties);
        TapEventParameterKitKt.putProperties(obtainJSONObject, eventProperties, true);
        return new TapEventBean(eventType.getType(), null, jSONObject);
    }

    private final TapEventBean buildDeviceEventBean(TapEventType eventType, JSONObject eventProperties) {
        TapCoreKit.assertIsNotMainThread();
        JSONObject jSONObject = new JSONObject();
        TapEventParameterKitKt.putProperty(jSONObject, "type", eventType.getType());
        TapEventParameterKitKt.putProperty(jSONObject, "client_id", getSdkOptions().getClientId());
        TapEventParameterKitKt.putProperty(jSONObject, TapEventParamConstants.PARAM_DEVICE_ID, TapIdentifierUtil.INSTANCE.getDeviceId(getApplicationContext$tap_db_release()));
        JSONObject obtainJSONObject = TapEventParameterKitKt.obtainJSONObject(jSONObject, TapEventParamConstants.PARAM_PROPERTIES);
        TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_SDK_VERSION, "4.5.4");
        TapCoreKit.INSTANCE.filterProperties("DeviceEvent[" + eventType + "] Properties Error", eventProperties);
        TapEventParameterKitKt.putProperties(obtainJSONObject, eventProperties, true);
        return new TapEventBean(eventType.getType(), null, jSONObject);
    }

    private final TapEventBean buildTrackEventBean(TapEventType eventType, String eventName, String userId2, boolean isAutomatically, JSONObject eventProperties) {
        TapCoreKit.assertIsNotMainThread();
        TapCoreKit.assertEventName(eventName);
        JSONObject jSONObject = new JSONObject();
        TapEventParameterKitKt.putProperty(jSONObject, "type", eventType.getType());
        TapEventParameterKitKt.putProperty(jSONObject, "name", eventName);
        TapEventParameterKitKt.putProperty(jSONObject, "client_id", getSdkOptions().getClientId());
        TapEventParameterKitKt.putProperty(jSONObject, TapEventParamConstants.PARAM_DEVICE_ID, TapIdentifierUtil.INSTANCE.getDeviceId(getApplicationContext$tap_db_release()));
        TapEventParameterKitKt.putProperty(jSONObject, "user_id", userId2);
        JSONObject obtainJSONObject = TapEventParameterKitKt.obtainJSONObject(jSONObject, TapEventParamConstants.PARAM_PROPERTIES);
        TapEventParameterKitKt.putProperties$default(obtainJSONObject, generalParameter, false, 2, null);
        String queryGID = TapIdentifierUtil.INSTANCE.queryGID();
        if (queryGID == null) {
            queryGID = "";
        }
        TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_GID, queryGID);
        int region = getSdkOptions().getRegion();
        if (region == 0) {
            TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_OAID, TapIdentifierUtil.INSTANCE.getOAID());
        } else if (region == 1) {
            TapIdentifierUtil.GAID gaid = TapIdentifierUtil.INSTANCE.getGAID();
            TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_DEVICE_ID2, gaid != null ? gaid.getAndroidAdvertiserIdValue() : null);
        }
        TapEventParameterKitKt.putProperty(obtainJSONObject, "open_id", TapIdentifierUtil.INSTANCE.getOpenId());
        TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_ANDROID_ID, TapIdentifierUtil.getAndroidID(getApplicationContext$tap_db_release()));
        TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_T_LOG_ID, UUID.randomUUID().toString());
        TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_SESSION_UUID, sessionUUID);
        TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
        long j = eventIndex + 1;
        eventIndex = j;
        TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_EVENT_INDEX, Long.valueOf(j));
        if (isAutomatically) {
            TapEventParameterKitKt.putProperty(obtainJSONObject, TapEventParamConstants.PARAM_SUB_IS_AUTOMATICALLY_LOG, true);
        }
        JSONObject jSONObject2 = new JSONObject();
        TapEventParameterKitKt.putProperties(jSONObject2, commonProperties, true);
        TapTapEvent.TapEventDynamicProperties tapEventDynamicProperties = dynamicProperties;
        JSONObject dynamicProperties2 = tapEventDynamicProperties != null ? tapEventDynamicProperties.getDynamicProperties() : null;
        TapCoreKit.INSTANCE.filterProperties("Event[" + eventName + "] dynamicProperties Error", dynamicProperties2);
        TapEventParameterKitKt.putProperties(jSONObject2, dynamicProperties2, true);
        TapCoreKit.INSTANCE.filterProperties("Event[" + eventName + "] Properties Error", eventProperties);
        TapEventParameterKitKt.putProperties(jSONObject2, eventProperties, true);
        if (getSdkOptions().getOverrideBuiltInParameters()) {
            TapEventParameterKitKt.putProperties(obtainJSONObject, jSONObject2, true);
        } else {
            TapEventParameterKitKt.putProperties(obtainJSONObject, jSONObject2, false);
        }
        return new TapEventBean(eventType.getType(), eventName, jSONObject);
    }

    private final void validateInitialized() {
        if (!isInitialized()) {
            throw new TapSdkNotInitializedException("The TapEvent has not been initialized successfully, Please call TapTapSdk.init to initialize before calling.");
        }
    }

    private final boolean isInitialized() {
        return initialized.get();
    }

    public final void validateUserId$tap_db_release() {
        String str = userId;
        if (str == null || str.length() == 0) {
            throw new TapSdkException("TapTapEvent setUser method not called, please call setUser method first");
        }
    }

    public final void validateUserId$tap_db_release(String methodName) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        String str = userId;
        if (str == null || str.length() == 0) {
            throw new TapSdkException(methodName + " method called error, TapEvent.setUser method not called, please call setUser method first.");
        }
    }
}
