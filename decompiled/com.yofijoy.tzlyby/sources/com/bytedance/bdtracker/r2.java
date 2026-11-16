package com.bytedance.bdtracker;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.bytedance.applog.monitor.MonitorSampling;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* loaded from: classes.dex */
public final class r2 implements m2, Handler.Callback {
    public Handler a;
    public final n2 b;
    public final d0 c;

    public r2(d0 mEngine) {
        Intrinsics.checkParameterIsNotNull(mEngine, "mEngine");
        this.c = mEngine;
        StringBuilder a = a.a("bd_tracker_monitor@");
        d dVar = mEngine.d;
        Intrinsics.checkExpressionValueIsNotNull(dVar, "mEngine.appLog");
        a.append(dVar.m);
        HandlerThread handlerThread = new HandlerThread(a.toString());
        handlerThread.start();
        this.a = new Handler(handlerThread.getLooper(), this);
        Looper looper = this.a.getLooper();
        Intrinsics.checkExpressionValueIsNotNull(looper, "mHandler.looper");
        d dVar2 = mEngine.d;
        Intrinsics.checkExpressionValueIsNotNull(dVar2, "mEngine.appLog");
        String str = dVar2.m;
        Intrinsics.checkExpressionValueIsNotNull(str, "mEngine.appLog.appId");
        Context b = mEngine.b();
        Intrinsics.checkExpressionValueIsNotNull(b, "mEngine.context");
        this.b = new n2(looper, str, b);
    }

    public void a(u2 data) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        v1 v1Var = this.c.e;
        Intrinsics.checkExpressionValueIsNotNull(v1Var, "mEngine.config");
        if (v1Var.j()) {
            if (MonitorSampling.INSTANCE.isSampling$agent_liteChinaRelease()) {
                d dVar = this.c.d;
                Intrinsics.checkExpressionValueIsNotNull(dVar, "mEngine.appLog");
                dVar.D.debug(8, "Monitor EventTrace hint trace:{}", data);
                this.b.a(data).track(data.g(), data.d());
                return;
            }
            if ((data instanceof d3) || (data instanceof x2)) {
                this.b.a(data).track(data.g(), data.d());
            }
            d dVar2 = this.c.d;
            Intrinsics.checkExpressionValueIsNotNull(dVar2, "mEngine.appLog");
            dVar2.D.debug(8, "Monitor EventTrace not hint trace:{}", data);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        Intrinsics.checkParameterIsNotNull(msg, "msg");
        int i = msg.what;
        if (i == 1) {
            d dVar = this.c.d;
            Intrinsics.checkExpressionValueIsNotNull(dVar, "mEngine.appLog");
            dVar.D.debug(8, "Monitor trace save:{}", msg.obj);
            d4 c = this.c.c();
            Object obj = msg.obj;
            if (!TypeIntrinsics.isMutableList(obj)) {
                obj = null;
            }
            c.c.b((List) obj);
        } else if (i == 2) {
            x1 x1Var = this.c.i;
            if (x1Var == null || x1Var.h() != 0) {
                d dVar2 = this.c.d;
                Intrinsics.checkExpressionValueIsNotNull(dVar2, "mEngine.appLog");
                dVar2.D.debug(8, "Monitor report...", new Object[0]);
                d4 c2 = this.c.c();
                d dVar3 = this.c.d;
                Intrinsics.checkExpressionValueIsNotNull(dVar3, "mEngine.appLog");
                String str = dVar3.m;
                x1 x1Var2 = this.c.i;
                Intrinsics.checkExpressionValueIsNotNull(x1Var2, "mEngine.dm");
                c2.b(str, x1Var2.e());
                d0 d0Var = this.c;
                d0Var.a(d0Var.l);
            } else {
                this.a.sendEmptyMessageDelayed(2, 500L);
            }
        }
        return true;
    }
}
