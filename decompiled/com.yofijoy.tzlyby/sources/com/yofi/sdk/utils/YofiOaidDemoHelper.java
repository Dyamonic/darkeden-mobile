package com.yofi.sdk.utils;

import android.content.Context;
import android.util.Log;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import com.bun.miitmdid.pojo.IdSupplierImpl;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* loaded from: classes2.dex */
public class YofiOaidDemoHelper implements IIdentifierListener {
    public static final String ASSET_FILE_NAME_CERT = "yofioaid.cert.pem";
    public static final int HELPER_VERSION_CODE = 20230516;
    public static final String TAG = "YofiOaidDemoHelper";
    public static long endTimeMillis;
    public static long startTimeMillis;
    private final AppIdsUpdater appIdsUpdater;
    private boolean isCertInit = false;
    private boolean isArchSupport = false;
    public boolean isSDKLogOn = true;

    /* loaded from: classes2.dex */
    public interface AppIdsUpdater {
        void onIdsValid(String ids);
    }

    public YofiOaidDemoHelper(AppIdsUpdater appIdsUpdater, String lib) {
        loadLibrary(lib);
        if (this.isArchSupport && MdidSdkHelper.SDK_VERSION_CODE != 20230516) {
            Log.w(TAG, "SDK version not match.");
        }
        this.appIdsUpdater = appIdsUpdater;
    }

    public void getDeviceIds(Context cxt) {
        getDeviceIds(cxt, true, true, true);
        endTimeMillis = System.nanoTime();
    }

    public void getDeviceIds(Context cxt, boolean isGetOAID, boolean isGetVAID, boolean isGetAAID) {
        long j;
        StringBuilder sb;
        if (!this.isCertInit) {
            try {
                startTimeMillis = System.nanoTime();
                this.isCertInit = MdidSdkHelper.InitCert(cxt, loadPemFromAssetFile(cxt, ASSET_FILE_NAME_CERT));
            } catch (Error e) {
                e.printStackTrace();
            }
            if (!this.isCertInit) {
                Log.w(TAG, "getDeviceIds: cert init failed");
            }
        }
        try {
            MdidSdkHelper.setGlobalTimeout(5000L);
        } catch (Error e2) {
            e2.printStackTrace();
        }
        int i = 0;
        try {
            try {
                i = MdidSdkHelper.InitSdk(cxt, this.isSDKLogOn, isGetOAID, isGetVAID, isGetAAID, this);
                j = endTimeMillis - startTimeMillis;
                sb = new StringBuilder();
            } catch (Throwable th) {
                Log.d(TAG, "Time Consume:" + (endTimeMillis - startTimeMillis));
                throw th;
            }
        } catch (Error e3) {
            e3.printStackTrace();
            j = endTimeMillis - startTimeMillis;
            sb = new StringBuilder();
        }
        sb.append("Time Consume:");
        sb.append(j);
        Log.d(TAG, sb.toString());
        IdSupplierImpl idSupplierImpl = new IdSupplierImpl();
        if (i == 1008616) {
            Log.w(TAG, "cert not init or check not pass");
            onSupport(idSupplierImpl);
            return;
        }
        if (i == 1008612) {
            Log.w(TAG, "device not supported");
            onSupport(idSupplierImpl);
            return;
        }
        if (i == 1008613) {
            Log.w(TAG, "failed to load config file");
            onSupport(idSupplierImpl);
            return;
        }
        if (i == 1008611) {
            Log.w(TAG, "manufacturer not supported");
            onSupport(idSupplierImpl);
            return;
        }
        if (i == 1008615) {
            Log.w(TAG, "sdk call error");
            onSupport(idSupplierImpl);
        } else {
            if (i == 1008614) {
                Log.i(TAG, "result delay (async)");
                return;
            }
            if (i == 1008610) {
                Log.i(TAG, "result ok (sync)");
                return;
            }
            Log.w(TAG, "getDeviceIds: unknown code: " + i);
        }
    }

    @Override // com.bun.miitmdid.interfaces.IIdentifierListener
    public void onSupport(IdSupplier supplier) {
        boolean z;
        String str;
        String str2;
        if (supplier == null) {
            Log.w(TAG, "onSupport: supplier is null");
            return;
        }
        if (this.appIdsUpdater == null) {
            Log.w(TAG, "onSupport: callbackListener is null");
            return;
        }
        boolean z2 = false;
        String str3 = null;
        if (this.isArchSupport) {
            z2 = supplier.isSupported();
            z = supplier.isLimited();
            str3 = supplier.getOAID();
            str2 = supplier.getVAID();
            str = supplier.getAAID();
        } else {
            z = false;
            str = null;
            str2 = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("support: ");
        sb.append(z2 ? "true" : "false");
        sb.append("\nlimit: ");
        sb.append(z ? "true" : "false");
        sb.append("\nIs arch Support: ");
        sb.append(this.isArchSupport ? "true" : "false");
        sb.append("\nOAID: ");
        sb.append(str3);
        sb.append("\nVAID: ");
        sb.append(str2);
        sb.append("\nAAID: ");
        sb.append(str);
        sb.append("\n");
        Log.d(TAG, "onSupport: ids: \n" + sb.toString());
        this.appIdsUpdater.onIdsValid(str3);
        endTimeMillis = System.nanoTime();
    }

    public static String loadPemFromAssetFile(Context context, String assetFileName) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getAssets().open(assetFileName)));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                    sb.append('\n');
                } else {
                    return sb.toString();
                }
            }
        } catch (IOException unused) {
            Log.e(TAG, "loadPemFromAssetFile failed");
            return "";
        }
    }

    public long getTimeConsume() {
        return endTimeMillis - startTimeMillis;
    }

    public String loadLibrary(String lib) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            if (((String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.product.cpu.abi", "")).contains("x86")) {
                this.isArchSupport = false;
            } else {
                this.isArchSupport = true;
                System.loadLibrary(lib);
            }
        } catch (Throwable unused) {
        }
        return !this.isArchSupport ? "Arch: x86\n" : "Arch: Not x86";
    }

    public boolean isArchSupport() {
        return this.isArchSupport;
    }
}
