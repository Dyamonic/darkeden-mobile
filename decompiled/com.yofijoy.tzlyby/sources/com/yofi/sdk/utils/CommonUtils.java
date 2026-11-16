package com.yofi.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TreeSet;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class CommonUtils {
    private static CommonUtils myself;
    private Context mContext;

    public static CommonUtils instance() {
        if (myself == null) {
            myself = new CommonUtils();
        }
        return myself;
    }

    public void init(Context context) {
        this.mContext = context;
    }

    public String getSign(JSONObject params) {
        String appKey = YoFiSdkImp.instance().getAppKey();
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
        String appKey = YoFiSdkImp.instance().getAppKey();
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

    public static boolean isDebug(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public String getPassword(String password) {
        return md5("hd" + password + "1n").toLowerCase();
    }

    public boolean isWeixinAvilible(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                if (installedPackages.get(i).packageName.equals(ConstantsAPI.WXApp.WXAPP_PACKAGE_NAME)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isValidPassword(String password) {
        return Pattern.compile("^[0-9a-zA-Z_]{1,}$", 2).matcher(password).matches();
    }

    public Bitmap getImageFromAssetsFile(String fileName) {
        Bitmap bitmap = null;
        try {
            InputStream open = this.mContext.getAssets().open(fileName);
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
            InputStream open = this.mContext.getAssets().open(fileName);
            drawable = Drawable.createFromStream(open, (String) null);
            open.close();
            return drawable;
        } catch (IOException e) {
            e.printStackTrace();
            return drawable;
        }
    }

    public boolean isNetWorkActive() {
        ConnectivityManager connectivityManager;
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        Context context = this.mContext;
        return (context == null || (activeNetwork = (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")).getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || !networkCapabilities.hasCapability(12) || !networkCapabilities.hasCapability(16)) ? false : true;
    }

    public int dpToPx(int dp) {
        return (int) ((dp * this.mContext.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public String getRandomString(int length) {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < length; i++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(random.nextInt(62)));
        }
        return stringBuffer.toString();
    }

    public long getCurrentDay() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(calendar.get(1), calendar.get(2), calendar.get(5), 0, 0, 0);
        return calendar.getTime().getTime() / 1000;
    }

    public String getAppVersionCode(Context context) {
        int i = 0;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i + "";
    }

    public String getAppVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getAppName(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getUniqueID(android.content.Context r2) {
        /*
            r1 = this;
            android.content.ContentResolver r2 = r2.getContentResolver()
            java.lang.String r0 = "android_id"
            java.lang.String r2 = android.provider.Settings.Secure.getString(r2, r0)
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 != 0) goto L2b
            java.lang.String r0 = "9774d56d682e549c"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L2b
            java.lang.String r0 = "utf8"
            byte[] r2 = r2.getBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> L27
            java.util.UUID r2 = java.util.UUID.nameUUIDFromBytes(r2)     // Catch: java.io.UnsupportedEncodingException -> L27
            java.lang.String r2 = r2.toString()     // Catch: java.io.UnsupportedEncodingException -> L27
            goto L2c
        L27:
            r2 = move-exception
            r2.printStackTrace()
        L2b:
            r2 = 0
        L2c:
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 == 0) goto L36
            java.lang.String r2 = r1.getUUID()
        L36:
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 == 0) goto L44
            java.util.UUID r2 = java.util.UUID.randomUUID()
            java.lang.String r2 = r2.toString()
        L44:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yofi.sdk.utils.CommonUtils.getUniqueID(android.content.Context):java.lang.String");
    }

    private String getUUID() {
        String str = "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
        try {
            return new UUID(str.hashCode(), Build.SERIAL.hashCode()).toString();
        } catch (Exception unused) {
            return new UUID(str.hashCode(), -905839116).toString();
        }
    }

    public String getMac(Context context) {
        WifiInfo wifiInfo;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                    if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                        byte[] hardwareAddress = networkInterface.getHardwareAddress();
                        if (hardwareAddress == null) {
                            return "";
                        }
                        StringBuilder sb = new StringBuilder();
                        for (byte b : hardwareAddress) {
                            sb.append(String.format("%02X:", Byte.valueOf(b)));
                        }
                        if (sb.length() > 0) {
                            sb.deleteCharAt(sb.length() - 1);
                        }
                        return sb.toString();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return "";
        }
        if (Build.VERSION.SDK_INT >= 23 && Build.VERSION.SDK_INT < 24) {
            try {
                LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat/sys/class/net/wlan0/address").getInputStream()));
                String str = "";
                while (str != null) {
                    str = lineNumberReader.readLine();
                    if (str != null) {
                        return str.trim();
                    }
                }
                return "";
            } catch (IOException e2) {
                e2.printStackTrace();
                return "";
            }
        }
        if (Build.VERSION.SDK_INT >= 23 || context == null) {
            return "";
        }
        try {
            wifiInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        } catch (Exception e3) {
            e3.printStackTrace();
            wifiInfo = null;
        }
        if (wifiInfo == null) {
            return null;
        }
        String macAddress = wifiInfo.getMacAddress();
        return !TextUtils.isEmpty(macAddress) ? macAddress.toUpperCase(Locale.ENGLISH) : macAddress;
    }

    public boolean isEmailValid(String email) {
        return Pattern.compile("^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$", 2).matcher(email).matches();
    }

    public String stampToDate(long lt) {
        return new SimpleDateFormat("MM月dd日 HH:mm").format(new Date(lt));
    }

    public File getFile(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 80, byteArrayOutputStream);
        File file = new File(Environment.getExternalStorageDirectory() + "/" + System.currentTimeMillis() + ".jpg");
        try {
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            byte[] bArr = new byte[102400];
            while (true) {
                int read = byteArrayInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file;
    }

    public static boolean isMobileConnected(Context context) {
        NetworkInfo activeNetworkInfo;
        return context != null && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.getType() == 0 && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected();
    }

    public static boolean isMobileDataEnabled(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return false;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return false;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return false;
        }
    }
}
