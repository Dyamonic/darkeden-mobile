package rich;

import android.view.View;

/* loaded from: classes2.dex */
public class v2 implements View.OnClickListener {
    public final /* synthetic */ x2 a;

    public v2(x2 x2Var) {
        this.a = x2Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.a.stopLoading();
        this.a.a();
    }
}
