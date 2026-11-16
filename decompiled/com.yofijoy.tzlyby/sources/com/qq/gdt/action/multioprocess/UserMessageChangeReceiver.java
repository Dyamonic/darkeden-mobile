package com.qq.gdt.action.multioprocess;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import com.qq.gdt.action.e;
import com.qq.gdt.action.j.o;

/* loaded from: classes.dex */
public class UserMessageChangeReceiver extends BroadcastReceiver {
    public static String a = "_gdt.action.USER_MESSAGE_CHANGED";
    public static String b = ".gdt.qq.RECEIVE_PERMISSION";
    public static String c = ".gdt.qq.SEND_PERMISSION";
    private HandlerThread d;
    private Handler e;

    /* loaded from: classes.dex */
    class a implements Runnable {
        Context a;
        Intent b;

        a(Context context, Intent intent) {
            this.a = context;
            this.b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (UserMessageChangeReceiver.a.equals(this.b.getAction())) {
                    o.a("UserMessageChangeReceiver intent:" + this.b, new Object[0]);
                    b bVar = (b) this.b.getSerializableExtra("user_message");
                    o.a("UserMessageChangeReceiver userMessage :" + bVar, new Object[0]);
                    if (bVar != null) {
                        d.a().a = bVar;
                    }
                }
            } catch (Throwable th) {
                o.a("onReceive e", th);
            }
        }
    }

    public UserMessageChangeReceiver() {
        Context g = e.a().g();
        if (g != null) {
            a = g.getPackageName() + a;
            b = g.getPackageName() + b;
            c = g.getPackageName() + c;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        o.a("UserMessageChangeReceiver onReceive:" + intent, new Object[0]);
        if (this.d == null) {
            HandlerThread handlerThread = new HandlerThread("receive HandlerThread");
            this.d = handlerThread;
            handlerThread.start();
        }
        if (this.e == null) {
            this.e = new Handler(this.d.getLooper());
        }
        this.e.removeCallbacksAndMessages(null);
        this.e.postDelayed(new a(context, intent), 1000L);
    }
}
