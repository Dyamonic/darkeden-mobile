package com.tencent.turingfd.sdk.ams.ad;

import android.app.Activity;
import android.content.Context;
import android.location.LocationListener;
import android.util.Log;
import java.util.Map;

/* loaded from: classes2.dex */
public class TuringRiskService {

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.TuringRiskService$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements RiskDetectResp {
        public final /* synthetic */ Bryony a;

        public Cdo(Bryony bryony) {
            this.a = bryony;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public String getDeviceToken() {
            return this.a.b;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public long getErrorCode() {
            return this.a.a;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public long getStagePackTimeMillis() {
            this.a.getClass();
            return 0L;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public long getStageReqTimeMillis() {
            this.a.getClass();
            return 0L;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public boolean isDowngrade() {
            this.a.getClass();
            return false;
        }
    }

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.TuringRiskService$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cif implements RiskDetectResp {
        public final /* synthetic */ Bryony a;

        public Cif(Bryony bryony) {
            this.a = bryony;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public String getDeviceToken() {
            return this.a.b;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public long getErrorCode() {
            return this.a.a;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public long getStagePackTimeMillis() {
            this.a.getClass();
            return 0L;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public long getStageReqTimeMillis() {
            this.a.getClass();
            return 0L;
        }

        @Override // com.tencent.turingfd.sdk.ams.ad.RiskDetectResp
        public boolean isDowngrade() {
            this.a.getClass();
            return false;
        }
    }

    public static LocationListener getLocationListener() {
        return Lyra.c.b();
    }

    public static RiskDetectResp reqRiskDetectV2(Context context) {
        return reqRiskDetectV2(context, true);
    }

    public static RiskDetectResp reqRiskDetectWithParam(Context context, Map<Integer, String> map) {
        Bryony a;
        int a2 = Marc.a();
        if (a2 != 0) {
            Log.i("TuringDebug", "init error : " + a2);
            a = new Bryony(a2);
        } else {
            a = Blackberry.a(context, map, 0, 0L);
        }
        return new Cif(a);
    }

    public static boolean screenProtect(Activity activity) {
        try {
            activity.getWindow().addFlags(8192);
            return true;
        } catch (Throwable th) {
            Log.e("", "screenProtect fail", th);
            return false;
        }
    }

    public static boolean screenUnProtect(Activity activity) {
        try {
            activity.getWindow().clearFlags(8192);
            return true;
        } catch (Throwable th) {
            Log.e("", "screenUnProtect fail", th);
            return false;
        }
    }

    public static RiskDetectResp reqRiskDetectV2(Context context, boolean z) {
        Bryony a;
        int a2 = Marc.a();
        if (a2 != 0) {
            Log.i("TuringDebug", "init error : " + a2);
            a = new Bryony(a2);
        } else {
            a = Blackberry.a(context, (Map<Integer, String>) null, z ? 1 : 0, 0L);
        }
        return new Cdo(a);
    }
}
