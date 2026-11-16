package com.bytedance.ads.convert.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.ads.convert.IClickIdReceiver;
import com.bytedance.ads.convert.broadcast.common.EncryptionTools;

/* loaded from: classes.dex */
public class StickyBroadcastManager {
    private static final String TAG = "Convert:StickyBroadcast";
    private final Context appContext;
    private final IClickIdReceiver listener;
    private BR receiver;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class BR extends BroadcastReceiver {
        final StickyBroadcastManager this$0;

        BR(StickyBroadcastManager stickyBroadcastManager) {
            this.this$0 = stickyBroadcastManager;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("data");
            Log.d(StickyBroadcastManager.TAG, "onReceive: " + stringExtra);
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            this.this$0.listener.onReceive(IClickIdReceiver.ClickIdFrom.StickyBroadcast, stringExtra);
            this.this$0.unregister();
        }
    }

    public StickyBroadcastManager(Context context, IClickIdReceiver iClickIdReceiver) {
        this.appContext = context.getApplicationContext();
        this.listener = iClickIdReceiver;
    }

    public void register() {
        synchronized (this) {
            if (this.receiver != null) {
                return;
            }
            try {
                this.receiver = new BR(this);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(EncryptionTools.encryptionAction(this.appContext.getPackageName()));
                if (Build.VERSION.SDK_INT >= 33) {
                    this.appContext.registerReceiver(this.receiver, intentFilter, 2);
                } else {
                    this.appContext.registerReceiver(this.receiver, intentFilter);
                }
            } catch (Exception unused) {
                Log.d(TAG, "registerReceiver failed");
            }
        }
    }

    public void unregister() {
        synchronized (this) {
            BR br = this.receiver;
            if (br == null) {
                return;
            }
            this.appContext.unregisterReceiver(br);
            this.receiver = null;
        }
    }
}
