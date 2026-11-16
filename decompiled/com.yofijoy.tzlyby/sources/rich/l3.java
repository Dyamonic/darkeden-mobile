package rich;

import android.content.Context;
import com.rich.oauth.callback.ModelCallback;
import com.rich.oauth.core.UIConfigBuild;
import rich.f3;

/* loaded from: classes2.dex */
public class l3 implements j3 {
    public ModelCallback a;

    public l3(ModelCallback modelCallback) {
        this.a = modelCallback;
    }

    public void a(Context context, f3.a aVar) {
        n3.a().b(context, this.a, aVar);
    }

    public void a(Context context, f3.a aVar, UIConfigBuild uIConfigBuild) {
        n3.a().a(context, this.a, aVar, uIConfigBuild);
    }

    public void a(String str) {
        n3 a = n3.a();
        a.b.b(str);
        a.a.h = a.b.a();
    }

    public void b(Context context, f3.a aVar) {
        n3.a().a(context, this.a, aVar);
    }
}
