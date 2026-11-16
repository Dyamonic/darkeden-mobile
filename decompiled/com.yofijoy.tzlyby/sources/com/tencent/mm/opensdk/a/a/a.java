package com.tencent.mm.opensdk.a.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.tencent.mm.opensdk.b.d;
import com.tencent.mm.opensdk.constants.Build;
import com.tencent.mm.opensdk.constants.ConstantsAPI;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: com.tencent.mm.opensdk.a.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0045a {
        public String c;
        public Bundle d;
        public String e;
        public String f;
        public long g;
    }

    public static boolean a(Context context, C0045a c0045a) {
        String str;
        if (context == null) {
            str = "send fail, invalid argument";
        } else {
            if (!d.a(c0045a.f)) {
                String str2 = null;
                if (!d.a(c0045a.e)) {
                    str2 = c0045a.e + ".permission.MM_MESSAGE";
                }
                Intent intent = new Intent(c0045a.f);
                if (c0045a.d != null) {
                    intent.putExtras(c0045a.d);
                }
                String packageName = context.getPackageName();
                intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
                intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
                intent.putExtra(ConstantsAPI.CONTENT, c0045a.c);
                intent.putExtra(ConstantsAPI.APP_SUPORT_CONTENT_TYPE, c0045a.g);
                intent.putExtra(ConstantsAPI.CHECK_SUM, b.a(c0045a.c, Build.SDK_INT, packageName));
                context.sendBroadcast(intent, str2);
                Log.d("MicroMsg.SDK.MMessage", "send mm message, intent=" + intent + ", perm=" + str2);
                return true;
            }
            str = "send fail, action is null";
        }
        Log.e("MicroMsg.SDK.MMessage", str);
        return false;
    }
}
