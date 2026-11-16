package rich;

import com.rich.oauth.callback.PhoneNumberCertificationCallback;
import com.rich.oauth.core.RichAuth;

/* loaded from: classes2.dex */
public class i3 implements PhoneNumberCertificationCallback {
    public final /* synthetic */ RichAuth a;

    public i3(RichAuth richAuth) {
        this.a = richAuth;
    }

    @Override // com.rich.oauth.callback.PhoneNumberCertificationCallback
    public void onPhoneNumberCertificationFailure(String str) {
        this.a.j.onPhoneNumberCertificationFailure(str);
    }

    @Override // com.rich.oauth.callback.PhoneNumberCertificationCallback
    public void onPhoneNumberCertificationSuccess(String str) {
        this.a.j.onPhoneNumberCertificationSuccess(str);
    }
}
