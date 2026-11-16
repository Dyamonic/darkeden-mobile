package com.taptap.sdk.openlog.internal;

import com.rich.oauth.util.RichLogUtil;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.openlog.ITapOpenlog;
import com.taptap.sdk.openlog.TapSdkProject;
import com.taptap.sdk.openlog.TapTapOpenlogSdk;
import com.taptap.sdk.openlog.utils.JsonUtils;
import com.tencent.tauth.AuthActivity;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* compiled from: OpenLogImpl.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000eH\u0016J&\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/taptap/sdk/openlog/internal/OpenLogImpl;", "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;", "project", "", ClientCookie.VERSION_ATTR, "(Ljava/lang/String;Ljava/lang/String;)V", "isTechLogDisable", "", "region", "", "reportBusinessLog", "", AuthActivity.ACTION_KEY, TapEventParamConstants.PARAM_PROPERTIES, "", "reportTechnicalLog", "Companion", "tap-openlog_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class OpenLogImpl implements ITapOpenlog {
    private static final String TAG = "TapTapOpenlog";
    private final String project;
    private final String version;

    public OpenLogImpl(String project, String version) {
        Intrinsics.checkNotNullParameter(project, "project");
        Intrinsics.checkNotNullParameter(version, "version");
        this.project = project;
        this.version = version;
    }

    @Override // com.taptap.sdk.kit.internal.openlog.ITapOpenlog
    public void reportBusinessLog(String action, Map<String, String> properties) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Map<String, ? extends Object> plus = MapsKt.plus(properties, MapsKt.mapOf(TuplesKt.to(AuthActivity.ACTION_KEY, action), TuplesKt.to("tapsdk_project", this.project), TuplesKt.to("tapsdk_version", this.version)));
        TapLogger.logi("Tag-Openlog", JsonUtils.INSTANCE.stringify(plus));
        TapOpenLogRemote.INSTANCE.sendOpenlog("tapsdk", JsonUtils.INSTANCE.stringify(plus));
    }

    @Override // com.taptap.sdk.kit.internal.openlog.ITapOpenlog
    public void reportTechnicalLog(String action, Map<String, String> properties) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(properties, "properties");
        if (isTechLogDisable(TapTapOpenlogSdk.INSTANCE.getRegion$tap_openlog_release(), this.project)) {
            TapLogger.logi(TAG, AbstractJsonLexerKt.BEGIN_LIST + this.project + "] Technology log is not supported");
            return;
        }
        TapOpenLogRemote.INSTANCE.sendOpenlog("tapsdk-apm", JsonUtils.INSTANCE.stringify(MapsKt.mapOf(TuplesKt.to(AuthActivity.ACTION_KEY, action), TuplesKt.to(RichLogUtil.ARGS, new JSONObject(properties).toString()), TuplesKt.to("tapsdk_project", this.project), TuplesKt.to("tapsdk_version", this.version))));
    }

    private final boolean isTechLogDisable(int region, String project) {
        return region == 0 && !Intrinsics.areEqual(project, TapSdkProject.TapPayment.getValue());
    }
}
