package com.juhe.juhesdk.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.dj.tools.manager.DJ_Utils;
import com.juhe.juhesdk.app.JuHeApplication;
import com.juhe.juhesdk.middle.common.Constants;
import com.juhe.juhesdk.middle.manager.ConfigManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.TreeSet;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CommonUtils {
    private static CommonUtils myself;
    private Context mActivityContext;
    private String mDeviceId = "";

    public String getJuHeSDKVersion() {
        return Constants.JUHE_SDK_VERSION;
    }

    public static CommonUtils instance() {
        if (myself == null) {
            myself = new CommonUtils();
        }
        return myself;
    }

    public void init(Activity activity) {
        setActivityContext(activity);
    }

    public Context getActivityContext() {
        return this.mActivityContext;
    }

    public void setActivityContext(Activity activity) {
        this.mActivityContext = activity;
    }

    private Context getJuheAppContext() {
        return JuHeApplication.getContextObject();
    }

    public String getmDeviceId() {
        return this.mDeviceId;
    }

    public void setmDeviceId(String mDeviceId) {
        this.mDeviceId = mDeviceId;
    }

    public String getSign(JSONObject params) {
        String appKey = ConfigManager.instance().getAppKey();
        StringBuilder sb = new StringBuilder();
        Iterator<String> keys = params.keys();
        TreeSet treeSet = new TreeSet();
        while (keys.hasNext()) {
            treeSet.add(keys.next());
        }
        Iterator it = treeSet.iterator();
        sb.append(appKey);
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!"sign".equals(str)) {
                try {
                    String obj = params.get(str).toString();
                    sb.append(str);
                    sb.append(obj);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        sb.append(appKey);
        return md5(sb.toString()).toLowerCase();
    }

    public String getSign(Map<String, String> params) {
        String appKey = ConfigManager.instance().getAppKey();
        StringBuilder sb = new StringBuilder();
        TreeSet treeSet = new TreeSet();
        Iterator<String> it = params.keySet().iterator();
        while (it.hasNext()) {
            treeSet.add(it.next());
        }
        Iterator it2 = treeSet.iterator();
        sb.append(appKey);
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (!"sign".equals(str)) {
                try {
                    String str2 = params.get(str).toString();
                    sb.append(str);
                    sb.append(str2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        sb.append(appKey);
        return md5(sb.toString()).toLowerCase();
    }

    public String md5(String source) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(source.getBytes());
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[32];
            int i = 0;
            for (int i2 = 0; i2 < 16; i2++) {
                byte b = digest[i2];
                int i3 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i = i3 + 1;
                cArr2[i3] = cArr[b & 15];
            }
            return new String(cArr2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getPassword(String password) {
        return md5("hd" + password + "1n").toLowerCase();
    }

    public Bitmap getImageFromAssetsFile(String fileName) {
        Bitmap bitmap = null;
        try {
            InputStream open = getJuheAppContext().getAssets().open(fileName);
            bitmap = BitmapFactory.decodeStream(open);
            open.close();
            return bitmap;
        } catch (IOException e) {
            e.printStackTrace();
            return bitmap;
        }
    }

    public Drawable getImageDrawableFromAssetsFile(String fileName) {
        Drawable drawable = null;
        try {
            InputStream open = getJuheAppContext().getAssets().open(fileName);
            drawable = Drawable.createFromStream(open, (String) null);
            open.close();
            return drawable;
        } catch (IOException e) {
            e.printStackTrace();
            return drawable;
        }
    }

    public boolean isNetWorkActive() {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) getJuheAppContext().getSystemService("connectivity");
        Network activeNetwork = connectivityManager.getActiveNetwork();
        return activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16);
    }

    public int dpToPx(int dp) {
        return (int) ((dp * getJuheAppContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public String getRandomString(int length) {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < length; i++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(random.nextInt(62)));
        }
        return stringBuffer.toString();
    }

    public int getCurrentDay() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(calendar.get(1), calendar.get(2), calendar.get(5), 0, 0, 0);
        return (int) (calendar.getTime().getTime() / 1000);
    }

    public String getAppName() {
        try {
            return getJuheAppContext().getResources().getString(getJuheAppContext().getPackageManager().getPackageInfo(getJuheAppContext().getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getAppVersionCode() {
        int i = 0;
        try {
            i = getJuheAppContext().getPackageManager().getPackageInfo(getJuheAppContext().getPackageName(), 0).versionCode;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i + "";
    }

    public String getAppVersionName() {
        try {
            return getJuheAppContext().getPackageManager().getPackageInfo(getJuheAppContext().getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getPackageName() {
        try {
            return getJuheAppContext().getPackageName();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getChannelId() {
        try {
            if ((ConfigManager.instance().getJuheChannel() + "").equals("57")) {
                return DJ_Utils.getChannelId(getJuheAppContext());
            }
            return getJuheAppContext().getResources().getString(getJuheAppContext().getResources().getIdentifier("yofi_game_channel", "string", getJuheAppContext().getPackageName()));
        } catch (Exception unused) {
            return "";
        }
    }

    @Deprecated
    public String getGameChannelId() {
        return getChannelId();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getUniqueID() {
        /*
            r2 = this;
            android.content.Context r0 = r2.getJuheAppContext()
            android.content.ContentResolver r0 = r0.getContentResolver()
            java.lang.String r1 = "android_id"
            java.lang.String r0 = android.provider.Settings.Secure.getString(r0, r1)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L2f
            java.lang.String r1 = "9774d56d682e549c"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L2f
            java.lang.String r1 = "utf8"
            byte[] r0 = r0.getBytes(r1)     // Catch: java.io.UnsupportedEncodingException -> L2b
            java.util.UUID r0 = java.util.UUID.nameUUIDFromBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> L2b
            java.lang.String r0 = r0.toString()     // Catch: java.io.UnsupportedEncodingException -> L2b
            goto L30
        L2b:
            r0 = move-exception
            r0.printStackTrace()
        L2f:
            r0 = 0
        L30:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L3a
            java.lang.String r0 = r2.getUUID()
        L3a:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L48
            java.util.UUID r0 = java.util.UUID.randomUUID()
            java.lang.String r0 = r0.toString()
        L48:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.juhe.juhesdk.utils.CommonUtils.getUniqueID():java.lang.String");
    }

    public String getNoPermissionDeviceUniqueId() {
        String orCreate = NoPermissionDeviceFingerprint.getOrCreate(getActivityContext());
        String generateFingerprint = NoPermissionDeviceFingerprint.generateFingerprint(getActivityContext());
        String tryRestoreFingerprint = NoPermissionDeviceFingerprint.tryRestoreFingerprint(getActivityContext());
        if (tryRestoreFingerprint != null && !generateFingerprint.substring(0, 16).equals(tryRestoreFingerprint.substring(0, 16))) {
            NoPermissionDeviceFingerprint.handleDeviceChanged(getActivityContext());
        }
        return orCreate;
    }

    private String getUUID() {
        String str = "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
        try {
            return new UUID(str.hashCode(), Build.SERIAL.hashCode()).toString();
        } catch (Exception unused) {
            return new UUID(str.hashCode(), -905839116).toString();
        }
    }

    public String getIMEI() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) getJuheAppContext().getSystemService("phone");
            Method method = telephonyManager.getClass().getMethod("getImei", Integer.TYPE);
            String str = (String) method.invoke(telephonyManager, 0);
            String str2 = (String) method.invoke(telephonyManager, 1);
            if (str2 == null || str2.length() <= 0) {
                return str;
            }
            return str + "," + str2;
        } catch (Exception unused) {
            return "";
        }
    }

    public String getFromAssets(Activity activity, String fileName) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(activity.getResources().getAssets().open(fileName)));
            String str = "";
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return str;
                }
                str = str + readLine;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
