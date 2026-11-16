package com.taptap.sdk.initializer.api.option;

import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.initializer.api.model.Language;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* compiled from: TapTapSdkOptions.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b+\b\u0086\b\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\n\u0012\b\b\u0002\u0010\u0013\u001a\u00020\n\u0012\b\b\u0002\u0010\u0014\u001a\u00020\n¢\u0006\u0002\u0010\u0015J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\nHÆ\u0003J\t\u0010+\u001a\u00020\u0011HÆ\u0003J\t\u0010,\u001a\u00020\nHÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\t\u0010.\u001a\u00020\nHÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0006HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00103\u001a\u00020\nHÆ\u0003J\t\u00104\u001a\u00020\nHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u009d\u0001\u00107\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\n2\b\b\u0002\u0010\u0013\u001a\u00020\n2\b\b\u0002\u0010\u0014\u001a\u00020\nHÆ\u0001J\u0013\u00108\u001a\u00020\n2\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\u0006HÖ\u0001J\t\u0010;\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0011\u0010\u0014\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u0013\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0017R\u0011\u0010\u0012\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0017¨\u0006<"}, d2 = {"Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;", "", "clientId", "", "clientToken", "region", "", TapEventParamConstants.PARAM_SUB_CHANNEL, "gameVersion", "autoIAPEventEnabled", "", "overrideBuiltInParameters", TapEventParamConstants.PARAM_PROPERTIES, "Lorg/json/JSONObject;", "oaidCert", "enableLog", "preferredLanguage", "Lcom/taptap/sdk/initializer/api/model/Language;", "useAgeRange", "showSwitchAccount", "enableToast", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/initializer/api/model/Language;ZZZ)V", "getAutoIAPEventEnabled", "()Z", "getChannel", "()Ljava/lang/String;", "getClientId", "getClientToken", "getEnableLog", "getEnableToast", "getGameVersion", "getOaidCert", "getOverrideBuiltInParameters", "getPreferredLanguage", "()Lcom/taptap/sdk/initializer/api/model/Language;", "getProperties", "()Lorg/json/JSONObject;", "getRegion", "()I", "getShowSwitchAccount", "getUseAgeRange", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "tap-initializer-api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class TapTapSdkOptions {
    private final boolean autoIAPEventEnabled;
    private final String channel;
    private final String clientId;
    private final String clientToken;
    private final boolean enableLog;
    private final boolean enableToast;
    private final String gameVersion;
    private final String oaidCert;
    private final boolean overrideBuiltInParameters;
    private final Language preferredLanguage;
    private final JSONObject properties;
    private final int region;
    private final boolean showSwitchAccount;
    private final boolean useAgeRange;

    /* renamed from: component1, reason: from getter */
    public final String getClientId() {
        return this.clientId;
    }

    /* renamed from: component10, reason: from getter */
    public final boolean getEnableLog() {
        return this.enableLog;
    }

    /* renamed from: component11, reason: from getter */
    public final Language getPreferredLanguage() {
        return this.preferredLanguage;
    }

    /* renamed from: component12, reason: from getter */
    public final boolean getUseAgeRange() {
        return this.useAgeRange;
    }

    /* renamed from: component13, reason: from getter */
    public final boolean getShowSwitchAccount() {
        return this.showSwitchAccount;
    }

    /* renamed from: component14, reason: from getter */
    public final boolean getEnableToast() {
        return this.enableToast;
    }

    /* renamed from: component2, reason: from getter */
    public final String getClientToken() {
        return this.clientToken;
    }

    /* renamed from: component3, reason: from getter */
    public final int getRegion() {
        return this.region;
    }

    /* renamed from: component4, reason: from getter */
    public final String getChannel() {
        return this.channel;
    }

    /* renamed from: component5, reason: from getter */
    public final String getGameVersion() {
        return this.gameVersion;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getAutoIAPEventEnabled() {
        return this.autoIAPEventEnabled;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getOverrideBuiltInParameters() {
        return this.overrideBuiltInParameters;
    }

    /* renamed from: component8, reason: from getter */
    public final JSONObject getProperties() {
        return this.properties;
    }

    /* renamed from: component9, reason: from getter */
    public final String getOaidCert() {
        return this.oaidCert;
    }

    public final TapTapSdkOptions copy(String clientId, String clientToken, int region, String channel, String gameVersion, boolean autoIAPEventEnabled, boolean overrideBuiltInParameters, JSONObject properties, String oaidCert, boolean enableLog, Language preferredLanguage, boolean useAgeRange, boolean showSwitchAccount, boolean enableToast) {
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        Intrinsics.checkNotNullParameter(clientToken, "clientToken");
        Intrinsics.checkNotNullParameter(preferredLanguage, "preferredLanguage");
        return new TapTapSdkOptions(clientId, clientToken, region, channel, gameVersion, autoIAPEventEnabled, overrideBuiltInParameters, properties, oaidCert, enableLog, preferredLanguage, useAgeRange, showSwitchAccount, enableToast);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TapTapSdkOptions)) {
            return false;
        }
        TapTapSdkOptions tapTapSdkOptions = (TapTapSdkOptions) other;
        return Intrinsics.areEqual(this.clientId, tapTapSdkOptions.clientId) && Intrinsics.areEqual(this.clientToken, tapTapSdkOptions.clientToken) && this.region == tapTapSdkOptions.region && Intrinsics.areEqual(this.channel, tapTapSdkOptions.channel) && Intrinsics.areEqual(this.gameVersion, tapTapSdkOptions.gameVersion) && this.autoIAPEventEnabled == tapTapSdkOptions.autoIAPEventEnabled && this.overrideBuiltInParameters == tapTapSdkOptions.overrideBuiltInParameters && Intrinsics.areEqual(this.properties, tapTapSdkOptions.properties) && Intrinsics.areEqual(this.oaidCert, tapTapSdkOptions.oaidCert) && this.enableLog == tapTapSdkOptions.enableLog && this.preferredLanguage == tapTapSdkOptions.preferredLanguage && this.useAgeRange == tapTapSdkOptions.useAgeRange && this.showSwitchAccount == tapTapSdkOptions.showSwitchAccount && this.enableToast == tapTapSdkOptions.enableToast;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.clientId.hashCode() * 31) + this.clientToken.hashCode()) * 31) + this.region) * 31;
        String str = this.channel;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.gameVersion;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        boolean z = this.autoIAPEventEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode3 + i) * 31;
        boolean z2 = this.overrideBuiltInParameters;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        JSONObject jSONObject = this.properties;
        int hashCode4 = (i4 + (jSONObject == null ? 0 : jSONObject.hashCode())) * 31;
        String str3 = this.oaidCert;
        int hashCode5 = (hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        boolean z3 = this.enableLog;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int hashCode6 = (((hashCode5 + i5) * 31) + this.preferredLanguage.hashCode()) * 31;
        boolean z4 = this.useAgeRange;
        int i6 = z4;
        if (z4 != 0) {
            i6 = 1;
        }
        int i7 = (hashCode6 + i6) * 31;
        boolean z5 = this.showSwitchAccount;
        int i8 = z5;
        if (z5 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        boolean z6 = this.enableToast;
        return i9 + (z6 ? 1 : z6 ? 1 : 0);
    }

    public String toString() {
        return "TapTapSdkOptions(clientId=" + this.clientId + ", clientToken=" + this.clientToken + ", region=" + this.region + ", channel=" + this.channel + ", gameVersion=" + this.gameVersion + ", autoIAPEventEnabled=" + this.autoIAPEventEnabled + ", overrideBuiltInParameters=" + this.overrideBuiltInParameters + ", properties=" + this.properties + ", oaidCert=" + this.oaidCert + ", enableLog=" + this.enableLog + ", preferredLanguage=" + this.preferredLanguage + ", useAgeRange=" + this.useAgeRange + ", showSwitchAccount=" + this.showSwitchAccount + ", enableToast=" + this.enableToast + ')';
    }

    public TapTapSdkOptions(String clientId, String clientToken, int i, String str, String str2, boolean z, boolean z2, JSONObject jSONObject, String str3, boolean z3, Language preferredLanguage, boolean z4, boolean z5, boolean z6) {
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        Intrinsics.checkNotNullParameter(clientToken, "clientToken");
        Intrinsics.checkNotNullParameter(preferredLanguage, "preferredLanguage");
        this.clientId = clientId;
        this.clientToken = clientToken;
        this.region = i;
        this.channel = str;
        this.gameVersion = str2;
        this.autoIAPEventEnabled = z;
        this.overrideBuiltInParameters = z2;
        this.properties = jSONObject;
        this.oaidCert = str3;
        this.enableLog = z3;
        this.preferredLanguage = preferredLanguage;
        this.useAgeRange = z4;
        this.showSwitchAccount = z5;
        this.enableToast = z6;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final String getClientToken() {
        return this.clientToken;
    }

    public final int getRegion() {
        return this.region;
    }

    public final String getChannel() {
        return this.channel;
    }

    public final String getGameVersion() {
        return this.gameVersion;
    }

    public final boolean getAutoIAPEventEnabled() {
        return this.autoIAPEventEnabled;
    }

    public final boolean getOverrideBuiltInParameters() {
        return this.overrideBuiltInParameters;
    }

    public final JSONObject getProperties() {
        return this.properties;
    }

    public final String getOaidCert() {
        return this.oaidCert;
    }

    public final boolean getEnableLog() {
        return this.enableLog;
    }

    public /* synthetic */ TapTapSdkOptions(String str, String str2, int i, String str3, String str4, boolean z, boolean z2, JSONObject jSONObject, String str5, boolean z3, Language language, boolean z4, boolean z5, boolean z6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? false : z2, (i2 & 128) != 0 ? null : jSONObject, (i2 & 256) != 0 ? null : str5, (i2 & 512) != 0 ? false : z3, (i2 & 1024) != 0 ? Language.AUTO : language, (i2 & 2048) != 0 ? false : z4, (i2 & 4096) != 0 ? false : z5, (i2 & 8192) != 0 ? false : z6);
    }

    public final Language getPreferredLanguage() {
        return this.preferredLanguage;
    }

    public final boolean getUseAgeRange() {
        return this.useAgeRange;
    }

    public final boolean getShowSwitchAccount() {
        return this.showSwitchAccount;
    }

    public final boolean getEnableToast() {
        return this.enableToast;
    }
}
