package com.bytedance.ad.common.uaid.identity;

import android.content.Context;
import android.net.Network;
import com.bytedance.ad.common.uaid.identity.Constant;
import com.bytedance.ad.common.uaid.identity.utils.EncryptUtils;
import com.bytedance.ad.common.uaid.identity.utils.HttpUtils;
import com.bytedance.ad.common.uaid.identity.utils.RequestBodyUtils;
import com.bytedance.ad.common.uaid.identity.utils.SIMUtils;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;", "Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;", "config", "Lcom/bytedance/ad/common/uaid/identity/Config;", "(Lcom/bytedance/ad/common/uaid/identity/Config;)V", "type", "", "getType", "()Ljava/lang/String;", "fetchNewToken", "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;", "context", "Landroid/content/Context;", "network", "Landroid/net/Network;", "Companion", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class ChinaTelecomUAIDFetcher extends AbsUAIDFetcher {
    public static final String CARRIER = "2";
    private static final String TELECOM_URL = "https://id6.me/gw/preuniq.do";
    public static final String VENDOR = "2";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChinaTelecomUAIDFetcher(Config config) {
        super(config);
        Intrinsics.checkNotNullParameter(config, "config");
    }

    @Override // com.bytedance.ad.common.uaid.identity.AbsUAIDFetcher
    public UAIDResult fetchNewToken(final Context context, Network network) {
        Intrinsics.checkNotNullParameter(context, "context");
        final String produceRandomStr = EncryptUtils.produceRandomStr();
        String packTelecom = RequestBodyUtils.packTelecom(TELECOM_URL, produceRandomStr);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        HttpUtils.doPost(network, packTelecom, null, new HttpUtils.OnResponseListener(this, produceRandomStr, context, countDownLatch) { // from class: com.bytedance.ad.common.uaid.identity.ChinaTelecomUAIDFetcher$fetchNewToken$1
            final Context $context;
            final CountDownLatch $countDownLatch;
            final String $randomKey;
            final ChinaTelecomUAIDFetcher this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
                this.$randomKey = produceRandomStr;
                this.$context = context;
                this.$countDownLatch = countDownLatch;
            }

            @Override // com.bytedance.ad.common.uaid.identity.utils.HttpUtils.OnResponseListener
            public void onFailure() {
                this.this$0.getUaidResult().setErrCode(Constant.StatusCode.ERR_OHTER);
                this.$countDownLatch.countDown();
            }

            @Override // com.bytedance.ad.common.uaid.identity.utils.HttpUtils.OnResponseListener
            public void onResponse(String response) {
                String str;
                String str2;
                String str3;
                JSONObject jSONObject;
                Intrinsics.checkNotNullParameter(response, "response");
                try {
                    jSONObject = new JSONObject(response);
                    str = String.valueOf(jSONObject.getInt("result"));
                } catch (Exception unused) {
                    str = Constant.StatusCode.ERR_OHTER;
                }
                if (Intrinsics.areEqual("0", str)) {
                    String string = new JSONObject(EncryptUtils.aesCipher(false, EncryptUtils.hexToBytes(jSONObject.getString("data")), this.$randomKey)).getString("accessCode");
                    Intrinsics.checkNotNullExpressionValue(string, "data.getString(\"accessCode\")");
                    str3 = string;
                    str2 = Constant.StatusCode.GET_TOKEN_SUCC;
                    this.this$0.getUaidResult().set("2", str2, str3, "2", SIMUtils.getCurrentSimSubId(this.$context), System.currentTimeMillis());
                    this.$countDownLatch.countDown();
                }
                str2 = str;
                str3 = "";
                this.this$0.getUaidResult().set("2", str2, str3, "2", SIMUtils.getCurrentSimSubId(this.$context), System.currentTimeMillis());
                this.$countDownLatch.countDown();
            }
        });
        countDownLatch.await(5000L, TimeUnit.MICROSECONDS);
        return getUaidResult();
    }

    @Override // com.bytedance.ad.common.uaid.identity.AbsUAIDFetcher
    public String getType() {
        return "2";
    }
}
