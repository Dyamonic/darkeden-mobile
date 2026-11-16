package org.cocos2dx.lua;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import java.util.List;

/* loaded from: classes3.dex */
public class WeChatMiniProgramLauncher {
    private static final String WECHAT_PACKAGE_NAME = "com.tencent.mm";
    private static Context mContext;

    public static void setContext(Context context) {
        mContext = context;
    }

    public static boolean isWeChatInstalled() {
        try {
            PackageManager packageManager = mContext.getPackageManager();
            try {
                packageManager.getPackageInfo("com.tencent.mm", 0);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
                List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("weixin://")), 0);
                if (queryIntentActivities != null && queryIntentActivities.size() != 0) {
                    return queryIntentActivities.size() > 0;
                }
                return checkWeChatByLaunching();
            }
        } catch (Exception e) {
            e.printStackTrace();
            return checkWeChatByLaunching();
        }
    }

    private static boolean checkWeChatByLaunching() {
        try {
            return mContext.getPackageManager().getLaunchIntentForPackage("com.tencent.mm") != null;
        } catch (Exception unused) {
            return false;
        }
    }

    private static void showToast(final String str) {
        Context context = mContext;
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(new Runnable() { // from class: org.cocos2dx.lua.WeChatMiniProgramLauncher.1
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(WeChatMiniProgramLauncher.mContext, str, 0).show();
                }
            });
        }
    }

    public static void launchMiniProgram(String str) {
        Log.d("launchMiniProgram", "getInstance() called");
        if (mContext == null) {
            Log.e("WeChatLauncher", "Context is null, please call setContext first.");
            return;
        }
        if (!isWeChatInstalled()) {
            showToast("请先安装微信");
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            if (intent.resolveActivity(mContext.getPackageManager()) != null) {
                mContext.startActivity(intent);
            } else {
                showToast("无法打开微信，请检查微信版本");
            }
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(mContext, "启动微信失败，请检查是否安装了微信", 0).show();
        }
    }
}
