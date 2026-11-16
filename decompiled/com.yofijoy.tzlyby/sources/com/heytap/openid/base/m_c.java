package com.heytap.openid.base;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.heytap.openid.sdk.m_h;
import com.taptap.sdk.update.download.DownloadTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class m_c {
    public Handler m_f;
    public HandlerThread m_g;
    public Context m_h;
    public volatile IInterface m_a = null;
    public String m_b = null;
    public String m_c = null;
    public final Object m_d = new Object();
    public ServiceConnection m_e = null;
    public IBinder.DeathRecipient m_i = new m_a();

    /* loaded from: classes.dex */
    public class m_a implements IBinder.DeathRecipient {
        public m_a() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public native void binderDied();
    }

    /* loaded from: classes.dex */
    public class m_b extends Handler {
        public m_b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public native void handleMessage(Message message);
    }

    public m_c() {
        m_b();
    }

    public Intent m_a() {
        throw null;
    }

    public void m_a(Context context, String str, String str2) {
        throw null;
    }

    public synchronized void m_a(Context context, List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!(z ? m_b(str) : m_a(str))) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        if (this.m_a == null) {
            m_h.m_a("2009");
            try {
                if (context.bindService(m_a(), this.m_e, 1)) {
                    m_h.m_a("2013");
                    if (this.m_a == null) {
                        synchronized (this.m_d) {
                            try {
                                if (this.m_a == null) {
                                    this.m_d.wait(10000L);
                                }
                            } catch (InterruptedException unused) {
                                Log.e("IDHelper", "1006");
                            }
                        }
                    }
                } else {
                    Log.e("IDHelper", "1007");
                }
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("1008 ");
                sb.append(e.getMessage() != null ? e.getMessage() : e.getLocalizedMessage());
                Log.e("IDHelper", sb.toString());
            }
        }
        if (this.m_a == null) {
            Log.e("IDHelper", "1004");
            return;
        }
        m_h.m_a("2010");
        if (TextUtils.isEmpty(this.m_b)) {
            this.m_b = context.getPackageName();
        }
        if (TextUtils.isEmpty(this.m_c)) {
            this.m_c = com.heytap.openid.sdk.m_a.m_a(context, this.m_b, "SHA1");
        }
        this.m_f.removeMessages(2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            synchronized (this.m_d) {
                m_h.m_a(str2 + " 2023");
                Message obtainMessage = this.m_f.obtainMessage();
                if (str2.equals("RESET_OUID")) {
                    obtainMessage.what = 3;
                } else {
                    obtainMessage.what = 1;
                }
                Bundle bundle = new Bundle();
                bundle.putString("IdType", str2);
                obtainMessage.setData(bundle);
                this.m_f.sendMessage(obtainMessage);
                long uptimeMillis = SystemClock.uptimeMillis();
                int i = str2.equals("DUID") ? 5000 : DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS;
                try {
                    this.m_d.wait(i);
                } catch (InterruptedException unused2) {
                    Log.e("IDHelper", "1022");
                }
                if (SystemClock.uptimeMillis() - uptimeMillis > i) {
                    Log.e("IDHelper", "1023");
                }
                m_h.m_a(str2 + " 2024");
            }
        }
        Message obtainMessage2 = this.m_f.obtainMessage();
        obtainMessage2.what = 2;
        this.m_f.sendMessageDelayed(obtainMessage2, 300000L);
    }

    public boolean m_a(String str) {
        throw null;
    }

    public final void m_b() {
        HandlerThread handlerThread = new HandlerThread("GetIDWorkThread");
        this.m_g = handlerThread;
        handlerThread.start();
        this.m_f = new m_b(this.m_g.getLooper());
    }

    public boolean m_b(String str) {
        throw null;
    }

    public String m_c(String str) {
        throw null;
    }
}
