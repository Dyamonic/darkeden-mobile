package com.tencent.mm.opensdk.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.tencent.mm.opensdk.a.a.b;
import com.tencent.mm.opensdk.b.d;
import com.tencent.mm.opensdk.constants.Build;
import com.tencent.mm.opensdk.constants.ConstantsAPI;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: com.tencent.mm.opensdk.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0044a {
        public String a;
        public String b;
        public String c;
        public Bundle d;
        public int flags = -1;

        public final String toString() {
            return "targetPkgName:" + this.a + ", targetClassName:" + this.b + ", content:" + this.c + ", flags:" + this.flags + ", bundle:" + this.d;
        }
    }

    public static boolean a(Context context, C0044a c0044a) {
        String str;
        if (context == null) {
            str = "send fail, invalid argument";
        } else if (d.a(c0044a.a)) {
            str = "send fail, invalid targetPkgName, targetPkgName = " + c0044a.a;
        } else {
            if (d.a(c0044a.b)) {
                c0044a.b = c0044a.a + ".wxapi.WXEntryActivity";
            }
            Log.d("MicroMsg.SDK.MMessageAct", "send, targetPkgName = " + c0044a.a + ", targetClassName = " + c0044a.b);
            Intent intent = new Intent();
            intent.setClassName(c0044a.a, c0044a.b);
            if (c0044a.d != null) {
                intent.putExtras(c0044a.d);
            }
            String packageName = context.getPackageName();
            intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, c0044a.c);
            intent.putExtra(ConstantsAPI.CHECK_SUM, b.a(c0044a.c, Build.SDK_INT, packageName));
            if (c0044a.flags == -1) {
                intent.addFlags(268435456).addFlags(134217728);
            } else {
                intent.setFlags(c0044a.flags);
            }
            try {
                context.startActivity(intent);
                Log.d("MicroMsg.SDK.MMessageAct", "send mm message, intent=" + intent);
                return true;
            } catch (Exception e) {
                str = "send fail, ex = " + e.getMessage();
            }
        }
        Log.e("MicroMsg.SDK.MMessageAct", str);
        return false;
    }
}
