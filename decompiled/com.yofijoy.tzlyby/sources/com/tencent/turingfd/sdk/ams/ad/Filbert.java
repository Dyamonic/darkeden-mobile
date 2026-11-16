package com.tencent.turingfd.sdk.ams.ad;

import android.os.Process;
import com.tencent.turingfd.sdk.ams.ad.Virgo;

/* loaded from: classes2.dex */
public class Filbert {
    public static String a() {
        StringBuilder sb = new StringBuilder();
        int myPid = Process.myPid();
        Virgo.Cdo b = Virgo.b(myPid);
        if (b == null) {
            return sb.toString();
        }
        int i = b.e;
        if (i == 0) {
            return sb.toString();
        }
        if (i == myPid) {
            return sb.toString();
        }
        sb.append(myPid);
        sb.append(",");
        sb.append(b.b);
        sb.append(",");
        sb.append(b.c);
        sb.append(",");
        sb.append(i);
        sb.append(",");
        Virgo.Cdo b2 = Virgo.b(i);
        if (b2 != null) {
            sb.append(b2.d);
            sb.append(",");
            sb.append(b2.c);
            sb.append(",");
            sb.append(b2.b);
        }
        return sb.toString();
    }
}
