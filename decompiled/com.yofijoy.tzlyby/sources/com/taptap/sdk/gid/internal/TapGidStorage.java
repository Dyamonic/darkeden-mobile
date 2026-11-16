package com.taptap.sdk.gid.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.utils.KVUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapGidStorage.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/taptap/sdk/gid/internal/TapGidStorage;", "", "()V", "TAP_DEVICE_ID_SAVED_PARAM", "", "TAP_GID_SHARE_PREFERENCE", "TAP_GID_SP_CACHE_CN", "TAP_GID_SP_CACHE_GLOBAL", "clearDeprecatedSpGid", "", "context", "Landroid/content/Context;", "getDeprecatedSpGid", "getGidFromSp", "regionType", "", "saveGidToSp", TapEventParamConstants.PARAM_SUB_GID, "tap-gid_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapGidStorage {
    public static final TapGidStorage INSTANCE = new TapGidStorage();
    private static final String TAP_DEVICE_ID_SAVED_PARAM = "taptap_device_id_saved_param";
    private static final String TAP_GID_SHARE_PREFERENCE = "tap_gid_share_preference";
    private static final String TAP_GID_SP_CACHE_CN = "taptap_gid_cn_cache";
    private static final String TAP_GID_SP_CACHE_GLOBAL = "taptap_gid_global_cache";

    private TapGidStorage() {
    }

    public final void saveGidToSp(int regionType, String gid) {
        Intrinsics.checkNotNullParameter(gid, "gid");
        try {
            if (regionType == 0) {
                KVUtil.putString$default(KVUtil.INSTANCE, TAP_GID_SP_CACHE_CN, gid, null, 4, null);
            } else if (regionType != 1) {
            } else {
                KVUtil.putString$default(KVUtil.INSTANCE, TAP_GID_SP_CACHE_GLOBAL, gid, null, 4, null);
            }
        } catch (Exception e) {
            TapLogger.loge$default("TapGidStorage", null, e, 2, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getGidFromSp(int r10) {
        /*
            r9 = this;
            r0 = 1
            r1 = 0
            java.lang.String r2 = ""
            if (r10 == 0) goto L18
            if (r10 == r0) goto L9
            goto L2f
        L9:
            com.taptap.sdk.kit.internal.utils.KVUtil r3 = com.taptap.sdk.kit.internal.utils.KVUtil.INSTANCE     // Catch: java.lang.Exception -> L26
            java.lang.String r4 = "taptap_gid_global_cache"
            java.lang.String r5 = ""
            r6 = 0
            r7 = 4
            r8 = 0
            java.lang.String r10 = com.taptap.sdk.kit.internal.utils.KVUtil.getString$default(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L26
            r2 = r10
            goto L2f
        L18:
            com.taptap.sdk.kit.internal.utils.KVUtil r3 = com.taptap.sdk.kit.internal.utils.KVUtil.INSTANCE     // Catch: java.lang.Exception -> L26
            java.lang.String r4 = "taptap_gid_cn_cache"
            java.lang.String r5 = ""
            r6 = 0
            r7 = 4
            r8 = 0
            java.lang.String r2 = com.taptap.sdk.kit.internal.utils.KVUtil.getString$default(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L26
            goto L2f
        L26:
            r10 = move-exception
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            r3 = 2
            java.lang.String r4 = "TapGidStorage"
            com.taptap.sdk.kit.internal.TapLogger.loge$default(r4, r1, r10, r3, r1)
        L2f:
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            int r10 = r2.length()
            if (r10 != 0) goto L38
            goto L39
        L38:
            r0 = 0
        L39:
            if (r0 == 0) goto L3c
            goto L3d
        L3c:
            r1 = r2
        L3d:
            java.lang.String r1 = (java.lang.String) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.gid.internal.TapGidStorage.getGidFromSp(int):java.lang.String");
    }

    public final void clearDeprecatedSpGid(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            SharedPreferences.Editor edit = context.getSharedPreferences(TAP_GID_SHARE_PREFERENCE, 0).edit();
            edit.remove(TAP_DEVICE_ID_SAVED_PARAM);
            edit.apply();
        } catch (Exception e) {
            TapLogger.loge$default("TapGidStorage", null, e, 2, null);
        }
    }

    public final String getDeprecatedSpGid(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getSharedPreferences(TAP_GID_SHARE_PREFERENCE, 0).getString(TAP_DEVICE_ID_SAVED_PARAM, null);
    }
}
