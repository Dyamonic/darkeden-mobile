package rich;

import android.content.SharedPreferences;

/* loaded from: classes2.dex */
public class i2 {
    public final SharedPreferences.Editor a;

    public i2(SharedPreferences.Editor editor) {
        this.a = editor;
    }

    public void a(String str, long j) {
        this.a.putLong(b0.a(str), j);
    }
}
