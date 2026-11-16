package com.qq.gdt.action.multioprocess.a;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class a {
    private static volatile a a;
    private List<b> b = new ArrayList();

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                    a.a(new c());
                }
            }
        }
        return a;
    }

    private void a(b bVar) {
        this.b.add(bVar);
    }

    public String b() {
        Iterator<b> it = this.b.iterator();
        while (it.hasNext()) {
            String a2 = it.next().a();
            if (!TextUtils.isEmpty(a2)) {
                return a2;
            }
        }
        return null;
    }
}
