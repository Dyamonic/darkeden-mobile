package rich;

import com.rich.oauth.callback.PhoneNumberCertificationCallback;
import com.rich.oauth.util.JsonBuildUtil;
import rich.q;

/* loaded from: classes2.dex */
public class s3 implements q.a {
    public final /* synthetic */ PhoneNumberCertificationCallback a;

    public s3(t3 t3Var, PhoneNumberCertificationCallback phoneNumberCertificationCallback) {
        this.a = phoneNumberCertificationCallback;
    }

    @Override // rich.q.a
    public void a(u uVar) {
        k kVar = uVar.a;
        if (kVar == null) {
            this.a.onPhoneNumberCertificationFailure(JsonBuildUtil.getJsonString(55558, "数据解析异常"));
        } else {
            this.a.onPhoneNumberCertificationFailure(new String(kVar.b));
        }
    }
}
