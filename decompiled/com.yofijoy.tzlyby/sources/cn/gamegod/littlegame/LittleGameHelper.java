package cn.gamegod.littlegame;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.juhe.juhesdk.utils.CommonUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lua.AppActivity;

/* loaded from: classes.dex */
public class LittleGameHelper extends Cocos2dxActivity {
    public static String TAG = "LittleGameHelper";
    public static Activity mActivity;
    public static Activity mActivityInstance;
    private AppActivity mLittleGame;
    float mBatteryPower = 0.0f;
    private int m_progress = 0;

    public static String getAdjustNotchScreenHeight() {
        return "";
    }

    public static native void onProgress(int i);

    public void active(String str) {
    }

    public native void clearSessionCallback();

    public void create(String str) {
    }

    public void initSdk() {
    }

    public void level(int i, String str) {
    }

    public native void loginCallback(int i, String str);

    public void loginStatistic(String str) {
    }

    public void logout() {
    }

    public native void micCallback(String str);

    public native void onShareSuccess();

    public void openPage(String str) {
    }

    public native void paymentCallback(int i, String str);

    public void reLogin(int i, int i2) {
    }

    public native void reLoginCallback(int i);

    public native void setCpServerId(String str);

    public LittleGameHelper() {
        mActivity = this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void setActivityInstance(Activity activity) {
        mActivityInstance = activity;
    }

    public void setLittleGame(AppActivity appActivity) {
        this.mLittleGame = appActivity;
    }

    public static Object getActivityInstance() {
        return mActivity;
    }

    public static String getMacAddress() {
        String macAddress = ((WifiManager) mActivityInstance.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
        if (macAddress != null && macAddress.length() > 0 && !"02:00:00:00:00:00".equals(macAddress)) {
            return macAddress;
        }
        try {
            return "IMEI:" + ((TelephonyManager) mActivityInstance.getSystemService("phone")).getDeviceId();
        } catch (Exception unused) {
            return "IMEI: CAN NOT GET IMEI";
        }
    }

    public void setBattleryPower(float f) {
        this.mBatteryPower = f;
    }

    public void setSoftKeyboardHeight(float f) {
        Log.d(TAG, "LittleGameHelper setSoftKeyboardHeight");
    }

    public static String getAppName() {
        return getContext().getPackageName();
    }

    public static String getAppVersion() {
        try {
            return getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 16384).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return "0.0.0.1";
        }
    }

    public static String getAppBuild() {
        try {
            return String.valueOf(getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 16384).versionCode);
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static String getUuid() {
        return CommonUtils.instance().getUniqueID();
    }

    public float getBatteryPower() {
        return this.mBatteryPower;
    }

    public void login(int i) {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.login(i);
        }
    }

    public void payment(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.payment(str, str2, str3, str4, str5, str6, str7, str8, str9, str10);
        }
    }

    public void showFloat() {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.showFloat();
        }
    }

    public void jumpToComment() {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.jumpToComment();
        }
    }

    public void clearSession() {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.clearSession();
        }
    }

    public void statisLogin(String str, String str2, String str3, String str4, String str5, String str6) {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.statisLogin(str, str2, str3, str4, str5, str6);
        }
    }

    public void statisCreateRole(String str, String str2, String str3, String str4, String str5, String str6) {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.statisCreateRole(str, str2, str3, str4, str5, str6);
        }
    }

    public void statisLevelup(String str, String str2, String str3, String str4, String str5, String str6) {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.statisLevelup(str, str2, str3, str4, str5, str6);
        }
    }

    public String getPath() {
        String str = Environment.getExternalStorageDirectory().getPath() + "/Android/obb/";
        String packageName = getContext().getPackageName();
        String str2 = (str + packageName) + File.separator;
        try {
            str2 = str2 + ("main." + getContext().getPackageManager().getPackageInfo(packageName, 0).versionCode + "." + packageName + ".obb");
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        Log.d(TAG, "path is " + str2);
        return str2;
    }

    public int getObbPath() {
        return !new File(getPath()).exists() ? 0 : 1;
    }

    public void createDirectoryIfNeeded(String str) {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            return;
        }
        file.mkdirs();
    }

    public static long getZipSize(String str) {
        try {
            Enumeration<? extends ZipEntry> entries = new ZipFile(str).entries();
            long j = 0;
            while (entries.hasMoreElements()) {
                j += entries.nextElement().getSize();
            }
            return j;
        } catch (IOException unused) {
            return 0L;
        }
    }

    public void unZip(File file, String str, String str2) {
        Log.d(TAG, "unZip " + file.getName() + " to " + str);
        try {
            createDirectoryIfNeeded(str);
            long zipSize = getZipSize(str2);
            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(file));
            long j = 0;
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    String name = nextEntry.getName();
                    if (nextEntry.isDirectory()) {
                        new File(str + File.separator + name.substring(0, name.length() - 1)).mkdirs();
                    } else {
                        File file2 = new File(str + File.separator + name);
                        createDirectoryIfNeeded(file2.getParent());
                        file2.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = zipInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            j += read;
                            int i = (int) ((100 * j) / zipSize);
                            if (i >= 100 && this.m_progress < 110) {
                                this.m_progress = i + 10;
                                onProgress(i);
                            } else if (i >= this.m_progress) {
                                int i2 = i + 10;
                                this.m_progress = i2;
                                onProgress(i2);
                            }
                            fileOutputStream.write(bArr, 0, read);
                            fileOutputStream.flush();
                        }
                        fileOutputStream.close();
                    }
                } else {
                    zipInputStream.close();
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int unZipObb(String str, String str2) {
        Log.d(TAG, "unZipObb : obbPath=" + str + ", unzipPath=" + str2);
        try {
            String path = getPath();
            if (path == null) {
                Log.d(TAG, "unZipObb error : obbFilePath == null");
                return -2;
            }
            File file = new File(path);
            if (!file.exists()) {
                Log.d(TAG, "unZipObb error : !obbFile.exists()");
                return -3;
            }
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
                unZip(file, file2.getAbsolutePath(), path);
                return 1;
            }
            this.mLittleGame.unzip(file, file2.getAbsolutePath(), path);
            return 1;
        } catch (Exception e) {
            Log.d(TAG, "unZipObb error : Exception");
            e.printStackTrace();
            return 0;
        }
    }

    public int getChannelType() {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            return appActivity.getChannelType();
        }
        return 0;
    }

    public void copyToClipboard(String str) {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity != null) {
            appActivity.copyToClipboard(str);
        }
    }

    public boolean isWeChatInstalled() {
        AppActivity appActivity = this.mLittleGame;
        if (appActivity == null) {
            return false;
        }
        appActivity.isWeChatInstalled();
        return false;
    }
}
