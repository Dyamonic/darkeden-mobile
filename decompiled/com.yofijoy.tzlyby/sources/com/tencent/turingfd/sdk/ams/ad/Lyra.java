package com.tencent.turingfd.sdk.ams.ad;

import android.location.Location;
import android.location.LocationListener;
import android.os.Build;
import android.os.Bundle;

/* loaded from: classes2.dex */
public class Lyra implements LocationListener {
    public static final Chestnut<Lyra> c = new Cdo();
    public final Cif[] a = new Cif[3];
    public volatile int b = 0;

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Lyra$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo extends Chestnut<Lyra> {
        @Override // com.tencent.turingfd.sdk.ams.ad.Chestnut
        public Lyra a() {
            return new Lyra();
        }
    }

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Lyra$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cif {
        public long a;
        public String b;
    }

    public String a() {
        StringBuilder sb = new StringBuilder();
        synchronized (this.a) {
            int i = this.b;
            do {
                Cif cif = this.a[this.b];
                if (cif == null) {
                    break;
                }
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(cif.a);
                sb.append(":");
                sb.append(cif.b);
                i = (i + 1) % this.a.length;
            } while (i != this.b);
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (Build.VERSION.SDK_INT >= 18 && location != null && location.isFromMockProvider()) {
            synchronized (this.a) {
                Cif cif = this.a[this.b];
                if (cif == null) {
                    cif = new Cif();
                    this.a[this.b] = cif;
                }
                this.b = (this.b + 1) % this.a.length;
                cif.a = System.currentTimeMillis();
                cif.b = location.getProvider();
            }
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
