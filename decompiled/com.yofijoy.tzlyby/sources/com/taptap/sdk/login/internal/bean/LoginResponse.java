package com.taptap.sdk.login.internal.bean;

import com.taptap.sdk.login.AccessToken;
import com.taptap.sdk.login.AccessToken$$serializer;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: LoginResponse.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 42\u00020\u0001:\u000234B_\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\n\u001a\u00020\u000b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fBI\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0010J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010%\u001a\u00020\u000bHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003JM\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010(\u001a\u00020\u000b2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\u0005HÖ\u0001J!\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202HÇ\u0001R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\u0017R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0012\u001a\u0004\b\u001b\u0010\u0017R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0012\u001a\u0004\b\u001d\u0010\u0017R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001e\u0010\u0012\u001a\u0004\b\u001f\u0010 ¨\u00065"}, d2 = {"Lcom/taptap/sdk/login/internal/bean/LoginResponse;", "", "seen1", "", BreakpointSQLiteKey.ID, "", "token", "Lcom/taptap/sdk/login/AccessToken;", "code", "errorMessage", "cancel", "", "serverUri", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getCancel$annotations", "()V", "getCancel", "()Z", "getCode$annotations", "getCode", "()Ljava/lang/String;", "getErrorMessage$annotations", "getErrorMessage", "getId$annotations", "getId", "getServerUri$annotations", "getServerUri", "getToken$annotations", "getToken", "()Lcom/taptap/sdk/login/AccessToken;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@Serializable
/* loaded from: classes.dex */
public final /* data */ class LoginResponse {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String RES_KEY_CANCEL = "com.taptap.sdk.response.cancel";
    public static final String RES_KEY_CODE = "com.taptap.sdk.response.code";
    public static final String RES_KEY_ERROR = "com.taptap.sdk.response.error";
    public static final String RES_KEY_SERVER_URI = "com.taptap.sdk.response.server_uri";
    public static final String RES_KEY_STATE = "com.taptap.sdk.response.state";
    public static final String RES_KEY_TOKEN = "com.taptap.sdk.response.token";
    public static final String RES_KEY_TOKEN_PARCELABLE = "com.taptap.sdk.response.token.parcel";
    private final boolean cancel;
    private final String code;
    private final String errorMessage;
    private final String id;
    private final String serverUri;
    private final AccessToken token;

    public LoginResponse() {
        this((String) null, (AccessToken) null, (String) null, (String) null, false, (String) null, 63, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ LoginResponse copy$default(LoginResponse loginResponse, String str, AccessToken accessToken, String str2, String str3, boolean z, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = loginResponse.id;
        }
        if ((i & 2) != 0) {
            accessToken = loginResponse.token;
        }
        AccessToken accessToken2 = accessToken;
        if ((i & 4) != 0) {
            str2 = loginResponse.code;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = loginResponse.errorMessage;
        }
        String str6 = str3;
        if ((i & 16) != 0) {
            z = loginResponse.cancel;
        }
        boolean z2 = z;
        if ((i & 32) != 0) {
            str4 = loginResponse.serverUri;
        }
        return loginResponse.copy(str, accessToken2, str5, str6, z2, str4);
    }

    @SerialName("cancel")
    public static /* synthetic */ void getCancel$annotations() {
    }

    @SerialName("code")
    public static /* synthetic */ void getCode$annotations() {
    }

    @SerialName("error_message")
    public static /* synthetic */ void getErrorMessage$annotations() {
    }

    @SerialName(WebLoginFragment.QUERY_KEY_ID)
    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName("server_uri")
    public static /* synthetic */ void getServerUri$annotations() {
    }

    @SerialName("token")
    public static /* synthetic */ void getToken$annotations() {
    }

    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component2, reason: from getter */
    public final AccessToken getToken() {
        return this.token;
    }

    /* renamed from: component3, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* renamed from: component4, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getCancel() {
        return this.cancel;
    }

    /* renamed from: component6, reason: from getter */
    public final String getServerUri() {
        return this.serverUri;
    }

    public final LoginResponse copy(String id, AccessToken token, String code, String errorMessage, boolean cancel, String serverUri) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new LoginResponse(id, token, code, errorMessage, cancel, serverUri);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LoginResponse)) {
            return false;
        }
        LoginResponse loginResponse = (LoginResponse) other;
        return Intrinsics.areEqual(this.id, loginResponse.id) && Intrinsics.areEqual(this.token, loginResponse.token) && Intrinsics.areEqual(this.code, loginResponse.code) && Intrinsics.areEqual(this.errorMessage, loginResponse.errorMessage) && this.cancel == loginResponse.cancel && Intrinsics.areEqual(this.serverUri, loginResponse.serverUri);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.id.hashCode() * 31;
        AccessToken accessToken = this.token;
        int hashCode2 = (hashCode + (accessToken == null ? 0 : accessToken.hashCode())) * 31;
        String str = this.code;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.errorMessage;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        boolean z = this.cancel;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode4 + i) * 31;
        String str3 = this.serverUri;
        return i2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "LoginResponse(id=" + this.id + ", token=" + this.token + ", code=" + this.code + ", errorMessage=" + this.errorMessage + ", cancel=" + this.cancel + ", serverUri=" + this.serverUri + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ LoginResponse(int i, @SerialName("state") String str, @SerialName("token") AccessToken accessToken, @SerialName("code") String str2, @SerialName("error_message") String str3, @SerialName("cancel") boolean z, @SerialName("server_uri") String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, LoginResponse$$serializer.INSTANCE.getDescriptor());
        }
        this.id = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.token = null;
        } else {
            this.token = accessToken;
        }
        if ((i & 4) == 0) {
            this.code = null;
        } else {
            this.code = str2;
        }
        if ((i & 8) == 0) {
            this.errorMessage = null;
        } else {
            this.errorMessage = str3;
        }
        if ((i & 16) == 0) {
            this.cancel = false;
        } else {
            this.cancel = z;
        }
        if ((i & 32) == 0) {
            this.serverUri = null;
        } else {
            this.serverUri = str4;
        }
    }

    public LoginResponse(String id, AccessToken accessToken, String str, String str2, boolean z, String str3) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.token = accessToken;
        this.code = str;
        this.errorMessage = str2;
        this.cancel = z;
        this.serverUri = str3;
    }

    @JvmStatic
    public static final void write$Self(LoginResponse self, CompositeEncoder output, SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.id, "")) {
            output.encodeStringElement(serialDesc, 0, self.id);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.token != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, AccessToken$$serializer.INSTANCE, self.token);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.code != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.code);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.errorMessage != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.errorMessage);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.cancel) {
            output.encodeBooleanElement(serialDesc, 4, self.cancel);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.serverUri != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.serverUri);
        }
    }

    public /* synthetic */ LoginResponse(String str, AccessToken accessToken, String str2, String str3, boolean z, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : accessToken, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? false : z, (i & 32) == 0 ? str4 : null);
    }

    public final String getId() {
        return this.id;
    }

    public final AccessToken getToken() {
        return this.token;
    }

    public final String getCode() {
        return this.code;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final boolean getCancel() {
        return this.cancel;
    }

    public final String getServerUri() {
        return this.serverUri;
    }

    /* compiled from: LoginResponse.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u0010HÆ\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;", "", "()V", "RES_KEY_CANCEL", "", "RES_KEY_CODE", "RES_KEY_ERROR", "RES_KEY_SERVER_URI", "RES_KEY_STATE", "RES_KEY_TOKEN", "RES_KEY_TOKEN_PARCELABLE", "parseFromBundle", "Lcom/taptap/sdk/login/internal/bean/LoginResponse;", "data", "Landroid/os/Bundle;", "serializer", "Lkotlinx/serialization/KSerializer;", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<LoginResponse> serializer() {
            return LoginResponse$$serializer.INSTANCE;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0054, code lost:
        
            if (r0 == null) goto L19;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.taptap.sdk.login.internal.bean.LoginResponse parseFromBundle(android.os.Bundle r10) {
            /*
                r9 = this;
                java.lang.String r0 = "data"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                java.lang.String r0 = "com.taptap.sdk.response.state"
                java.lang.String r2 = r10.getString(r0)
                r0 = 0
                if (r2 != 0) goto Lf
                return r0
            Lf:
                java.lang.String r1 = "com.taptap.sdk.response.token"
                java.lang.String r1 = r10.getString(r1)
                r3 = 0
                if (r1 == 0) goto L56
                com.taptap.sdk.kit.internal.json.TapJson r4 = com.taptap.sdk.kit.internal.json.TapJson.INSTANCE
                r5 = r1
                java.lang.CharSequence r5 = (java.lang.CharSequence) r5
                int r5 = r5.length()
                if (r5 != 0) goto L25
                r5 = 1
                goto L26
            L25:
                r5 = r3
            L26:
                if (r5 == 0) goto L29
                goto L52
            L29:
                kotlinx.serialization.json.Json r4 = r4.getJson()     // Catch: java.lang.Exception -> L49
                kotlinx.serialization.StringFormat r4 = (kotlinx.serialization.StringFormat) r4     // Catch: java.lang.Exception -> L49
                kotlinx.serialization.modules.SerializersModule r5 = r4.getSerializersModule()     // Catch: java.lang.Exception -> L49
                java.lang.Class<com.taptap.sdk.login.AccessToken> r6 = com.taptap.sdk.login.AccessToken.class
                kotlin.reflect.KType r6 = kotlin.jvm.internal.Reflection.typeOf(r6)     // Catch: java.lang.Exception -> L49
                kotlinx.serialization.KSerializer r5 = kotlinx.serialization.SerializersKt.serializer(r5, r6)     // Catch: java.lang.Exception -> L49
                java.lang.String r6 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r6)     // Catch: java.lang.Exception -> L49
                kotlinx.serialization.DeserializationStrategy r5 = (kotlinx.serialization.DeserializationStrategy) r5     // Catch: java.lang.Exception -> L49
                java.lang.Object r0 = r4.decodeFromString(r5, r1)     // Catch: java.lang.Exception -> L49
                goto L52
            L49:
                r1 = move-exception
                java.lang.Throwable r1 = (java.lang.Throwable) r1
                r4 = 2
                java.lang.String r5 = "TapJson"
                com.taptap.sdk.kit.internal.TapLogger.loge$default(r5, r0, r1, r4, r0)
            L52:
                com.taptap.sdk.login.AccessToken r0 = (com.taptap.sdk.login.AccessToken) r0
                if (r0 != 0) goto L5e
            L56:
                java.lang.String r0 = "com.taptap.sdk.response.token.parcel"
                android.os.Parcelable r0 = r10.getParcelable(r0)
                com.taptap.sdk.login.AccessToken r0 = (com.taptap.sdk.login.AccessToken) r0
            L5e:
                com.taptap.sdk.login.internal.bean.LoginResponse r8 = new com.taptap.sdk.login.internal.bean.LoginResponse
                java.lang.String r1 = "com.taptap.sdk.response.code"
                java.lang.String r4 = r10.getString(r1)
                java.lang.String r1 = "com.taptap.sdk.response.error"
                java.lang.String r5 = r10.getString(r1)
                java.lang.String r1 = "com.taptap.sdk.response.cancel"
                boolean r6 = r10.getBoolean(r1, r3)
                java.lang.String r1 = "com.taptap.sdk.response.server_uri"
                java.lang.String r7 = r10.getString(r1)
                r1 = r8
                r3 = r0
                r1.<init>(r2, r3, r4, r5, r6, r7)
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.login.internal.bean.LoginResponse.Companion.parseFromBundle(android.os.Bundle):com.taptap.sdk.login.internal.bean.LoginResponse");
        }
    }
}
