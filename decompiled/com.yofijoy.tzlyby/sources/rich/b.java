package rich;

import android.content.Intent;

/* loaded from: classes2.dex */
public class b extends u {
    public Intent b;

    public b(k kVar) {
        super(kVar);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.b != null ? "User needs to (re)enter credentials." : super.getMessage();
    }
}
