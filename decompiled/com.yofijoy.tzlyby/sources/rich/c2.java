package rich;

import android.util.Log;

/* loaded from: classes2.dex */
public class c2 {
    public static boolean a;

    public static void a(String str, String str2) {
        if (a) {
            Log.e("CMCC-SDK:" + str, "" + str2);
        }
    }

    public static void b(String str, String str2) {
        if (a) {
            Log.d("CMCC-SDK:" + str, "" + str2);
        }
    }
}
