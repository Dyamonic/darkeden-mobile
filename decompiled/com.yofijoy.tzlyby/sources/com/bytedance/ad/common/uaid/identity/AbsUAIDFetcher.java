package com.bytedance.ad.common.uaid.identity;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Network;
import android.text.TextUtils;
import com.bytedance.ad.common.uaid.identity.Constant;
import com.bytedance.ad.common.uaid.identity.callback.IUAIDFetchListener;
import com.bytedance.ad.common.uaid.identity.utils.SIMUtils;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rJ\u001a\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H&J\u001a\u0010!\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0018\u0010\"\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 J\u0010\u0010#\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u000e\u0010$\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rJ\u0018\u0010%\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\u0014H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006'"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;", "", "config", "Lcom/bytedance/ad/common/uaid/identity/Config;", "(Lcom/bytedance/ad/common/uaid/identity/Config;)V", "getConfig", "()Lcom/bytedance/ad/common/uaid/identity/Config;", "expireTime", "", "getExpireTime", "()J", "listeners", "Ljava/util/ArrayList;", "Lcom/bytedance/ad/common/uaid/identity/callback/IUAIDFetchListener;", "Lkotlin/collections/ArrayList;", "type", "", "getType", "()Ljava/lang/String;", "uaidResult", "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;", "getUaidResult", "()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;", "setUaidResult", "(Lcom/bytedance/ad/common/uaid/identity/UAIDResult;)V", "addListener", "", "listener", "fetchNewToken", "context", "Landroid/content/Context;", "network", "Landroid/net/Network;", "fetchTokenAndCache", "getToken", "loadResultFromCache", "removeListener", "saveResultToCache", "result", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public abstract class AbsUAIDFetcher {
    private final Config config;
    private final long expireTime;
    private final ArrayList<IUAIDFetchListener> listeners;
    private UAIDResult uaidResult;

    public AbsUAIDFetcher(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
        this.expireTime = config.getTimeout();
        this.uaidResult = new UAIDResult(Constant.StatusCode.INIT);
        this.listeners = new ArrayList<>();
    }

    private final UAIDResult fetchTokenAndCache(Context context, Network network) {
        UAIDResult fetchNewToken = fetchNewToken(context, network);
        setUaidResult(fetchNewToken);
        saveResultToCache(context, fetchNewToken);
        Iterator<T> it = this.listeners.iterator();
        while (it.hasNext()) {
            ((IUAIDFetchListener) it.next()).onFetchNewUAID(getUaidResult(), Intrinsics.areEqual(getUaidResult().getErrCode(), Constant.StatusCode.GET_TOKEN_SUCC));
        }
        return fetchNewToken;
    }

    private final void loadResultFromCache(Context context) {
        int currentSimSubId = SIMUtils.getCurrentSimSubId(context);
        SharedPreferences sharedPreferences = context.getSharedPreferences("sp_name_bd_convert_uid_" + currentSimSubId, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…t\", Context.MODE_PRIVATE)");
        long j = sharedPreferences.getLong(getType() + Constant.Key.SP_KEY_UID_TIME, 0L);
        if (j == 0 || System.currentTimeMillis() - j >= getExpireTime()) {
            return;
        }
        String string = sharedPreferences.getString(getType() + Constant.Key.SP_KEY_UID_CARRIER, getUaidResult().getCarrier());
        getUaidResult().set(sharedPreferences.getString(getType() + Constant.Key.SP_KEY_UID_VENDOR, getUaidResult().getVendor()), sharedPreferences.getString(getType() + Constant.Key.SP_KEY_UID_ERROR_CODE, getUaidResult().getErrCode()), sharedPreferences.getString(getType() + Constant.Key.SP_KEY_UID_TOKEN, getUaidResult().getToken()), string, currentSimSubId, j);
    }

    private final void saveResultToCache(Context context, UAIDResult result) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("sp_name_bd_convert_uid_" + result.getSlot(), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…}\", Context.MODE_PRIVATE)");
        sharedPreferences.edit().putString(getType() + Constant.Key.SP_KEY_UID_CARRIER, result.getCarrier()).putString(getType() + Constant.Key.SP_KEY_UID_VENDOR, result.getVendor()).putString(getType() + Constant.Key.SP_KEY_UID_ERROR_CODE, result.getErrCode()).putString(getType() + Constant.Key.SP_KEY_UID_TOKEN, result.getToken()).putLong(getType() + Constant.Key.SP_KEY_UID_TIME, System.currentTimeMillis()).apply();
    }

    public final void addListener(IUAIDFetchListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    public abstract UAIDResult fetchNewToken(Context context, Network network);

    public final Config getConfig() {
        return this.config;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public final UAIDResult getToken(Context context, Network network) {
        synchronized (this) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (!this.config.getEnable()) {
                return new UAIDResult(Constant.StatusCode.ERR_DISABLE);
            }
            if (Intrinsics.areEqual(getUaidResult().getErrCode(), Constant.StatusCode.INIT)) {
                loadResultFromCache(context);
            }
            return (System.currentTimeMillis() - getUaidResult().getTimestamp() <= getExpireTime() && !TextUtils.isEmpty(getUaidResult().getToken())) ? getUaidResult() : fetchTokenAndCache(context, network);
        }
    }

    public abstract String getType();

    public UAIDResult getUaidResult() {
        return this.uaidResult;
    }

    public final void removeListener(IUAIDFetchListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }

    public void setUaidResult(UAIDResult uAIDResult) {
        Intrinsics.checkNotNullParameter(uAIDResult, "<set-?>");
        this.uaidResult = uAIDResult;
    }
}
