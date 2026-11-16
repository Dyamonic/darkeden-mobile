package com.taptap.sdk.kit.internal.enginebridge;

import android.app.Activity;
import androidx.core.app.NotificationCompat;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.enginebridge.command.Command;
import com.taptap.sdk.kit.internal.enginebridge.command.CommandExecutor;
import com.taptap.sdk.kit.internal.enginebridge.exception.EngineBridgeException;
import com.taptap.sdk.kit.internal.enginebridge.internal.BridgeHolder;
import com.taptap.sdk.kit.internal.enginebridge.internal.EngineBridgeReflector;
import com.taptap.sdk.kit.internal.extensions.GameEngineExtKt;
import com.taptap.sdk.kit.internal.json.TapJson;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;

/* compiled from: EngineBridge.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u000eH\u0002J\u001a\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0002\b\u0011J \u0010\u0012\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\u00142\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0011\u0010\u0017\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0086 J\u001a\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0002J \u0010\u001d\u001a\u00020\u00072\u000e\u0010\u001e\u001a\n\u0012\u0006\b\u0001\u0012\u00020 0\u001f2\u0006\u0010!\u001a\u00020 H\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;", "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridge;", "()V", "activityRef", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "execCommand", "", "command", "", "callback", "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;", "execCommandAsync", "execCommandAsyncInternal", "Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;", "execCommandInternal", "getCurrentActivity", "getCurrentActivity$tap_kit_release", "handleResult", "result", "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;", "init", "activity", "nativeOnResult", "processUnityEngineCommand", "cmdStr", "processUnityEngineCommandAsync", "processUnrealEngineCommand", "processUnrealEngineCommandAsync", "registerService", "serviceClz", "Ljava/lang/Class;", "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;", NotificationCompat.CATEGORY_SERVICE, "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class EngineBridge implements IEngineBridge {
    public static final EngineBridge INSTANCE = new EngineBridge();
    private static WeakReference<Activity> activityRef;

    public final native synchronized void nativeOnResult(String command) throws EngineBridgeException;

    private EngineBridge() {
    }

    public final Activity getCurrentActivity$tap_kit_release() {
        WeakReference<Activity> weakReference = activityRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // com.taptap.sdk.kit.internal.enginebridge.IEngineBridge
    public void init(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        activityRef = new WeakReference<>(activity);
    }

    @Override // com.taptap.sdk.kit.internal.enginebridge.IEngineBridge
    public void execCommand(String command, EngineBridgeCallback callback) {
        Intrinsics.checkNotNullParameter(command, "command");
        if (GameEngineExtKt.isUnrealEngine()) {
            processUnrealEngineCommand(command);
        } else {
            if (!GameEngineExtKt.isUnityEngine()) {
                throw new EngineBridgeException("unknown engine");
            }
            processUnityEngineCommand(command, callback);
        }
    }

    @Override // com.taptap.sdk.kit.internal.enginebridge.IEngineBridge
    public String execCommandAsync(String command) {
        Intrinsics.checkNotNullParameter(command, "command");
        if (GameEngineExtKt.isUnrealEngine()) {
            return processUnrealEngineCommandAsync(command);
        }
        if (GameEngineExtKt.isUnityEngine()) {
            return processUnityEngineCommandAsync(command);
        }
        throw new EngineBridgeException("unknown engine");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0060 A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #0 {all -> 0x007d, blocks: (B:3:0x0017, B:5:0x0023, B:10:0x005b, B:14:0x0060, B:22:0x0031, B:25:0x0052), top: B:2:0x0017, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void processUnityEngineCommand(java.lang.String r11, com.taptap.sdk.kit.internal.enginebridge.EngineBridgeCallback r12) {
        /*
            r10 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "processUnityEngineCommand: "
            r0.append(r1)
            r0.append(r11)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "TAP_ENGINE_BRIDGE"
            com.taptap.sdk.kit.internal.TapLogger.logi(r1, r0)
            r0 = 0
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L7d
            r2 = r10
            com.taptap.sdk.kit.internal.enginebridge.EngineBridge r2 = (com.taptap.sdk.kit.internal.enginebridge.EngineBridge) r2     // Catch: java.lang.Throwable -> L7d
            com.taptap.sdk.kit.internal.json.TapJson r3 = com.taptap.sdk.kit.internal.json.TapJson.INSTANCE     // Catch: java.lang.Throwable -> L7d
            r4 = r11
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.Throwable -> L7d
            if (r4 == 0) goto L2c
            int r4 = r4.length()     // Catch: java.lang.Throwable -> L7d
            if (r4 != 0) goto L2a
            goto L2c
        L2a:
            r4 = 0
            goto L2d
        L2c:
            r4 = 1
        L2d:
            if (r4 == 0) goto L31
        L2f:
            r3 = r0
            goto L5b
        L31:
            kotlinx.serialization.json.Json r3 = r3.getJson()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L7d
            kotlinx.serialization.StringFormat r3 = (kotlinx.serialization.StringFormat) r3     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L7d
            kotlinx.serialization.modules.SerializersModule r4 = r3.getSerializersModule()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L7d
            java.lang.Class<com.taptap.sdk.kit.internal.enginebridge.command.Command> r5 = com.taptap.sdk.kit.internal.enginebridge.command.Command.class
            kotlin.reflect.KType r5 = kotlin.jvm.internal.Reflection.typeOf(r5)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L7d
            kotlinx.serialization.KSerializer r4 = kotlinx.serialization.SerializersKt.serializer(r4, r5)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L7d
            java.lang.String r5 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4, r5)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L7d
            kotlinx.serialization.DeserializationStrategy r4 = (kotlinx.serialization.DeserializationStrategy) r4     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L7d
            java.lang.Object r3 = r3.decodeFromString(r4, r11)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L7d
            goto L5b
        L51:
            r3 = move-exception
            java.lang.String r4 = "TapJson"
            java.lang.Throwable r3 = (java.lang.Throwable) r3     // Catch: java.lang.Throwable -> L7d
            r5 = 2
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r4, r0, r3, r5, r0)     // Catch: java.lang.Throwable -> L7d
            goto L2f
        L5b:
            com.taptap.sdk.kit.internal.enginebridge.command.Command r3 = (com.taptap.sdk.kit.internal.enginebridge.command.Command) r3     // Catch: java.lang.Throwable -> L7d
            if (r3 != 0) goto L60
            return
        L60:
            kotlinx.coroutines.CoroutineScope r4 = kotlinx.coroutines.CoroutineScopeKt.MainScope()     // Catch: java.lang.Throwable -> L7d
            kotlinx.coroutines.MainCoroutineDispatcher r5 = kotlinx.coroutines.Dispatchers.getMain()     // Catch: java.lang.Throwable -> L7d
            kotlin.coroutines.CoroutineContext r5 = (kotlin.coroutines.CoroutineContext) r5     // Catch: java.lang.Throwable -> L7d
            r6 = 0
            com.taptap.sdk.kit.internal.enginebridge.EngineBridge$processUnityEngineCommand$1$1 r7 = new com.taptap.sdk.kit.internal.enginebridge.EngineBridge$processUnityEngineCommand$1$1     // Catch: java.lang.Throwable -> L7d
            r7.<init>(r2, r3, r12, r0)     // Catch: java.lang.Throwable -> L7d
            kotlin.jvm.functions.Function2 r7 = (kotlin.jvm.functions.Function2) r7     // Catch: java.lang.Throwable -> L7d
            r8 = 2
            r9 = 0
            kotlinx.coroutines.Job r12 = kotlinx.coroutines.BuildersKt.launch$default(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r12 = kotlin.Result.m56constructorimpl(r12)     // Catch: java.lang.Throwable -> L7d
            goto L88
        L7d:
            r12 = move-exception
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            java.lang.Object r12 = kotlin.ResultKt.createFailure(r12)
            java.lang.Object r12 = kotlin.Result.m56constructorimpl(r12)
        L88:
            java.lang.Throwable r12 = kotlin.Result.m59exceptionOrNullimpl(r12)
            if (r12 == 0) goto Laf
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "execUnityCommand failed: cmd="
            r2.append(r3)
            r2.append(r11)
            java.lang.String r11 = ", cause="
            r2.append(r11)
            java.lang.String r11 = r12.getMessage()
            r2.append(r11)
            java.lang.String r11 = r2.toString()
            r12 = 4
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r1, r11, r0, r12, r0)
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.enginebridge.EngineBridge.processUnityEngineCommand(java.lang.String, com.taptap.sdk.kit.internal.enginebridge.EngineBridgeCallback):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0062 A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #0 {all -> 0x0067, blocks: (B:3:0x0019, B:5:0x0025, B:10:0x005d, B:14:0x0062, B:18:0x0033, B:21:0x0054), top: B:2:0x0019, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String processUnityEngineCommandAsync(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.String r0 = ""
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "processUnityEngineCommandAsync: "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "TAP_ENGINE_BRIDGE"
            com.taptap.sdk.kit.internal.TapLogger.logi(r2, r1)
            r1 = 0
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L67
            r3 = r7
            com.taptap.sdk.kit.internal.enginebridge.EngineBridge r3 = (com.taptap.sdk.kit.internal.enginebridge.EngineBridge) r3     // Catch: java.lang.Throwable -> L67
            com.taptap.sdk.kit.internal.json.TapJson r4 = com.taptap.sdk.kit.internal.json.TapJson.INSTANCE     // Catch: java.lang.Throwable -> L67
            r5 = r8
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.Throwable -> L67
            if (r5 == 0) goto L2e
            int r5 = r5.length()     // Catch: java.lang.Throwable -> L67
            if (r5 != 0) goto L2c
            goto L2e
        L2c:
            r5 = 0
            goto L2f
        L2e:
            r5 = 1
        L2f:
            if (r5 == 0) goto L33
        L31:
            r4 = r1
            goto L5d
        L33:
            kotlinx.serialization.json.Json r4 = r4.getJson()     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            kotlinx.serialization.StringFormat r4 = (kotlinx.serialization.StringFormat) r4     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            kotlinx.serialization.modules.SerializersModule r5 = r4.getSerializersModule()     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            java.lang.Class<com.taptap.sdk.kit.internal.enginebridge.command.Command> r6 = com.taptap.sdk.kit.internal.enginebridge.command.Command.class
            kotlin.reflect.KType r6 = kotlin.jvm.internal.Reflection.typeOf(r6)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            kotlinx.serialization.KSerializer r5 = kotlinx.serialization.SerializersKt.serializer(r5, r6)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            java.lang.String r6 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r6)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            kotlinx.serialization.DeserializationStrategy r5 = (kotlinx.serialization.DeserializationStrategy) r5     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            java.lang.Object r4 = r4.decodeFromString(r5, r8)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            goto L5d
        L53:
            r4 = move-exception
            java.lang.String r5 = "TapJson"
            java.lang.Throwable r4 = (java.lang.Throwable) r4     // Catch: java.lang.Throwable -> L67
            r6 = 2
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r5, r1, r4, r6, r1)     // Catch: java.lang.Throwable -> L67
            goto L31
        L5d:
            com.taptap.sdk.kit.internal.enginebridge.command.Command r4 = (com.taptap.sdk.kit.internal.enginebridge.command.Command) r4     // Catch: java.lang.Throwable -> L67
            if (r4 != 0) goto L62
            return r0
        L62:
            java.lang.String r8 = r3.execCommandAsyncInternal(r4)     // Catch: java.lang.Throwable -> L67
            return r8
        L67:
            r3 = move-exception
            kotlin.Result$Companion r4 = kotlin.Result.INSTANCE
            java.lang.Object r3 = kotlin.ResultKt.createFailure(r3)
            java.lang.Object r3 = kotlin.Result.m56constructorimpl(r3)
            java.lang.Throwable r3 = kotlin.Result.m59exceptionOrNullimpl(r3)
            if (r3 == 0) goto L99
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "execUnityCommand failed: cmd="
            r4.append(r5)
            r4.append(r8)
            java.lang.String r8 = ", cause="
            r4.append(r8)
            java.lang.String r8 = r3.getMessage()
            r4.append(r8)
            java.lang.String r8 = r4.toString()
            r3 = 4
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r2, r8, r1, r3, r1)
        L99:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.enginebridge.EngineBridge.processUnityEngineCommandAsync(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0064 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0065 A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #1 {all -> 0x007d, blocks: (B:3:0x0017, B:5:0x0028, B:10:0x0060, B:14:0x0065, B:22:0x0036, B:25:0x0057), top: B:2:0x0017, inners: #0 }] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.taptap.sdk.kit.internal.enginebridge.EngineBridge$processUnrealEngineCommand$1$callback$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void processUnrealEngineCommand(java.lang.String r12) {
        /*
            r11 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "processUnrealEngineCommand: "
            r0.append(r1)
            r0.append(r12)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "TAP_ENGINE_BRIDGE"
            com.taptap.sdk.kit.internal.TapLogger.logi(r1, r0)
            r0 = 0
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L7d
            r2 = r11
            com.taptap.sdk.kit.internal.enginebridge.EngineBridge r2 = (com.taptap.sdk.kit.internal.enginebridge.EngineBridge) r2     // Catch: java.lang.Throwable -> L7d
            com.taptap.sdk.kit.internal.enginebridge.EngineBridge$processUnrealEngineCommand$1$callback$1 r3 = new com.taptap.sdk.kit.internal.enginebridge.EngineBridge$processUnrealEngineCommand$1$callback$1     // Catch: java.lang.Throwable -> L7d
            r3.<init>()     // Catch: java.lang.Throwable -> L7d
            com.taptap.sdk.kit.internal.json.TapJson r4 = com.taptap.sdk.kit.internal.json.TapJson.INSTANCE     // Catch: java.lang.Throwable -> L7d
            r5 = r12
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.Throwable -> L7d
            if (r5 == 0) goto L31
            int r5 = r5.length()     // Catch: java.lang.Throwable -> L7d
            if (r5 != 0) goto L2f
            goto L31
        L2f:
            r5 = 0
            goto L32
        L31:
            r5 = 1
        L32:
            if (r5 == 0) goto L36
        L34:
            r4 = r0
            goto L60
        L36:
            kotlinx.serialization.json.Json r4 = r4.getJson()     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L7d
            kotlinx.serialization.StringFormat r4 = (kotlinx.serialization.StringFormat) r4     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L7d
            kotlinx.serialization.modules.SerializersModule r5 = r4.getSerializersModule()     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L7d
            java.lang.Class<com.taptap.sdk.kit.internal.enginebridge.command.Command> r6 = com.taptap.sdk.kit.internal.enginebridge.command.Command.class
            kotlin.reflect.KType r6 = kotlin.jvm.internal.Reflection.typeOf(r6)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L7d
            kotlinx.serialization.KSerializer r5 = kotlinx.serialization.SerializersKt.serializer(r5, r6)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L7d
            java.lang.String r6 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r6)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L7d
            kotlinx.serialization.DeserializationStrategy r5 = (kotlinx.serialization.DeserializationStrategy) r5     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L7d
            java.lang.Object r4 = r4.decodeFromString(r5, r12)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L7d
            goto L60
        L56:
            r4 = move-exception
            java.lang.String r5 = "TapJson"
            java.lang.Throwable r4 = (java.lang.Throwable) r4     // Catch: java.lang.Throwable -> L7d
            r6 = 2
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r5, r0, r4, r6, r0)     // Catch: java.lang.Throwable -> L7d
            goto L34
        L60:
            com.taptap.sdk.kit.internal.enginebridge.command.Command r4 = (com.taptap.sdk.kit.internal.enginebridge.command.Command) r4     // Catch: java.lang.Throwable -> L7d
            if (r4 != 0) goto L65
            return
        L65:
            kotlinx.coroutines.CoroutineScope r5 = kotlinx.coroutines.CoroutineScopeKt.MainScope()     // Catch: java.lang.Throwable -> L7d
            r6 = 0
            r7 = 0
            com.taptap.sdk.kit.internal.enginebridge.EngineBridge$processUnrealEngineCommand$1$1 r8 = new com.taptap.sdk.kit.internal.enginebridge.EngineBridge$processUnrealEngineCommand$1$1     // Catch: java.lang.Throwable -> L7d
            r8.<init>(r2, r4, r3, r0)     // Catch: java.lang.Throwable -> L7d
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8     // Catch: java.lang.Throwable -> L7d
            r9 = 3
            r10 = 0
            kotlinx.coroutines.Job r2 = kotlinx.coroutines.BuildersKt.launch$default(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r2 = kotlin.Result.m56constructorimpl(r2)     // Catch: java.lang.Throwable -> L7d
            goto L88
        L7d:
            r2 = move-exception
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            java.lang.Object r2 = kotlin.ResultKt.createFailure(r2)
            java.lang.Object r2 = kotlin.Result.m56constructorimpl(r2)
        L88:
            java.lang.Throwable r2 = kotlin.Result.m59exceptionOrNullimpl(r2)
            if (r2 == 0) goto Laf
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "execUnrealCommand failed: cmd="
            r3.append(r4)
            r3.append(r12)
            java.lang.String r12 = ", cause="
            r3.append(r12)
            java.lang.String r12 = r2.getMessage()
            r3.append(r12)
            java.lang.String r12 = r3.toString()
            r2 = 4
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r1, r12, r0, r2, r0)
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.enginebridge.EngineBridge.processUnrealEngineCommand(java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0062 A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #0 {all -> 0x0067, blocks: (B:3:0x0019, B:5:0x0025, B:10:0x005d, B:14:0x0062, B:18:0x0033, B:21:0x0054), top: B:2:0x0019, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String processUnrealEngineCommandAsync(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.String r0 = ""
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "processUnrealEngineCommandAsync: "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "TAP_ENGINE_BRIDGE"
            com.taptap.sdk.kit.internal.TapLogger.logi(r2, r1)
            r1 = 0
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L67
            r3 = r7
            com.taptap.sdk.kit.internal.enginebridge.EngineBridge r3 = (com.taptap.sdk.kit.internal.enginebridge.EngineBridge) r3     // Catch: java.lang.Throwable -> L67
            com.taptap.sdk.kit.internal.json.TapJson r4 = com.taptap.sdk.kit.internal.json.TapJson.INSTANCE     // Catch: java.lang.Throwable -> L67
            r5 = r8
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.Throwable -> L67
            if (r5 == 0) goto L2e
            int r5 = r5.length()     // Catch: java.lang.Throwable -> L67
            if (r5 != 0) goto L2c
            goto L2e
        L2c:
            r5 = 0
            goto L2f
        L2e:
            r5 = 1
        L2f:
            if (r5 == 0) goto L33
        L31:
            r4 = r1
            goto L5d
        L33:
            kotlinx.serialization.json.Json r4 = r4.getJson()     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            kotlinx.serialization.StringFormat r4 = (kotlinx.serialization.StringFormat) r4     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            kotlinx.serialization.modules.SerializersModule r5 = r4.getSerializersModule()     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            java.lang.Class<com.taptap.sdk.kit.internal.enginebridge.command.Command> r6 = com.taptap.sdk.kit.internal.enginebridge.command.Command.class
            kotlin.reflect.KType r6 = kotlin.jvm.internal.Reflection.typeOf(r6)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            kotlinx.serialization.KSerializer r5 = kotlinx.serialization.SerializersKt.serializer(r5, r6)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            java.lang.String r6 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r6)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            kotlinx.serialization.DeserializationStrategy r5 = (kotlinx.serialization.DeserializationStrategy) r5     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            java.lang.Object r4 = r4.decodeFromString(r5, r8)     // Catch: java.lang.Exception -> L53 java.lang.Throwable -> L67
            goto L5d
        L53:
            r4 = move-exception
            java.lang.String r5 = "TapJson"
            java.lang.Throwable r4 = (java.lang.Throwable) r4     // Catch: java.lang.Throwable -> L67
            r6 = 2
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r5, r1, r4, r6, r1)     // Catch: java.lang.Throwable -> L67
            goto L31
        L5d:
            com.taptap.sdk.kit.internal.enginebridge.command.Command r4 = (com.taptap.sdk.kit.internal.enginebridge.command.Command) r4     // Catch: java.lang.Throwable -> L67
            if (r4 != 0) goto L62
            return r0
        L62:
            java.lang.String r8 = r3.execCommandAsyncInternal(r4)     // Catch: java.lang.Throwable -> L67
            return r8
        L67:
            r3 = move-exception
            kotlin.Result$Companion r4 = kotlin.Result.INSTANCE
            java.lang.Object r3 = kotlin.ResultKt.createFailure(r3)
            java.lang.Object r3 = kotlin.Result.m56constructorimpl(r3)
            java.lang.Throwable r3 = kotlin.Result.m59exceptionOrNullimpl(r3)
            if (r3 == 0) goto L99
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "execUnrealCommand failed: cmd="
            r4.append(r5)
            r4.append(r8)
            java.lang.String r8 = ", cause="
            r4.append(r8)
            java.lang.String r8 = r3.getMessage()
            r4.append(r8)
            java.lang.String r8 = r4.toString()
            r3 = 4
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r2, r8, r1, r3, r1)
        L99:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.enginebridge.EngineBridge.processUnrealEngineCommandAsync(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleResult(EngineBridgeResult<String> result, EngineBridgeCallback callback) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getIO(), null, new EngineBridge$handleResult$1(result, callback, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void execCommandInternal(final Command command, final EngineBridgeCallback callback) {
        Object m56constructorimpl;
        TapLogger.logi(EngineBridgeKt.ENGINE_BRIDGE_LOGGER_TAG, "execCommandInternal: " + command);
        try {
            Result.Companion companion = Result.INSTANCE;
            final EngineBridge engineBridge = this;
            new CommandExecutor().execute(command, new EngineBridgeCallback() { // from class: com.taptap.sdk.kit.internal.enginebridge.EngineBridge$execCommandInternal$1$1
                @Override // com.taptap.sdk.kit.internal.enginebridge.EngineBridgeCallback
                public void onResult(String jsonString) {
                    Intrinsics.checkNotNullParameter(jsonString, "jsonString");
                    TapLogger.logi(EngineBridgeKt.ENGINE_BRIDGE_LOGGER_TAG, "execCommandInternal success: cmd=" + Command.this + ", result=" + jsonString);
                    engineBridge.handleResult(new EngineBridgeResult(0, "Success", jsonString), callback);
                }
            });
            m56constructorimpl = Result.m56constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m56constructorimpl = Result.m56constructorimpl(ResultKt.createFailure(th));
        }
        Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(m56constructorimpl);
        if (m59exceptionOrNullimpl != null) {
            TapLogger.loge(EngineBridgeKt.ENGINE_BRIDGE_LOGGER_TAG, "execCommandInternal failed: cmd=" + command + ", cause=" + m59exceptionOrNullimpl.getMessage(), m59exceptionOrNullimpl);
            INSTANCE.handleResult(new EngineBridgeResult<>(-1, "Failed", (Object) null, 4, (DefaultConstructorMarker) null), callback);
        }
    }

    private final String execCommandAsyncInternal(Command command) {
        Object m56constructorimpl;
        Object executeAsync;
        TapLogger.logi(EngineBridgeKt.ENGINE_BRIDGE_LOGGER_TAG, "execCommandAsyncInternal: " + command);
        try {
            Result.Companion companion = Result.INSTANCE;
            EngineBridge engineBridge = this;
            executeAsync = new CommandExecutor().executeAsync(command);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m56constructorimpl = Result.m56constructorimpl(ResultKt.createFailure(th));
        }
        if (executeAsync instanceof String) {
            return (String) executeAsync;
        }
        if (Intrinsics.areEqual(executeAsync, Boolean.valueOf(executeAsync == null))) {
            return "";
        }
        String str = null;
        try {
            Json json = TapJson.INSTANCE.getJson();
            KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.nullableTypeOf(Object.class));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            str = json.encodeToString(serializer, executeAsync);
        } catch (Exception e) {
            TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
        }
        m56constructorimpl = Result.m56constructorimpl(str);
        Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(m56constructorimpl);
        if (m59exceptionOrNullimpl != null) {
            TapLogger.loge(EngineBridgeKt.ENGINE_BRIDGE_LOGGER_TAG, "execCommandAsyncInternal failed: cmd=" + command + ", cause=" + m59exceptionOrNullimpl.getMessage(), m59exceptionOrNullimpl);
        }
        return "";
    }

    @Override // com.taptap.sdk.kit.internal.enginebridge.IEngineBridge
    public void registerService(Class<? extends IEngineBridgeService> serviceClz, IEngineBridgeService service) {
        Intrinsics.checkNotNullParameter(serviceClz, "serviceClz");
        Intrinsics.checkNotNullParameter(service, "service");
        if (EngineBridgeReflector.INSTANCE.checkServiceValid(serviceClz) && serviceClz.isInterface()) {
            BridgeHolder.INSTANCE.registerService(serviceClz, service);
        } else {
            if (EngineBridgeReflector.INSTANCE.getValidService(serviceClz) != null) {
                BridgeHolder.INSTANCE.registerService(serviceClz, service);
                return;
            }
            throw new EngineBridgeException("注册IBridgeService出现错误");
        }
    }
}
