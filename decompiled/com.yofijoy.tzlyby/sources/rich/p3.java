package rich;

import com.rich.oauth.callback.InitResultCallback;
import com.rich.oauth.util.JsonBuildUtil;
import rich.q;

/* loaded from: classes2.dex */
public class p3 implements q.a {
    public final /* synthetic */ InitResultCallback a;

    public p3(q3 q3Var, InitResultCallback initResultCallback) {
        this.a = initResultCallback;
    }

    @Override // rich.q.a
    public void a(u uVar) {
        k kVar = uVar.a;
        if (kVar == null) {
            this.a.initFailure(JsonBuildUtil.getJsonString(81010, "初始化失败，请检查网络"));
            return;
        }
        InitResultCallback initResultCallback = this.a;
        StringBuilder sb = new StringBuilder();
        StringBuilder a = a.a("初始化接口失败：");
        a.append(uVar.getMessage());
        sb.append(JsonBuildUtil.getJsonString(50004, a.toString()));
        sb.append(uVar.toString());
        sb.append(kVar.toString());
        initResultCallback.initFailure(sb.toString());
    }
}
