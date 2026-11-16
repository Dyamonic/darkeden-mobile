package com.bytedance.ad.common.uaid.identity;

import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/Config;", "", "enable", "", "timeout", "", "(ZJ)V", "getEnable", "()Z", "getTimeout", "()J", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final /* data */ class Config {
    private final boolean enable;
    private final long timeout;

    public Config(boolean z, long j) {
        this.enable = z;
        this.timeout = j;
    }

    public static /* synthetic */ Config copy$default(Config config, boolean z, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            z = config.enable;
        }
        if ((i & 2) != 0) {
            j = config.timeout;
        }
        return config.copy(z, j);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getEnable() {
        return this.enable;
    }

    /* renamed from: component2, reason: from getter */
    public final long getTimeout() {
        return this.timeout;
    }

    public final Config copy(boolean enable, long timeout) {
        return new Config(enable, timeout);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Config)) {
            return false;
        }
        Config config = (Config) other;
        return this.enable == config.enable && this.timeout == config.timeout;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.enable;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        long j = this.timeout;
        return (r0 * 31) + ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "Config(enable=" + this.enable + ", timeout=" + this.timeout + ")";
    }
}
