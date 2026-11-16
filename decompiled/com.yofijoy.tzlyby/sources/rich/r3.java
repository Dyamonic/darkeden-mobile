package rich;

import com.rich.oauth.callback.PhoneNumberCertificationCallback;
import org.json.JSONObject;
import rich.q;

/* loaded from: classes2.dex */
public class r3 implements q.b {
    public final /* synthetic */ PhoneNumberCertificationCallback a;

    public r3(t3 t3Var, PhoneNumberCertificationCallback phoneNumberCertificationCallback) {
        this.a = phoneNumberCertificationCallback;
    }

    @Override // rich.q.b
    public void a(Object obj) {
        this.a.onPhoneNumberCertificationSuccess(((JSONObject) obj).toString());
    }
}
