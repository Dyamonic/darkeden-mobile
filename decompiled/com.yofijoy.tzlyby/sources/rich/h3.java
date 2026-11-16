package rich;

import com.rich.oauth.callback.CertifiTokenCallback;
import com.rich.oauth.callback.TokenResultCallback;
import com.rich.oauth.core.RichAuth;

/* loaded from: classes2.dex */
public class h3 implements TokenResultCallback {
    public final /* synthetic */ CertifiTokenCallback a;

    public h3(RichAuth richAuth, CertifiTokenCallback certifiTokenCallback) {
        this.a = certifiTokenCallback;
    }

    @Override // com.rich.oauth.callback.TokenResultCallback
    public void getTokenFailure(String str) {
        this.a.onGetCertifiTokenFailureResult(str);
    }

    @Override // com.rich.oauth.callback.TokenResultCallback
    public void getTokenSuccess(String str) {
        this.a.onGetCertifiTokenSuccessResult(str, null);
    }
}
