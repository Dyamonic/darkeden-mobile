package rich;

import androidx.core.os.EnvironmentCompat;
import com.rich.oauth.callback.TokenCallback;
import com.rich.oauth.callback.TokenResultCallback;
import com.rich.oauth.core.RichAuth;
import com.rich.oauth.core.UIConfigBuild;
import com.rich.oauth.util.RichLogUtil;

/* loaded from: classes2.dex */
public class g3 implements TokenResultCallback {
    public final /* synthetic */ RichAuth a;

    public g3(RichAuth richAuth) {
        this.a = richAuth;
    }

    @Override // com.rich.oauth.callback.TokenResultCallback
    public void getTokenFailure(String str) {
        TokenCallback tokenCallback = this.a.h;
        if (tokenCallback != null) {
            tokenCallback.onTokenFailureResult(str);
        }
        UIConfigBuild uIConfigBuild = this.a.o;
        if (uIConfigBuild == null || !uIConfigBuild.isAutoClosAuthPage()) {
            return;
        }
        this.a.closeOauthPage();
    }

    @Override // com.rich.oauth.callback.TokenResultCallback
    public void getTokenSuccess(String str) {
        RichAuth richAuth = this.a;
        TokenCallback tokenCallback = richAuth.h;
        if (tokenCallback != null) {
            RichLogUtil.e(richAuth.n);
            tokenCallback.onTokenSuccessResult(str, richAuth.n.equals("1") ? "telecom" : richAuth.n.equals("2") ? "mobile" : richAuth.n.equals("3") ? "unicom" : EnvironmentCompat.MEDIA_UNKNOWN);
        }
        UIConfigBuild uIConfigBuild = this.a.o;
        if (uIConfigBuild == null || !uIConfigBuild.isAutoClosAuthPage()) {
            return;
        }
        this.a.closeOauthPage();
    }
}
