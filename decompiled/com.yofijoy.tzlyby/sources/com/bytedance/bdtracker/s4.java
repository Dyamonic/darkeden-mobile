package com.bytedance.bdtracker;

import com.bytedance.applog.log.LoggerImpl;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;

/* loaded from: classes.dex */
public class s4 implements Runnable {
    public final /* synthetic */ t4 a;

    public s4(t4 t4Var) {
        this.a = t4Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (int i = 0; i < this.a.a.size(); i++) {
            try {
                String[] strArr = {"openudid", "clientudid", "serial_number", "sim_serial_number", "udid", TapEventParamConstants.PARAM_DEVICE_ID};
                for (int i2 = 0; i2 < 6; i2++) {
                    String str = strArr[i2];
                    try {
                        t4 t4Var = this.a;
                        t4Var.a(t4Var.a.get(i), str);
                    } catch (Exception e) {
                        LoggerImpl.global().error("DeprecatedFileCleaner execute failed", e, new Object[0]);
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
    }
}
