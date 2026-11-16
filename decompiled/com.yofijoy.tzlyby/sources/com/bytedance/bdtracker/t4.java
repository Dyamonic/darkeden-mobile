package com.bytedance.bdtracker;

import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class t4 {
    public final ArrayList<String> a = new ArrayList<>();

    public final void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder a = a.a(str);
        a.append(File.separator);
        a.append(str2);
        a.append(".dat");
        File file = new File(a.toString());
        if (file.exists()) {
            file.delete();
        }
    }
}
