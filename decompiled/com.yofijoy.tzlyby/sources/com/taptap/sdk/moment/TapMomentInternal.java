package com.taptap.sdk.moment;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapMomentInternal.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/taptap/sdk/moment/TapMomentInternal;", "", "()V", "clientId", "", "getClientId", "()Ljava/lang/String;", "setClientId", "(Ljava/lang/String;)V", "currentPublishSessionId", "getCurrentPublishSessionId", "setCurrentPublishSessionId", "regionType", "", "getRegionType", "()I", "setRegionType", "(I)V", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapMomentInternal {
    public static final TapMomentInternal INSTANCE = new TapMomentInternal();
    private static String clientId = "";
    private static String currentPublishSessionId = "";
    private static int regionType;

    private TapMomentInternal() {
    }

    public final int getRegionType() {
        return regionType;
    }

    public final void setRegionType(int i) {
        regionType = i;
    }

    public final String getClientId() {
        return clientId;
    }

    public final void setClientId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        clientId = str;
    }

    public final String getCurrentPublishSessionId() {
        return currentPublishSessionId;
    }

    public final void setCurrentPublishSessionId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        currentPublishSessionId = str;
    }
}
