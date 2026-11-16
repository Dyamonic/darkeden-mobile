package com.bytedance.ad.common.uaid.identity;

import android.content.Context;
import android.net.Network;
import android.os.Build;
import com.bytedance.ad.common.uaid.identity.Constant;
import com.bytedance.ad.common.uaid.identity.callback.AsyncUAIDFetchCallback;
import com.bytedance.ad.common.uaid.identity.callback.IUAIDFetchListener;
import com.bytedance.ad.common.uaid.identity.utils.NetworkUtils;
import com.bytedance.ad.common.uaid.identity.utils.SIMUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001a\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;", "", "()V", "uaidConfig", "Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;", "uaidFetcherMap", "", "", "Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;", "addListener", "", "listener", "Lcom/bytedance/ad/common/uaid/identity/callback/IUAIDFetchListener;", "checkNetWorkPermission", "context", "Landroid/content/Context;", "getUAIDInfoAsync", "callback", "Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;", "getUAIDInfoIfExits", "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;", "getUAIDInfoSync", "timeout", "", "removeListener", "setConfig", "config", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class UAIDDelegate {
    public static final UAIDDelegate INSTANCE = new UAIDDelegate();
    private static final UAIDConfig uaidConfig;
    private static final Map<String, AbsUAIDFetcher> uaidFetcherMap;

    static {
        UAIDConfig uAIDConfig = new UAIDConfig(null, null, null, 7, null);
        uaidConfig = uAIDConfig;
        uaidFetcherMap = MapsKt.mapOf(TuplesKt.to("1", new ChinaMobileUAIDFetcher(uAIDConfig.getChinaMobileConfig())), TuplesKt.to("2", new ChinaTelecomUAIDFetcher(uAIDConfig.getChinaTelecomConfig())), TuplesKt.to("3", new ChinaUnicomUAIDFetcher(uAIDConfig.getChinaUnicomConfig())));
    }

    private UAIDDelegate() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String checkNetWorkPermission(Context context) {
        if (Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
            return Constant.StatusCode.ERR_NO_PERMISSION;
        }
        NetworkUtils netWorkUtils = NetworkUtils.getInstance(context);
        Intrinsics.checkNotNullExpressionValue(netWorkUtils, "netWorkUtils");
        int networkType = netWorkUtils.getNetworkType();
        if (networkType == 3 && Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.CHANGE_NETWORK_STATE") == -1) {
            return Constant.StatusCode.ERR_NO_PERMISSION;
        }
        if (networkType == 3 || networkType == 2) {
            return Constant.StatusCode.PERMISSION_CHECK_SUCC;
        }
        return Constant.StatusCode.ERR_NO_CELLULAR_NETWORK + networkType;
    }

    public static /* synthetic */ void getUAIDInfoAsync$default(UAIDDelegate uAIDDelegate, Context context, AsyncUAIDFetchCallback asyncUAIDFetchCallback, int i, Object obj) {
        if ((i & 2) != 0) {
            asyncUAIDFetchCallback = null;
        }
        uAIDDelegate.getUAIDInfoAsync(context, asyncUAIDFetchCallback);
    }

    public static /* synthetic */ UAIDResult getUAIDInfoSync$default(UAIDDelegate uAIDDelegate, Context context, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 5000;
        }
        return uAIDDelegate.getUAIDInfoSync(context, j);
    }

    public final void addListener(IUAIDFetchListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Iterator<Map.Entry<String, AbsUAIDFetcher>> it = uaidFetcherMap.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().addListener(listener);
        }
    }

    public final void getUAIDInfoAsync(Context context, AsyncUAIDFetchCallback callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        new Thread(new UAIDDelegate$getUAIDInfoAsync$1(context, callback)).start();
    }

    public final UAIDResult getUAIDInfoIfExits(Context context) {
        UAIDResult uaidResult;
        Intrinsics.checkNotNullParameter(context, "context");
        UAIDResult uAIDResult = new UAIDResult(Constant.StatusCode.INIT);
        String checkNetWorkPermission = checkNetWorkPermission(context);
        uAIDResult.setErrCode(checkNetWorkPermission);
        if (!Intrinsics.areEqual(checkNetWorkPermission, Constant.StatusCode.PERMISSION_CHECK_SUCC)) {
            return uAIDResult;
        }
        AbsUAIDFetcher absUAIDFetcher = uaidFetcherMap.get(SIMUtils.getSimOperatorCode(context));
        return (absUAIDFetcher == null || (uaidResult = absUAIDFetcher.getUaidResult()) == null) ? new UAIDResult(Constant.StatusCode.ERR_NO_VALID_CARD) : uaidResult;
    }

    public final UAIDResult getUAIDInfoSync(final Context context, long timeout) {
        UAIDResult uaidResult;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            String checkNetWorkPermission = checkNetWorkPermission(context);
            if (!Intrinsics.areEqual(checkNetWorkPermission, Constant.StatusCode.PERMISSION_CHECK_SUCC)) {
                return new UAIDResult(checkNetWorkPermission);
            }
            final AbsUAIDFetcher absUAIDFetcher = uaidFetcherMap.get(SIMUtils.getSimOperatorCode(context));
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            if (absUAIDFetcher == null || !Intrinsics.areEqual(absUAIDFetcher.getUaidResult().getErrCode(), Constant.StatusCode.INIT)) {
                countDownLatch.countDown();
            } else {
                NetworkUtils.getInstance(context).requestCellular(new NetworkUtils.NetworkCallback(absUAIDFetcher, context, countDownLatch) { // from class: com.bytedance.ad.common.uaid.identity.UAIDDelegate$getUAIDInfoSync$1
                    final Context $context;
                    final CountDownLatch $countDownLatch;
                    final AbsUAIDFetcher $targetUaidFetcher;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.$targetUaidFetcher = absUAIDFetcher;
                        this.$context = context;
                        this.$countDownLatch = countDownLatch;
                    }

                    @Override // com.bytedance.ad.common.uaid.identity.utils.NetworkUtils.NetworkCallback
                    public final void networkAvailable(Network network) {
                        this.$targetUaidFetcher.getToken(this.$context, network);
                        NetworkUtils.getInstance(this.$context).unregisterNetwork();
                        this.$countDownLatch.countDown();
                    }
                });
            }
            countDownLatch.await(timeout, TimeUnit.MILLISECONDS);
            return (absUAIDFetcher == null || (uaidResult = absUAIDFetcher.getUaidResult()) == null) ? new UAIDResult(Constant.StatusCode.ERR_NO_VALID_CARD) : uaidResult;
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = "unknow";
            }
            return new UAIDResult(message);
        }
    }

    public final void removeListener(IUAIDFetchListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Iterator<Map.Entry<String, AbsUAIDFetcher>> it = uaidFetcherMap.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().removeListener(listener);
        }
    }

    public final void setConfig(UAIDConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        uaidConfig.setNewConfig(config);
    }
}
