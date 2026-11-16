package com.bytedance.ad.common.uaid.identity.callback;

import com.bytedance.ad.common.uaid.identity.UAIDResult;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/callback/IUAIDFetchListener;", "", "onFetchNewUAID", "", "result", "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;", "success", "", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public interface IUAIDFetchListener {
    void onFetchNewUAID(UAIDResult result, boolean success);
}
