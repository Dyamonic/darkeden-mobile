package com.qq.gdt.action.g;

import com.rich.oauth.util.RichLogUtil;
import java.util.Arrays;

/* loaded from: classes.dex */
public class d {
    public static boolean a(String str, int i) {
        if (com.qq.gdt.action.e.a().g() == null) {
            return false;
        }
        int e = com.qq.gdt.action.b.a(com.qq.gdt.action.e.a().g()).e();
        if (e == 0) {
            if (str != null) {
                return !"TICKET".equals(str);
            }
            return true;
        }
        if (e == 2) {
            return false;
        }
        if (e != 4 || Arrays.asList(Integer.valueOf(RichLogUtil.MAX_LEN), 9001, 9002, 9003).contains(Integer.valueOf(i)) || str == null) {
            return true;
        }
        return !"TICKET".equals(str);
    }
}
