package com.taptap.sdk.moment.legacy.utils;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SimpleLocalBroadcastManager {
    private BroadcastReceiver receiver;

    /* loaded from: classes.dex */
    public interface BroadcastReceiver {
        void onReceive(String str, Map<String, String> map);
    }

    /* loaded from: classes.dex */
    private static class Holder {
        static SimpleLocalBroadcastManager INSTANCE = new SimpleLocalBroadcastManager();

        private Holder() {
        }
    }

    private SimpleLocalBroadcastManager() {
    }

    public void registerReceiver(BroadcastReceiver broadcastReceiver) {
        this.receiver = broadcastReceiver;
    }

    public void unRegisterReceiver() {
        this.receiver = null;
    }

    public static SimpleLocalBroadcastManager getInstance() {
        return Holder.INSTANCE;
    }

    public void sendBroadcast(String str) {
        BroadcastReceiver broadcastReceiver = this.receiver;
        if (broadcastReceiver != null) {
            broadcastReceiver.onReceive(str, new HashMap());
        }
    }

    public void sendBroadcast(String str, Map<String, String> map) {
        BroadcastReceiver broadcastReceiver = this.receiver;
        if (broadcastReceiver != null) {
            broadcastReceiver.onReceive(str, map);
        }
    }
}
