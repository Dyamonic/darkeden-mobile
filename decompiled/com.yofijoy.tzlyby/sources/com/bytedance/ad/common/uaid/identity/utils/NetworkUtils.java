package com.bytedance.ad.common.uaid.identity.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class NetworkUtils {
    public static final int NETWORK_TYPE_CELLULAR = 2;
    public static final int NETWORK_TYPE_DUAL = 3;
    public static final int NETWORK_TYPE_OHTER = 5;
    public static final int NETWORK_TYPE_UNKNOWN = 0;
    public static final int NETWORK_TYPE_VPN = 4;
    public static final int NETWORK_TYPE_WIFI = 1;
    private static volatile NetworkUtils instance;
    private ConnectivityManager.NetworkCallback callback;
    private boolean lostState;
    private ConnectivityManager mConnectivityManager;
    private Network network;

    /* loaded from: classes.dex */
    public interface NetworkCallback {
        void networkAvailable(Network network);
    }

    private NetworkUtils(Context context) {
        try {
            this.mConnectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static NetworkUtils getInstance(Context context) {
        if (instance == null) {
            synchronized (NetworkUtils.class) {
                if (instance == null) {
                    instance = new NetworkUtils(context);
                }
            }
        }
        return instance;
    }

    private static boolean isDataMobileEnabled(ConnectivityManager connectivityManager) {
        try {
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public int getNetworkType() {
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = this.mConnectivityManager;
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                if (Build.VERSION.SDK_INT < 23) {
                    int type = activeNetworkInfo.getType();
                    return type == 1 ? isDataMobileEnabled(this.mConnectivityManager) ? 3 : 1 : type == 0 ? 2 : 5;
                }
                Network activeNetwork = this.mConnectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = this.mConnectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                    boolean hasTransport = networkCapabilities.hasTransport(4);
                    boolean hasTransport2 = networkCapabilities.hasTransport(0);
                    boolean hasTransport3 = networkCapabilities.hasTransport(1);
                    if (hasTransport) {
                        return 4;
                    }
                    if (isDataMobileEnabled(this.mConnectivityManager) && hasTransport3) {
                        return 3;
                    }
                    if (hasTransport3) {
                        return 1;
                    }
                    return hasTransport2 ? 2 : 5;
                }
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    public void requestCellular(NetworkCallback networkCallback) {
        NetworkInfo networkInfo;
        if (this.mConnectivityManager != null) {
            if (Build.VERSION.SDK_INT < 21) {
                return;
            }
            Network network = this.network;
            if (network != null && !this.lostState && (networkInfo = this.mConnectivityManager.getNetworkInfo(network)) != null && networkInfo.isAvailable()) {
                networkCallback.networkAvailable(this.network);
                return;
            }
            ConnectivityManager.NetworkCallback networkCallback2 = this.callback;
            if (networkCallback2 != null) {
                try {
                    this.mConnectivityManager.unregisterNetworkCallback(networkCallback2);
                } catch (Exception unused) {
                    this.callback = null;
                }
            }
            NetworkRequest build = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
            ConnectivityManager.NetworkCallback networkCallback3 = new ConnectivityManager.NetworkCallback(this, networkCallback) { // from class: com.bytedance.ad.common.uaid.identity.utils.NetworkUtils.1
                final NetworkUtils this$0;
                final NetworkCallback val$networkCallback;

                {
                    this.this$0 = this;
                    this.val$networkCallback = networkCallback;
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network2) {
                    try {
                        this.this$0.network = network2;
                        this.val$networkCallback.networkAvailable(network2);
                        this.this$0.lostState = false;
                    } catch (Exception unused2) {
                        this.this$0.network = null;
                        this.val$networkCallback.networkAvailable(null);
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(Network network2) {
                    this.this$0.lostState = true;
                }
            };
            this.callback = networkCallback3;
            try {
                this.mConnectivityManager.requestNetwork(build, networkCallback3);
                return;
            } catch (Exception unused2) {
            }
        }
        networkCallback.networkAvailable(null);
    }

    public void unregisterNetwork() {
        synchronized (this) {
            if (this.mConnectivityManager == null) {
                return;
            }
            if (this.callback == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 21) {
                this.mConnectivityManager.unregisterNetworkCallback(this.callback);
            }
            this.callback = null;
            this.network = null;
        }
    }
}
