package com.taptap.sdk.moment.wrapper;

import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.moment.TapMomentInternal;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* compiled from: MomentHostUtils.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;", "", "()V", "getMomentUrl", "", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MomentHostUtils {
    public static final MomentHostUtils INSTANCE = new MomentHostUtils();

    private MomentHostUtils() {
    }

    @JvmStatic
    public static final String getMomentUrl() {
        return TapMomentInternal.INSTANCE.getRegionType() == 1 ? TapTapKit.INSTANCE.isRND() ? "https://tds-moment-io.xdrnd.com" : "https://tds-moment.tap.io" : TapTapKit.INSTANCE.isRND() ? "https://tds-moment.xdrnd.com" : "https://tds-moment.taptap.cn";
    }
}
