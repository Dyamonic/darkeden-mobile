package com.taptap.sdk.kit.internal.identifier.content;

import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.kit.internal.TapTapKit;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapOAIDUtil.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\u0004J\u001c\u0010\r\u001a\u00020\u000b2\u0014\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010\u000f\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;", "", "()V", "TAG", "", "isQuerying", "Ljava/util/concurrent/atomic/AtomicBoolean;", TapEventParamConstants.PARAM_SUB_OAID, "waitingList", "", "Lkotlin/Function1;", "", "getOAID", "queryOAID", "callback", "setOAIDCertString", "oaidCert", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapOAIDUtil {
    private static final String TAG = "TapOAIDUtil";
    private static String oaid;
    public static final TapOAIDUtil INSTANCE = new TapOAIDUtil();
    private static List<Function1<String, Unit>> waitingList = new ArrayList();
    private static AtomicBoolean isQuerying = new AtomicBoolean(false);

    private TapOAIDUtil() {
    }

    public final void queryOAID(Function1<? super String, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this) {
            String str = oaid;
            if (str != null) {
                callback.invoke(str);
                return;
            }
            waitingList.add(callback);
            if (isQuerying.get()) {
                return;
            }
            isQuerying.set(true);
            Unit unit = Unit.INSTANCE;
            ThreadsKt.thread$default(false, false, null, null, 0, new TapOAIDUtil$queryOAID$2(this), 31, null);
        }
    }

    public final String getOAID() {
        String oaid2 = OaidHelper.getOAID(TapTapKit.INSTANCE.getContext());
        Intrinsics.checkNotNullExpressionValue(oaid2, "getOAID(TapTapKit.context)");
        return oaid2;
    }

    public final void setOAIDCertString(String oaidCert) {
        OaidHelper.setCertString(oaidCert);
    }
}
