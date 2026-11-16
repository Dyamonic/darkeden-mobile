package com.bytedance.ads.convert.hume.readapk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.bytedance.ads.convert.hume.readapk.signaturev1.V1SchemeUtil;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HumeSDK {
    private static final int APK_INNER_BLOCK_ID = 1903654775;
    private static final int APK_OUTER_BLOCK_ID = -1721342362;
    private static final int APK_TRACE_BLOCK_ID = 1903654776;
    public static final String TAG = "HumeSDK";
    private static String[] mApkInfos = new String[3];
    private static volatile boolean mIsInit;

    private static String getApkPath(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                return null;
            }
            return applicationInfo.sourceDir;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getChannel(Context context) {
        if (!mIsInit) {
            initApkInfo(context);
            mIsInit = true;
        }
        Map<String, String> map = getMap(getExtra(context).trim());
        return (map == null || map.size() <= 0) ? "" : map.get("hume_channel_id");
    }

    public static String getExtra(Context context) {
        if (!mIsInit) {
            initApkInfo(context);
            mIsInit = true;
        }
        return !TextUtils.isEmpty(mApkInfos[0]) ? mApkInfos[0] : !TextUtils.isEmpty(mApkInfos[1]) ? mApkInfos[1] : "";
    }

    private static Map<String, String> getMap(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            HashMap hashMap = new HashMap();
            while (keys.hasNext()) {
                String obj = keys.next().toString();
                hashMap.put(obj, jSONObject.getString(obj));
            }
            return hashMap;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static Map<String, String> getTraceInfo(Context context) {
        if (!mIsInit) {
            initApkInfo(context);
            mIsInit = true;
        }
        Map<String, String> map = getMap(mApkInfos[2]);
        return map == null ? new HashMap() : map;
    }

    private static void initApkInfo(Context context) {
        String apkPath = getApkPath(context);
        if (TextUtils.isEmpty(apkPath)) {
            mApkInfos = new String[]{"", "", ""};
            return;
        }
        File file = new File(apkPath);
        String[] string = PayloadReader.getString(file, new int[]{APK_OUTER_BLOCK_ID, APK_INNER_BLOCK_ID, APK_TRACE_BLOCK_ID});
        if (string == null) {
            string = mApkInfos;
        }
        mApkInfos = string;
        if (string.length >= 2 && TextUtils.isEmpty(string[0]) && TextUtils.isEmpty(mApkInfos[1])) {
            String readChannel = V1SchemeUtil.readChannel(file);
            String[] strArr = mApkInfos;
            if (readChannel == null) {
                readChannel = "";
            }
            strArr[0] = readChannel;
        }
        String[] strArr2 = mApkInfos;
        if (strArr2.length < 3 || TextUtils.isEmpty(strArr2[2])) {
            return;
        }
        int length = mApkInfos[2].length();
        if (length <= 4) {
            mApkInfos[2] = "";
        } else {
            String[] strArr3 = mApkInfos;
            strArr3[2] = strArr3[2].substring(2, length - 2);
        }
    }
}
