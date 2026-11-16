package rich;

import com.rich.oauth.callback.LoginListener;
import com.rich.oauth.callback.ModelCallback;

/* loaded from: classes2.dex */
public class m3 implements k3, ModelCallback {
    public l3 a = new l3(this);
    public LoginListener b;

    public m3(LoginListener loginListener) {
        this.b = loginListener;
    }

    @Override // com.rich.oauth.callback.ModelCallback
    public void onFailureResult(String str, int i) {
        LoginListener loginListener = this.b;
        if (loginListener != null) {
            loginListener.onLoginFailureListener(str, i);
        }
    }

    @Override // com.rich.oauth.callback.ModelCallback
    public void onGetAccessCodeFailureResult(String str, int i) {
        LoginListener loginListener = this.b;
        if (loginListener != null) {
            loginListener.onAccesscodeFailureListener(str, i);
        }
    }

    @Override // com.rich.oauth.callback.ModelCallback
    public void onGetAccessCodeSuccessResult(String str, int i) {
        LoginListener loginListener = this.b;
        if (loginListener != null) {
            loginListener.onAccesscodeSuccessListener(str, i);
        }
    }

    @Override // com.rich.oauth.callback.ModelCallback
    public void onPreLoginFailuresResult(String str, int i) {
        LoginListener loginListener = this.b;
        if (loginListener != null) {
            loginListener.onPreLoginFailureListener(str, i);
        }
    }

    @Override // com.rich.oauth.callback.ModelCallback
    public void onPreLoginSuccessResult(String str, int i) {
        LoginListener loginListener = this.b;
        if (loginListener != null) {
            loginListener.onPreLoginSuccessListener(str, i);
        }
    }

    @Override // com.rich.oauth.callback.ModelCallback
    public void onSuccessResult(String str, int i) {
        LoginListener loginListener = this.b;
        if (loginListener != null) {
            loginListener.onLoginSuccessListener(str, i);
        }
    }
}
