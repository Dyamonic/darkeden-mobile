package com.bytedance.ad.common.uaid.identity;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;", "", "chinaMobileConfig", "Lcom/bytedance/ad/common/uaid/identity/Config;", "chinaTelecomConfig", "chinaUnicomConfig", "(Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;)V", "getChinaMobileConfig", "()Lcom/bytedance/ad/common/uaid/identity/Config;", "setChinaMobileConfig", "(Lcom/bytedance/ad/common/uaid/identity/Config;)V", "getChinaTelecomConfig", "setChinaTelecomConfig", "getChinaUnicomConfig", "setChinaUnicomConfig", "setNewConfig", "", "newConfig", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class UAIDConfig {
    private Config chinaMobileConfig;
    private Config chinaTelecomConfig;
    private Config chinaUnicomConfig;

    public UAIDConfig() {
        this(null, null, null, 7, null);
    }

    public UAIDConfig(Config chinaMobileConfig, Config chinaTelecomConfig, Config chinaUnicomConfig) {
        Intrinsics.checkNotNullParameter(chinaMobileConfig, "chinaMobileConfig");
        Intrinsics.checkNotNullParameter(chinaTelecomConfig, "chinaTelecomConfig");
        Intrinsics.checkNotNullParameter(chinaUnicomConfig, "chinaUnicomConfig");
        this.chinaMobileConfig = chinaMobileConfig;
        this.chinaTelecomConfig = chinaTelecomConfig;
        this.chinaUnicomConfig = chinaUnicomConfig;
    }

    public /* synthetic */ UAIDConfig(Config config, Config config2, Config config3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Config(true, 3300000L) : config, (i & 2) != 0 ? new Config(true, 3300000L) : config2, (i & 4) != 0 ? new Config(true, 40000L) : config3);
    }

    public final Config getChinaMobileConfig() {
        return this.chinaMobileConfig;
    }

    public final Config getChinaTelecomConfig() {
        return this.chinaTelecomConfig;
    }

    public final Config getChinaUnicomConfig() {
        return this.chinaUnicomConfig;
    }

    public final void setChinaMobileConfig(Config config) {
        Intrinsics.checkNotNullParameter(config, "<set-?>");
        this.chinaMobileConfig = config;
    }

    public final void setChinaTelecomConfig(Config config) {
        Intrinsics.checkNotNullParameter(config, "<set-?>");
        this.chinaTelecomConfig = config;
    }

    public final void setChinaUnicomConfig(Config config) {
        Intrinsics.checkNotNullParameter(config, "<set-?>");
        this.chinaUnicomConfig = config;
    }

    public final void setNewConfig(UAIDConfig newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        this.chinaMobileConfig = newConfig.chinaMobileConfig;
        this.chinaTelecomConfig = newConfig.chinaTelecomConfig;
        this.chinaUnicomConfig = newConfig.chinaUnicomConfig;
    }
}
