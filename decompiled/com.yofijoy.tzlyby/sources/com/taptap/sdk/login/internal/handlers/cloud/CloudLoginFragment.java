package com.taptap.sdk.login.internal.handlers.cloud;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.login.R;
import com.taptap.sdk.login.internal.LoginActivityImpl;
import com.taptap.sdk.login.internal.LoginManager;
import com.taptap.sdk.login.internal.bean.LoginRequest;
import com.taptap.sdk.login.internal.bean.LoginResponse;
import com.taptap.sdk.login.internal.handlers.cloud.CloudConfig;
import com.taptap.sdk.update.constants.LoggerConst;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;

/* compiled from: CloudLoginFragment.kt */
@Metadata(d1 = {"\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0004\u0018\u0000 '2\u00020\u0001:\u0001'B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010\"\u001a\u00020\u0015H\u0016J\b\u0010#\u001a\u00020\u0015H\u0002J\u001c\u0010$\u001a\u00020\u00152\b\u0010%\u001a\u0004\u0018\u00010\u001b2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010&\u001a\u00020\u0015H\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0010¨\u0006("}, d2 = {"Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;", "Landroid/app/Fragment;", "()V", "connection", "com/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1", "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;", "initializeMid", "", "loginRequestMid", "messenger", "Landroid/os/Messenger;", "replyMessenger", "request", "Lcom/taptap/sdk/login/internal/bean/LoginRequest;", "sdkLoginVersionArrayList", "", "[Ljava/lang/String;", "createMessage", "Landroid/os/Message;", "content", "handleInitializeFinishMessage", "", "messageObject", "Lkotlinx/serialization/json/JsonObject;", "handleLoginResponse", "handleReceiptMessage", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onFail", "onViewCreated", LoggerConst.ACTION_VIEW, "sendConfigInfoMessage", "Companion", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class CloudLoginFragment extends Fragment {
    private static final int MESSAGE_FROM_CLIENT = 10001;
    private static final String RES_INIT_MESSAGE = "initialize_finish";
    private static final String RES_MIDDLE_LAYER_INIT_FINISH = "middle_layer_init_finish";
    private static final String RES_RECEIPT_MESSAGE = "message_result";
    private static final String RES_TYPE_LOGIN = "login_taptap_finish";
    private CloudLoginFragment$connection$1 connection;
    private final String initializeMid;
    private final String loginRequestMid;
    private Messenger messenger;
    private final Messenger replyMessenger;
    private LoginRequest request;
    private final String[] sdkLoginVersionArrayList;

    /* JADX WARN: Type inference failed for: r0v6, types: [com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment$connection$1] */
    public CloudLoginFragment() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        this.loginRequestMid = uuid;
        String uuid2 = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid2, "randomUUID().toString()");
        this.initializeMid = uuid2;
        this.sdkLoginVersionArrayList = new String[]{"1.0"};
        this.connection = new ServiceConnection() { // from class: com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment$connection$1
            /* JADX WARN: Code restructure failed: missing block: B:7:0x0075, code lost:
            
                r8 = r7.this$0.messenger;
             */
            @Override // android.content.ServiceConnection
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onServiceConnected(android.content.ComponentName r8, android.os.IBinder r9) {
                /*
                    r7 = this;
                    com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment r8 = com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment.this
                    android.os.Messenger r0 = new android.os.Messenger
                    r0.<init>(r9)
                    com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment.access$setMessenger$p(r8, r0)
                    com.taptap.sdk.kit.internal.json.TapJson r8 = com.taptap.sdk.kit.internal.json.TapJson.INSTANCE
                    r9 = 2
                    kotlin.Pair[] r0 = new kotlin.Pair[r9]
                    java.lang.String r1 = "type"
                    java.lang.String r2 = "middle_layer_init"
                    kotlin.Pair r1 = kotlin.TuplesKt.to(r1, r2)
                    r2 = 0
                    r0[r2] = r1
                    com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment r1 = com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment.this
                    android.app.Activity r1 = r1.getActivity()
                    java.lang.String r1 = r1.getPackageName()
                    java.lang.String r2 = "package_name"
                    kotlin.Pair r1 = kotlin.TuplesKt.to(r2, r1)
                    r2 = 1
                    r0[r2] = r1
                    java.util.HashMap r0 = kotlin.collections.MapsKt.hashMapOf(r0)
                    r1 = 0
                    kotlinx.serialization.json.Json r8 = r8.getJson()     // Catch: java.lang.Exception -> L6a
                    kotlinx.serialization.StringFormat r8 = (kotlinx.serialization.StringFormat) r8     // Catch: java.lang.Exception -> L6a
                    kotlinx.serialization.modules.SerializersModule r2 = r8.getSerializersModule()     // Catch: java.lang.Exception -> L6a
                    java.lang.Class<java.util.HashMap> r3 = java.util.HashMap.class
                    kotlin.reflect.KTypeProjection$Companion r4 = kotlin.reflect.KTypeProjection.INSTANCE     // Catch: java.lang.Exception -> L6a
                    java.lang.Class<java.lang.String> r5 = java.lang.String.class
                    kotlin.reflect.KType r5 = kotlin.jvm.internal.Reflection.typeOf(r5)     // Catch: java.lang.Exception -> L6a
                    kotlin.reflect.KTypeProjection r4 = r4.invariant(r5)     // Catch: java.lang.Exception -> L6a
                    kotlin.reflect.KTypeProjection$Companion r5 = kotlin.reflect.KTypeProjection.INSTANCE     // Catch: java.lang.Exception -> L6a
                    java.lang.Class<java.lang.String> r6 = java.lang.String.class
                    kotlin.reflect.KType r6 = kotlin.jvm.internal.Reflection.typeOf(r6)     // Catch: java.lang.Exception -> L6a
                    kotlin.reflect.KTypeProjection r5 = r5.invariant(r6)     // Catch: java.lang.Exception -> L6a
                    kotlin.reflect.KType r3 = kotlin.jvm.internal.Reflection.typeOf(r3, r4, r5)     // Catch: java.lang.Exception -> L6a
                    kotlinx.serialization.KSerializer r2 = kotlinx.serialization.SerializersKt.serializer(r2, r3)     // Catch: java.lang.Exception -> L6a
                    java.lang.String r3 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r3)     // Catch: java.lang.Exception -> L6a
                    kotlinx.serialization.SerializationStrategy r2 = (kotlinx.serialization.SerializationStrategy) r2     // Catch: java.lang.Exception -> L6a
                    java.lang.String r1 = r8.encodeToString(r2, r0)     // Catch: java.lang.Exception -> L6a
                    goto L72
                L6a:
                    r8 = move-exception
                    java.lang.Throwable r8 = (java.lang.Throwable) r8
                    java.lang.String r0 = "TapJson"
                    com.taptap.sdk.kit.internal.TapLogger.loge$default(r0, r1, r8, r9, r1)
                L72:
                    if (r1 != 0) goto L75
                    return
                L75:
                    com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment r8 = com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment.this
                    android.os.Messenger r8 = com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment.access$getMessenger$p(r8)
                    if (r8 == 0) goto L86
                    com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment r9 = com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment.this
                    android.os.Message r9 = com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment.access$createMessage(r9, r1)
                    r8.send(r9)
                L86:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment$connection$1.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                CloudLoginFragment.this.onFail();
            }
        };
        this.replyMessenger = new Messenger(new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.taptap.sdk.login.internal.handlers.cloud.-$$Lambda$CloudLoginFragment$r6AAUr_8khZ2FIXGss681fMvZvI
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean replyMessenger$lambda$1;
                replyMessenger$lambda$1 = CloudLoginFragment.replyMessenger$lambda$1(CloudLoginFragment.this, message);
                return replyMessenger$lambda$1;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean replyMessenger$lambda$1(CloudLoginFragment this$0, Message it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        String string = it.getData().getString("message");
        if (string != null) {
            try {
                TapJson tapJson = TapJson.INSTANCE;
                Object obj = null;
                if (!(string.length() == 0)) {
                    try {
                        Json json = tapJson.getJson();
                        KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(JsonObject.class));
                        Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                        obj = json.decodeFromString(serializer, string);
                    } catch (Exception e) {
                        TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                    }
                }
                JsonObject jsonObject = (JsonObject) obj;
                if (jsonObject != null) {
                    String content = JsonElementKt.getJsonPrimitive((JsonElement) MapsKt.getValue(jsonObject, "type")).getContent();
                    switch (content.hashCode()) {
                        case -261317598:
                            if (!content.equals(RES_INIT_MESSAGE)) {
                                break;
                            } else {
                                this$0.handleInitializeFinishMessage(jsonObject);
                                break;
                            }
                        case 785605180:
                            if (!content.equals(RES_TYPE_LOGIN)) {
                                break;
                            } else {
                                this$0.handleLoginResponse(jsonObject);
                                break;
                            }
                        case 966459221:
                            if (!content.equals(RES_RECEIPT_MESSAGE)) {
                                break;
                            } else {
                                this$0.handleReceiptMessage(jsonObject);
                                break;
                            }
                        case 1761180810:
                            if (!content.equals(RES_MIDDLE_LAYER_INIT_FINISH)) {
                                break;
                            } else {
                                this$0.sendConfigInfoMessage();
                                break;
                            }
                    }
                } else {
                    this$0.onFail();
                }
            } catch (Exception unused) {
                this$0.onFail();
            }
        }
        return true;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(R.layout.activty_tap_login, container, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        LoginRequest loginRequest = (LoginRequest) getArguments().getParcelable("request");
        if (loginRequest == null) {
            loginRequest = savedInstanceState != null ? (LoginRequest) savedInstanceState.getParcelable("request") : null;
        }
        this.request = loginRequest;
        getActivity().bindService(CloudLoginHandler.INSTANCE.getIntent(), this.connection, 1);
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        getActivity().unbindService(this.connection);
    }

    private final void handleReceiptMessage(JsonObject messageObject) {
        try {
            TapJson tapJson = TapJson.INSTANCE;
            Object obj = null;
            try {
                if (messageObject != null) {
                    Json json = tapJson.getJson();
                    KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(CloudMessage.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(CloudGameReceiptData.class))));
                    Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                    obj = json.decodeFromJsonElement(serializer, messageObject);
                }
            } catch (Exception e) {
                TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
            }
            CloudMessage cloudMessage = (CloudMessage) obj;
            if (cloudMessage == null) {
                onFail();
                return;
            }
            CloudGameReceiptData cloudGameReceiptData = (CloudGameReceiptData) cloudMessage.getData();
            if (cloudGameReceiptData == null || cloudGameReceiptData.getSuccess()) {
                return;
            }
            if (Intrinsics.areEqual(cloudGameReceiptData.getId(), this.loginRequestMid) || Intrinsics.areEqual(cloudGameReceiptData.getId(), this.initializeMid)) {
                onFail();
            }
        } catch (Exception unused) {
            onFail();
        }
    }

    private final void handleLoginResponse(JsonObject messageObject) {
        try {
            TapJson tapJson = TapJson.INSTANCE;
            Object obj = null;
            try {
                if (messageObject != null) {
                    Json json = tapJson.getJson();
                    KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(CloudMessage.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(LoginResponse.class))));
                    Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                    obj = json.decodeFromJsonElement(serializer, messageObject);
                }
            } catch (Exception e) {
                TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
            }
            CloudMessage cloudMessage = (CloudMessage) obj;
            if (cloudMessage == null) {
                onFail();
                return;
            }
            LoginManager loginManager = LoginManager.INSTANCE;
            Activity activity = getActivity();
            Intrinsics.checkNotNullExpressionValue(activity, "activity");
            loginManager.handleLoginResponse(activity, this.request, (LoginResponse) cloudMessage.getData());
            getActivity().finish();
        } catch (Exception unused) {
            onFail();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0049 A[Catch: Exception -> 0x0108, TryCatch #1 {Exception -> 0x0108, blocks: (B:3:0x0006, B:9:0x0045, B:11:0x0049, B:14:0x004d, B:16:0x0053, B:19:0x006b, B:21:0x006f, B:24:0x0099, B:26:0x00c7, B:31:0x00f1, B:34:0x00e8, B:37:0x00fd, B:40:0x0104, B:45:0x003f, B:6:0x000a, B:42:0x0012, B:28:0x00c9), top: B:2:0x0006, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004d A[Catch: Exception -> 0x0108, TryCatch #1 {Exception -> 0x0108, blocks: (B:3:0x0006, B:9:0x0045, B:11:0x0049, B:14:0x004d, B:16:0x0053, B:19:0x006b, B:21:0x006f, B:24:0x0099, B:26:0x00c7, B:31:0x00f1, B:34:0x00e8, B:37:0x00fd, B:40:0x0104, B:45:0x003f, B:6:0x000a, B:42:0x0012, B:28:0x00c9), top: B:2:0x0006, inners: #0, #2 }] */
    /* JADX WARN: Type inference failed for: r0v18, types: [kotlin.Unit] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void handleInitializeFinishMessage(kotlinx.serialization.json.JsonObject r21) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.login.internal.handlers.cloud.CloudLoginFragment.handleInitializeFinishMessage(kotlinx.serialization.json.JsonObject):void");
    }

    private final void sendConfigInfoMessage() {
        String str;
        String trackInfo;
        String str2 = this.initializeMid;
        String packageName = getActivity().getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "activity.packageName");
        LoginRequest loginRequest = this.request;
        String str3 = "";
        if (loginRequest == null || (str = loginRequest.getInfo()) == null) {
            str = "";
        }
        LoginRequest loginRequest2 = this.request;
        if (loginRequest2 != null && (trackInfo = loginRequest2.getTrackInfo()) != null) {
            str3 = trackInfo;
        }
        CloudMessage cloudMessage = new CloudMessage("initialize", str2, new CloudConfig(packageName, str, str3, new CloudConfig.CPGNData(this.sdkLoginVersionArrayList)));
        Messenger messenger = this.messenger;
        if (messenger != null) {
            String str4 = null;
            try {
                Json json = TapJson.INSTANCE.getJson();
                KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(CloudMessage.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(CloudConfig.class))));
                Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                str4 = json.encodeToString(serializer, cloudMessage);
            } catch (Exception e) {
                TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
            }
            if (str4 == null) {
                return;
            }
            messenger.send(createMessage(str4));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Message createMessage(String content) {
        Message message = Message.obtain();
        message.what = 10001;
        Bundle bundle = new Bundle();
        bundle.putString("message", content);
        message.setData(bundle);
        message.replyTo = this.replyMessenger;
        Intrinsics.checkNotNullExpressionValue(message, "message");
        return message;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFail() {
        ComponentCallbacks2 activity = getActivity();
        LoginActivityImpl.TapLoginActivityCallback tapLoginActivityCallback = activity instanceof LoginActivityImpl.TapLoginActivityCallback ? (LoginActivityImpl.TapLoginActivityCallback) activity : null;
        if (tapLoginActivityCallback != null) {
            tapLoginActivityCallback.fallbackToWeb(this.request);
        }
    }
}
