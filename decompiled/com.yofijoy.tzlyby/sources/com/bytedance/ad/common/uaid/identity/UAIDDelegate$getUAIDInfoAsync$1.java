package com.bytedance.ad.common.uaid.identity;

import android.content.Context;
import android.net.Network;
import com.bytedance.ad.common.uaid.identity.Constant;
import com.bytedance.ad.common.uaid.identity.callback.AsyncUAIDFetchCallback;
import com.bytedance.ad.common.uaid.identity.utils.NetworkUtils;
import com.bytedance.ad.common.uaid.identity.utils.SIMUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class UAIDDelegate$getUAIDInfoAsync$1 implements Runnable {
    final AsyncUAIDFetchCallback $callback;
    final Context $context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UAIDDelegate$getUAIDInfoAsync$1(Context context, AsyncUAIDFetchCallback asyncUAIDFetchCallback) {
        this.$context = context;
        this.$callback = asyncUAIDFetchCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String checkNetWorkPermission;
        Map map;
        try {
            checkNetWorkPermission = UAIDDelegate.INSTANCE.checkNetWorkPermission(this.$context);
            if (Intrinsics.areEqual(checkNetWorkPermission, Constant.StatusCode.PERMISSION_CHECK_SUCC)) {
                String simOperatorCode = SIMUtils.getSimOperatorCode(this.$context);
                UAIDDelegate uAIDDelegate = UAIDDelegate.INSTANCE;
                map = UAIDDelegate.uaidFetcherMap;
                AbsUAIDFetcher absUAIDFetcher = (AbsUAIDFetcher) map.get(simOperatorCode);
                if (absUAIDFetcher == null) {
                    AsyncUAIDFetchCallback asyncUAIDFetchCallback = this.$callback;
                    if (asyncUAIDFetchCallback != null) {
                        asyncUAIDFetchCallback.getResult(new UAIDResult(Constant.StatusCode.ERR_NO_VALID_CARD));
                    }
                } else if (Intrinsics.areEqual(absUAIDFetcher.getUaidResult().getErrCode(), Constant.StatusCode.INIT)) {
                    NetworkUtils.getInstance(this.$context).requestCellular(new NetworkUtils.NetworkCallback(this, absUAIDFetcher) { // from class: com.bytedance.ad.common.uaid.identity.UAIDDelegate$getUAIDInfoAsync$1.1
                        final AbsUAIDFetcher $targetUaidFetcher;
                        final UAIDDelegate$getUAIDInfoAsync$1 this$0;

                        {
                            this.this$0 = this;
                            this.$targetUaidFetcher = absUAIDFetcher;
                        }

                        @Override // com.bytedance.ad.common.uaid.identity.utils.NetworkUtils.NetworkCallback
                        public final void networkAvailable(Network network) {
                            UAIDResult token = this.$targetUaidFetcher.getToken(this.this$0.$context, network);
                            NetworkUtils.getInstance(this.this$0.$context).unregisterNetwork();
                            AsyncUAIDFetchCallback asyncUAIDFetchCallback2 = this.this$0.$callback;
                            if (asyncUAIDFetchCallback2 != null) {
                                asyncUAIDFetchCallback2.getResult(token);
                            }
                        }
                    });
                } else {
                    AsyncUAIDFetchCallback asyncUAIDFetchCallback2 = this.$callback;
                    if (asyncUAIDFetchCallback2 != null) {
                        asyncUAIDFetchCallback2.getResult(absUAIDFetcher.getUaidResult());
                    }
                }
            } else {
                AsyncUAIDFetchCallback asyncUAIDFetchCallback3 = this.$callback;
                if (asyncUAIDFetchCallback3 != null) {
                    asyncUAIDFetchCallback3.getResult(new UAIDResult(checkNetWorkPermission));
                }
            }
        } catch (Exception e) {
            AsyncUAIDFetchCallback asyncUAIDFetchCallback4 = this.$callback;
            if (asyncUAIDFetchCallback4 != null) {
                String message = e.getMessage();
                if (message == null) {
                    message = "unknow";
                }
                asyncUAIDFetchCallback4.getResult(new UAIDResult(message));
            }
        }
    }
}
