package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.os.Process;
import java.io.File;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class Melon {
    public static final String a = Cfinally.a(Cfinally.A0);
    public static final String b = Cfinally.a(Cfinally.B0);
    public static boolean c = false;

    public static void a(Context context, Hickory hickory) {
        try {
            if (c) {
                return;
            }
            c = true;
            long a2 = hickory.a(context, "502");
            int myUid = Process.myUid();
            if (a2 == 0 || myUid == 0 || myUid == a2) {
                return;
            }
            hickory.a(context, "101", "", true);
            hickory.b(context, 0L);
            HashMap hashMap = new HashMap();
            hashMap.put("901", "");
            Hickory.a(context, hashMap);
            new File(a(context)).delete();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String a(Context context) {
        File dir = context.getDir(a, 0);
        if (dir == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(dir.getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append("1");
        File file = new File(sb.toString());
        if (!file.exists() && !file.mkdirs()) {
            return "";
        }
        return file.getAbsolutePath() + str + b;
    }
}
