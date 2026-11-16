package com.bumptech.glide.manager;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.manager.ConnectivityMonitor;

/* loaded from: classes.dex */
public class DefaultConnectivityMonitorFactory implements ConnectivityMonitorFactory {
    private static final String NETWORK_PERMISSION = "android.permission.ACCESS_NETWORK_STATE";

    @Override // com.bumptech.glide.manager.ConnectivityMonitorFactory
    public ConnectivityMonitor build(Context context, ConnectivityMonitor.ConnectivityListener connectivityListener) {
        return ContextCompat.checkSelfPermission(context, NETWORK_PERMISSION) == 0 ? new DefaultConnectivityMonitor(context, connectivityListener) : new NullConnectivityMonitor();
    }
}
