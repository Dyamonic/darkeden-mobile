package com.bytedance.ad.common.uaid.identity;

import android.content.Context;
import android.net.Network;
import com.bytedance.ad.common.uaid.identity.Constant;
import com.bytedance.ad.common.uaid.identity.utils.HttpUtils;
import com.bytedance.ad.common.uaid.identity.utils.RequestBodyUtils;
import com.bytedance.ad.common.uaid.identity.utils.SIMUtils;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/ChinaMobileUAIDFetcher;", "Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;", "config", "Lcom/bytedance/ad/common/uaid/identity/Config;", "(Lcom/bytedance/ad/common/uaid/identity/Config;)V", "type", "", "getType", "()Ljava/lang/String;", "fetchNewToken", "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;", "context", "Landroid/content/Context;", "network", "Landroid/net/Network;", "Companion", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class ChinaMobileUAIDFetcher extends AbsUAIDFetcher {
    public static final String CARRIER = "1";
    private static final String MOBILE_URL = "https://msg.cmpassport.com/h5/getMobile";
    public static final String VENDOR = "1";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChinaMobileUAIDFetcher(Config config) {
        super(config);
        Intrinsics.checkNotNullParameter(config, "config");
    }

    @Override // com.bytedance.ad.common.uaid.identity.AbsUAIDFetcher
    public UAIDResult fetchNewToken(final Context context, Network network) {
        Intrinsics.checkNotNullParameter(context, "context");
        String packMobileBody = RequestBodyUtils.packMobileBody();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        HttpUtils.doPost(network, MOBILE_URL, packMobileBody, new HttpUtils.OnResponseListener(this, context, countDownLatch) { // from class: com.bytedance.ad.common.uaid.identity.ChinaMobileUAIDFetcher$fetchNewToken$1
            final Context $context;
            final CountDownLatch $countDownLatch;
            final ChinaMobileUAIDFetcher this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
                this.$context = context;
                this.$countDownLatch = countDownLatch;
            }

            @Override // com.bytedance.ad.common.uaid.identity.utils.HttpUtils.OnResponseListener
            public void onFailure() {
                this.$countDownLatch.countDown();
                this.this$0.getUaidResult().setErrCode(Constant.StatusCode.ERR_OHTER);
                this.$countDownLatch.countDown();
            }

            @Override // com.bytedance.ad.common.uaid.identity.utils.HttpUtils.OnResponseListener
            public void onResponse(String response) {
                String str;
                String str2;
                JSONObject jSONObject;
                Intrinsics.checkNotNullParameter(response, "response");
                try {
                    jSONObject = new JSONObject(response).getJSONObject("body");
                    str = jSONObject.getString("resultCode");
                    Intrinsics.checkNotNullExpressionValue(str, "responseBody.getString(\"resultCode\")");
                } catch (Exception unused) {
                    str = Constant.StatusCode.ERR_OHTER;
                }
                if (Intrinsics.areEqual("103000", str)) {
                    String string = jSONObject.getString("token");
                    Intrinsics.checkNotNullExpressionValue(string, "responseBody.getString(\"token\")");
                    str = Constant.StatusCode.GET_TOKEN_SUCC;
                    str2 = string;
                    int currentSimSubId = SIMUtils.getCurrentSimSubId(this.$context);
                    this.this$0.getUaidResult().set("1", str, str2, "1", currentSimSubId, System.currentTimeMillis());
                    this.$countDownLatch.countDown();
                }
                str2 = "";
                int currentSimSubId2 = SIMUtils.getCurrentSimSubId(this.$context);
                this.this$0.getUaidResult().set("1", str, str2, "1", currentSimSubId2, System.currentTimeMillis());
                this.$countDownLatch.countDown();
            }
        });
        countDownLatch.await(5000L, TimeUnit.MICROSECONDS);
        return getUaidResult();
    }

    @Override // com.bytedance.ad.common.uaid.identity.AbsUAIDFetcher
    public String getType() {
        return "1";
    }
}
