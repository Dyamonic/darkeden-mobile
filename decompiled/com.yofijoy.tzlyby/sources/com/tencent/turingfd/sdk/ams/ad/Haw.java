package com.tencent.turingfd.sdk.ams.ad;

import android.util.Log;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class Haw extends Thread {
    public final /* synthetic */ AtomicBoolean a;
    public final /* synthetic */ HashMap b;
    public final /* synthetic */ ITuringDeviceInfoProvider c;
    public final /* synthetic */ Object d;

    public Haw(Herbaceous herbaceous, AtomicBoolean atomicBoolean, HashMap hashMap, ITuringDeviceInfoProvider iTuringDeviceInfoProvider, long j, Object obj) {
        this.a = atomicBoolean;
        this.b = hashMap;
        this.c = iTuringDeviceInfoProvider;
        this.d = obj;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        if (this.a.get()) {
            return;
        }
        try {
            HashMap hashMap = this.b;
            String imei = this.c.getImei();
            if (imei == null) {
                imei = "";
            }
            hashMap.put("274", imei);
            HashMap hashMap2 = this.b;
            String imsi = this.c.getImsi();
            if (imsi == null) {
                imsi = "";
            }
            hashMap2.put("276", imsi);
            HashMap hashMap3 = this.b;
            String androidId = this.c.getAndroidId();
            if (androidId == null) {
                androidId = "";
            }
            hashMap3.put("275", androidId);
        } catch (Throwable unused) {
            Log.w("Turing", "invoke info impl exception");
        }
        synchronized (this.d) {
            this.d.notify();
        }
    }
}
