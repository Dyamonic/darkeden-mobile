package com.tencent.open.a;

import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.i;
import com.tencent.open.utils.k;
import java.io.IOException;
import java.io.Serializable;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import kotlin.text.Typography;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class g {
    protected static g a;
    protected HandlerThread e;
    protected Handler f;
    protected Random b = new Random();
    protected List<Serializable> d = Collections.synchronizedList(new ArrayList());
    protected List<Serializable> c = Collections.synchronizedList(new ArrayList());
    protected Executor g = i.b();
    protected Executor h = i.b();

    public static synchronized g a() {
        g gVar;
        synchronized (g.class) {
            if (a == null) {
                a = new g();
            }
            gVar = a;
        }
        return gVar;
    }

    private g() {
        this.e = null;
        if (this.e == null) {
            HandlerThread handlerThread = new HandlerThread("opensdk.report.handlerthread", 10);
            this.e = handlerThread;
            handlerThread.start();
        }
        if (!this.e.isAlive() || this.e.getLooper() == null) {
            return;
        }
        this.f = new Handler(this.e.getLooper()) { // from class: com.tencent.open.a.g.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 1000) {
                    g.this.b();
                } else if (i == 1001) {
                    g.this.e();
                }
                super.handleMessage(message);
            }
        };
    }

    public void a(final Bundle bundle, String str, final boolean z) {
        if (bundle == null) {
            return;
        }
        SLog.v("openSDK_LOG.ReportManager", "-->reportVia, bundle: " + bundle.toString());
        if (a("report_via", str) || z) {
            this.g.execute(new Runnable() { // from class: com.tencent.open.a.g.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String k = k.k(c.b(com.tencent.open.utils.e.a()));
                        String k2 = k.k(c.c(com.tencent.open.utils.e.a()));
                        String k3 = k.k(c.a());
                        String k4 = k.k(c.d(com.tencent.open.utils.e.a()));
                        SLog.i("openSDK_LOG.ReportManager", String.format("-->reporVia:imei[%s,%s],imsi[%s,%s],mac[%s,%s],anid[%s,%s]", c.b(com.tencent.open.utils.e.a()), k, c.c(com.tencent.open.utils.e.a()), k2, c.a(), k3, c.d(com.tencent.open.utils.e.a()), k4));
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("uin", Constants.DEFAULT_UIN);
                        bundle2.putString("imei", k);
                        bundle2.putString("imsi", k2);
                        bundle2.putString(TapEventParamConstants.PARAM_SUB_ANDROID_ID, k4);
                        bundle2.putString("mac", k3);
                        bundle2.putString(Constants.PARAM_PLATFORM, "1");
                        bundle2.putString("os_ver", Build.VERSION.RELEASE);
                        bundle2.putString("position", k.c(com.tencent.open.utils.e.a()));
                        bundle2.putString("network", a.a(com.tencent.open.utils.e.a()));
                        bundle2.putString("language", c.b());
                        bundle2.putString("resolution", c.a(com.tencent.open.utils.e.a()));
                        bundle2.putString("apn", a.b(com.tencent.open.utils.e.a()));
                        bundle2.putString("model_name", Build.MODEL);
                        bundle2.putString("timezone", TimeZone.getDefault().getID());
                        bundle2.putString("sdk_ver", Constants.SDK_VERSION);
                        bundle2.putString("qz_ver", k.d(com.tencent.open.utils.e.a(), Constants.PACKAGE_QZONE));
                        bundle2.putString("qq_ver", k.c(com.tencent.open.utils.e.a(), "com.tencent.mobileqq"));
                        bundle2.putString("qua", k.e(com.tencent.open.utils.e.a(), com.tencent.open.utils.e.b()));
                        bundle2.putString("packagename", com.tencent.open.utils.e.b());
                        bundle2.putString("app_ver", k.d(com.tencent.open.utils.e.a(), com.tencent.open.utils.e.b()));
                        Bundle bundle3 = bundle;
                        if (bundle3 != null) {
                            bundle2.putAll(bundle3);
                        }
                        g.this.d.add(new b(bundle2));
                        int size = g.this.d.size();
                        int a2 = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Agent_ReportTimeInterval");
                        if (a2 == 0) {
                            a2 = 10000;
                        }
                        if (!g.this.a("report_via", size) && !z) {
                            if (g.this.f.hasMessages(1001)) {
                                return;
                            }
                            Message obtain = Message.obtain();
                            obtain.what = 1001;
                            g.this.f.sendMessageDelayed(obtain, a2);
                            return;
                        }
                        g.this.e();
                        g.this.f.removeMessages(1001);
                    } catch (Exception e) {
                        SLog.e("openSDK_LOG.ReportManager", "--> reporVia, exception in sub thread.", e);
                    }
                }
            });
        }
    }

    public void a(String str, long j, long j2, long j3, int i) {
        a(str, j, j2, j3, i, "", false);
    }

    public void a(final String str, final long j, final long j2, final long j3, final int i, final String str2, final boolean z) {
        SLog.v("openSDK_LOG.ReportManager", "-->reportCgi, command: " + str + " | startTime: " + j + " | reqSize:" + j2 + " | rspSize: " + j3 + " | responseCode: " + i + " | detail: " + str2);
        if (a("report_cgi", "" + i) || z) {
            this.h.execute(new Runnable() { // from class: com.tencent.open.a.g.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
                        Bundle bundle = new Bundle();
                        String a2 = a.a(com.tencent.open.utils.e.a());
                        bundle.putString("apn", a2);
                        bundle.putString("appid", "1000067");
                        bundle.putString("commandid", str);
                        bundle.putString("detail", str2);
                        StringBuilder sb = new StringBuilder();
                        sb.append("network=");
                        sb.append(a2);
                        sb.append(Typography.amp);
                        sb.append("sdcard=");
                        int i2 = 1;
                        sb.append(Environment.getExternalStorageState().equals("mounted") ? 1 : 0);
                        sb.append(Typography.amp);
                        sb.append("wifi=");
                        sb.append(a.e(com.tencent.open.utils.e.a()));
                        bundle.putString("deviceInfo", sb.toString());
                        int a3 = 100 / g.this.a(i);
                        if (a3 > 0) {
                            i2 = a3 > 100 ? 100 : a3;
                        }
                        bundle.putString("frequency", i2 + "");
                        bundle.putString("reqSize", j2 + "");
                        bundle.putString("resultCode", i + "");
                        bundle.putString("rspSize", j3 + "");
                        bundle.putString("timeCost", elapsedRealtime + "");
                        bundle.putString("uin", Constants.DEFAULT_UIN);
                        g.this.c.add(new b(bundle));
                        int size = g.this.c.size();
                        int a4 = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Agent_ReportTimeInterval");
                        if (a4 == 0) {
                            a4 = 10000;
                        }
                        if (!g.this.a("report_cgi", size) && !z) {
                            if (!g.this.f.hasMessages(1000)) {
                                Message obtain = Message.obtain();
                                obtain.what = 1000;
                                g.this.f.sendMessageDelayed(obtain, a4);
                            }
                        }
                        g.this.b();
                        g.this.f.removeMessages(1000);
                    } catch (Exception e) {
                        SLog.e("openSDK_LOG.ReportManager", "--> reportCGI, exception in sub thread.", e);
                    }
                }
            });
        }
    }

    protected void b() {
        this.h.execute(new Runnable() { // from class: com.tencent.open.a.g.4
            /* JADX WARN: Removed duplicated region for block: B:21:0x00a5 A[Catch: Exception -> 0x00b8, TryCatch #0 {Exception -> 0x00b8, blocks: (B:3:0x0008, B:7:0x0011, B:10:0x0023, B:21:0x00a5, B:22:0x00b0, B:28:0x0094, B:30:0x0099, B:36:0x009e, B:14:0x003b, B:16:0x008a), top: B:2:0x0008, inners: #1, #2, #3 }] */
            /* JADX WARN: Removed duplicated region for block: B:33:0x00a3 A[EDGE_INSN: B:33:0x00a3->B:20:0x00a3 BREAK  A[LOOP:0: B:12:0x0039->B:34:?], SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:34:? A[LOOP:0: B:12:0x0039->B:34:?, LOOP_END, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r14 = this;
                    java.lang.String r0 = "report_cgi"
                    java.lang.String r1 = "https://wspeed.qq.com/w.cgi"
                    java.lang.String r2 = "-->doReportCgi, doupload exception"
                    java.lang.String r3 = "openSDK_LOG.ReportManager"
                    com.tencent.open.a.g r4 = com.tencent.open.a.g.this     // Catch: java.lang.Exception -> Lb8
                    android.os.Bundle r4 = r4.c()     // Catch: java.lang.Exception -> Lb8
                    if (r4 != 0) goto L11
                    return
                L11:
                    android.content.Context r5 = com.tencent.open.utils.e.a()     // Catch: java.lang.Exception -> Lb8
                    r6 = 0
                    com.tencent.open.utils.f r5 = com.tencent.open.utils.f.a(r5, r6)     // Catch: java.lang.Exception -> Lb8
                    java.lang.String r7 = "Common_HttpRetryCount"
                    int r5 = r5.a(r7)     // Catch: java.lang.Exception -> Lb8
                    if (r5 != 0) goto L23
                    r5 = 3
                L23:
                    java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lb8
                    r7.<init>()     // Catch: java.lang.Exception -> Lb8
                    java.lang.String r8 = "-->doReportCgi, retryCount: "
                    r7.append(r8)     // Catch: java.lang.Exception -> Lb8
                    r7.append(r5)     // Catch: java.lang.Exception -> Lb8
                    java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> Lb8
                    com.tencent.open.log.SLog.d(r3, r7)     // Catch: java.lang.Exception -> Lb8
                    r7 = 0
                    r8 = r7
                L39:
                    r9 = 1
                    int r8 = r8 + r9
                    android.content.Context r10 = com.tencent.open.utils.e.a()     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    org.apache.http.client.HttpClient r10 = com.tencent.open.utils.HttpUtils.getHttpClient(r10, r6, r1)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    org.apache.http.client.methods.HttpPost r11 = new org.apache.http.client.methods.HttpPost     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    r11.<init>(r1)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    java.lang.String r12 = "Accept-Encoding"
                    java.lang.String r13 = "gzip"
                    r11.addHeader(r12, r13)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    java.lang.String r12 = "Content-Type"
                    java.lang.String r13 = "application/x-www-form-urlencoded"
                    r11.setHeader(r12, r13)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    java.lang.String r12 = com.tencent.open.utils.HttpUtils.encodeUrl(r4)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    byte[] r12 = com.tencent.open.utils.k.i(r12)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    org.apache.http.entity.ByteArrayEntity r13 = new org.apache.http.entity.ByteArrayEntity     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    r13.<init>(r12)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    r11.setEntity(r13)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    org.apache.http.HttpResponse r10 = r10.execute(r11)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    org.apache.http.StatusLine r10 = r10.getStatusLine()     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    int r10 = r10.getStatusCode()     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    r11.<init>()     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    java.lang.String r12 = "-->doReportCgi, statusCode: "
                    r11.append(r12)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    r11.append(r10)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    java.lang.String r11 = r11.toString()     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    com.tencent.open.log.SLog.d(r3, r11)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    r11 = 200(0xc8, float:2.8E-43)
                    if (r10 != r11) goto La3
                    com.tencent.open.a.f r10 = com.tencent.open.a.f.a()     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    r10.b(r0)     // Catch: java.lang.Exception -> L93 java.net.SocketTimeoutException -> L98 org.apache.http.conn.ConnectTimeoutException -> L9d
                    r7 = r9
                    goto La3
                L93:
                    r1 = move-exception
                    com.tencent.open.log.SLog.e(r3, r2, r1)     // Catch: java.lang.Exception -> Lb8
                    goto La3
                L98:
                    r9 = move-exception
                    com.tencent.open.log.SLog.e(r3, r2, r9)     // Catch: java.lang.Exception -> Lb8
                    goto La1
                L9d:
                    r9 = move-exception
                    com.tencent.open.log.SLog.e(r3, r2, r9)     // Catch: java.lang.Exception -> Lb8
                La1:
                    if (r8 < r5) goto L39
                La3:
                    if (r7 != 0) goto Lb0
                    com.tencent.open.a.f r1 = com.tencent.open.a.f.a()     // Catch: java.lang.Exception -> Lb8
                    com.tencent.open.a.g r2 = com.tencent.open.a.g.this     // Catch: java.lang.Exception -> Lb8
                    java.util.List<java.io.Serializable> r2 = r2.c     // Catch: java.lang.Exception -> Lb8
                    r1.a(r0, r2)     // Catch: java.lang.Exception -> Lb8
                Lb0:
                    com.tencent.open.a.g r0 = com.tencent.open.a.g.this     // Catch: java.lang.Exception -> Lb8
                    java.util.List<java.io.Serializable> r0 = r0.c     // Catch: java.lang.Exception -> Lb8
                    r0.clear()     // Catch: java.lang.Exception -> Lb8
                    goto Lbe
                Lb8:
                    r0 = move-exception
                    java.lang.String r1 = "-->doReportCgi, doupload exception out."
                    com.tencent.open.log.SLog.e(r3, r1, r0)
                Lbe:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.a.g.AnonymousClass4.run():void");
            }
        });
    }

    protected boolean a(String str, String str2) {
        int a2;
        SLog.d("openSDK_LOG.ReportManager", "-->availableFrequency, report: " + str + " | ext: " + str2);
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int i = 100;
        if (str.equals("report_cgi")) {
            try {
                a2 = a(Integer.parseInt(str2));
                if (this.b.nextInt(100) < a2) {
                    z = true;
                }
            } catch (Exception unused) {
                return false;
            }
        } else {
            if (str.equals("report_via")) {
                a2 = e.a(str2);
                if (this.b.nextInt(100) < a2) {
                    i = a2;
                    z = true;
                }
            }
            SLog.d("openSDK_LOG.ReportManager", "-->availableFrequency, result: " + z + " | frequency: " + i);
            return z;
        }
        i = a2;
        SLog.d("openSDK_LOG.ReportManager", "-->availableFrequency, result: " + z + " | frequency: " + i);
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
    
        if (r0 == 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0019, code lost:
    
        if (r0 == 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
    
        r1 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean a(java.lang.String r5, int r6) {
        /*
            r4 = this;
            java.lang.String r0 = "report_cgi"
            boolean r0 = r5.equals(r0)
            r1 = 5
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L1e
            android.content.Context r0 = com.tencent.open.utils.e.a()
            com.tencent.open.utils.f r0 = com.tencent.open.utils.f.a(r0, r2)
            java.lang.String r2 = "Common_CGIReportMaxcount"
            int r0 = r0.a(r2)
            if (r0 != 0) goto L1c
            goto L38
        L1c:
            r1 = r0
            goto L38
        L1e:
            java.lang.String r0 = "report_via"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L37
            android.content.Context r0 = com.tencent.open.utils.e.a()
            com.tencent.open.utils.f r0 = com.tencent.open.utils.f.a(r0, r2)
            java.lang.String r2 = "Agent_ReportBatchCount"
            int r0 = r0.a(r2)
            if (r0 != 0) goto L1c
            goto L38
        L37:
            r1 = r3
        L38:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "-->availableCount, report: "
            r0.append(r2)
            r0.append(r5)
            java.lang.String r5 = " | dataSize: "
            r0.append(r5)
            r0.append(r6)
            java.lang.String r5 = " | maxcount: "
            r0.append(r5)
            r0.append(r1)
            java.lang.String r5 = r0.toString()
            java.lang.String r0 = "openSDK_LOG.ReportManager"
            com.tencent.open.log.SLog.d(r0, r5)
            if (r6 < r1) goto L62
            r5 = 1
            return r5
        L62:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.a.g.a(java.lang.String, int):boolean");
    }

    protected int a(int i) {
        if (i == 0) {
            int a2 = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Common_CGIReportFrequencySuccess");
            if (a2 == 0) {
                return 10;
            }
            return a2;
        }
        int a3 = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Common_CGIReportFrequencyFailed");
        if (a3 == 0) {
            return 100;
        }
        return a3;
    }

    protected Bundle c() {
        if (this.c.size() == 0) {
            return null;
        }
        b bVar = (b) this.c.get(0);
        if (bVar == null) {
            SLog.d("openSDK_LOG.ReportManager", "-->prepareCgiData, the 0th cgireportitem is null.");
            return null;
        }
        String str = bVar.a.get("appid");
        List<Serializable> a2 = f.a().a("report_cgi");
        if (a2 != null) {
            this.c.addAll(a2);
        }
        SLog.d("openSDK_LOG.ReportManager", "-->prepareCgiData, mCgiList size: " + this.c.size());
        if (this.c.size() == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        try {
            bundle.putString("appid", str);
            bundle.putString("releaseversion", Constants.SDK_VERSION_REPORT);
            bundle.putString("device", Build.DEVICE);
            bundle.putString("qua", Constants.SDK_QUA);
            bundle.putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,touin,deviceinfo");
            for (int i = 0; i < this.c.size(); i++) {
                b bVar2 = (b) this.c.get(i);
                bundle.putString(i + "_1", bVar2.a.get("apn"));
                bundle.putString(i + "_2", bVar2.a.get("frequency"));
                bundle.putString(i + "_3", bVar2.a.get("commandid"));
                bundle.putString(i + "_4", bVar2.a.get("resultCode"));
                bundle.putString(i + "_5", bVar2.a.get("timeCost"));
                bundle.putString(i + "_6", bVar2.a.get("reqSize"));
                bundle.putString(i + "_7", bVar2.a.get("rspSize"));
                bundle.putString(i + "_8", bVar2.a.get("detail"));
                bundle.putString(i + "_9", bVar2.a.get("uin"));
                bundle.putString(i + "_10", c.e(com.tencent.open.utils.e.a()) + "&" + bVar2.a.get("deviceInfo"));
            }
            SLog.v("openSDK_LOG.ReportManager", "-->prepareCgiData, end. params: " + bundle.toString());
            return bundle;
        } catch (Exception e) {
            SLog.e("openSDK_LOG.ReportManager", "-->prepareCgiData, exception.", e);
            return null;
        }
    }

    protected Bundle d() {
        List<Serializable> a2 = f.a().a("report_via");
        if (a2 != null) {
            this.d.addAll(a2);
        }
        SLog.d("openSDK_LOG.ReportManager", "-->prepareViaData, mViaList size: " + this.d.size());
        if (this.d.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (Serializable serializable : this.d) {
            JSONObject jSONObject = new JSONObject();
            b bVar = (b) serializable;
            for (String str : bVar.a.keySet()) {
                try {
                    String str2 = bVar.a.get(str);
                    if (str2 == null) {
                        str2 = "";
                    }
                    jSONObject.put(str, str2);
                } catch (JSONException e) {
                    SLog.e("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", e);
                }
            }
            jSONArray.put(jSONObject);
        }
        SLog.v("openSDK_LOG.ReportManager", "-->prepareViaData, JSONArray array: " + jSONArray.toString());
        Bundle bundle = new Bundle();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("data", jSONArray);
            bundle.putString("data", jSONObject2.toString());
            return bundle;
        } catch (JSONException e2) {
            SLog.e("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", e2);
            return null;
        }
    }

    protected void e() {
        this.g.execute(new Runnable() { // from class: com.tencent.open.a.g.5
            @Override // java.lang.Runnable
            public void run() {
                long elapsedRealtime;
                int i;
                int i2;
                try {
                    Bundle d = g.this.d();
                    if (d == null) {
                        return;
                    }
                    SLog.v("openSDK_LOG.ReportManager", "-->doReportVia, params: " + d.toString());
                    int a2 = e.a();
                    int i3 = 0;
                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j = 0;
                    long j2 = 0;
                    boolean z = false;
                    int i4 = 0;
                    do {
                        int i5 = i3 + 1;
                        try {
                            try {
                                try {
                                    try {
                                        k.a openUrl2 = HttpUtils.openUrl2(com.tencent.open.utils.e.a(), "https://appsupport.qq.com/cgi-bin/appstage/mstats_batch_report", "POST", d);
                                        try {
                                            i2 = k.d(openUrl2.a).getInt("ret");
                                        } catch (JSONException unused) {
                                            i2 = -4;
                                        }
                                        if (i2 == 0 || !TextUtils.isEmpty(openUrl2.a)) {
                                            i5 = a2;
                                            z = true;
                                        }
                                        j = openUrl2.b;
                                        j2 = openUrl2.c;
                                    } catch (JSONException unused2) {
                                        i3 = i5;
                                        i4 = -4;
                                        j = 0;
                                        j2 = 0;
                                    }
                                } catch (SocketTimeoutException unused3) {
                                    elapsedRealtime = SystemClock.elapsedRealtime();
                                    i = -8;
                                    elapsedRealtime2 = elapsedRealtime;
                                    j = 0;
                                    j2 = 0;
                                    i4 = i;
                                    i3 = i5;
                                }
                            } catch (HttpUtils.NetworkUnavailableException unused4) {
                                g.this.d.clear();
                                SLog.d("openSDK_LOG.ReportManager", "doReportVia, NetworkUnavailableException.");
                                return;
                            } catch (IOException e) {
                                i4 = HttpUtils.getErrorCodeFromException(e);
                                i3 = i5;
                                j = 0;
                                j2 = 0;
                            }
                        } catch (HttpUtils.HttpStatusException e2) {
                            try {
                                i4 = Integer.parseInt(e2.getMessage().replace(HttpUtils.HttpStatusException.ERROR_INFO, ""));
                            } catch (Exception unused5) {
                            }
                        } catch (ConnectTimeoutException unused6) {
                            elapsedRealtime = SystemClock.elapsedRealtime();
                            i = -7;
                            elapsedRealtime2 = elapsedRealtime;
                            j = 0;
                            j2 = 0;
                            i4 = i;
                            i3 = i5;
                        } catch (Exception unused7) {
                            i4 = -6;
                            i3 = a2;
                            j = 0;
                            j2 = 0;
                        }
                        i3 = i5;
                    } while (i3 < a2);
                    g.this.a("mapp_apptrace_sdk", elapsedRealtime2, j, j2, i4, null, false);
                    if (z) {
                        f.a().b("report_via");
                    } else {
                        f.a().a("report_via", g.this.d);
                    }
                    g.this.d.clear();
                    SLog.d("openSDK_LOG.ReportManager", "-->doReportVia, uploadSuccess: " + z);
                } catch (Exception e3) {
                    SLog.e("openSDK_LOG.ReportManager", "-->doReportVia, exception in serial executor.", e3);
                }
            }
        });
    }

    public void a(final String str, final String str2, final Bundle bundle, final boolean z) {
        i.a(new Runnable() { // from class: com.tencent.open.a.g.6
            /* JADX WARN: Removed duplicated region for block: B:27:0x00e2 A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:3:0x0002, B:5:0x0006, B:8:0x000c, B:11:0x0013, B:13:0x003c, B:14:0x0040, B:16:0x004e, B:17:0x0084, B:27:0x00e2, B:29:0x00e8, B:46:0x00cd, B:37:0x00d3, B:43:0x00d9, B:50:0x0062, B:52:0x0070, B:53:0x00ee), top: B:2:0x0002 }] */
            /* JADX WARN: Removed duplicated region for block: B:29:0x00e8 A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:3:0x0002, B:5:0x0006, B:8:0x000c, B:11:0x0013, B:13:0x003c, B:14:0x0040, B:16:0x004e, B:17:0x0084, B:27:0x00e2, B:29:0x00e8, B:46:0x00cd, B:37:0x00d3, B:43:0x00d9, B:50:0x0062, B:52:0x0070, B:53:0x00ee), top: B:2:0x0002 }] */
            /* JADX WARN: Removed duplicated region for block: B:40:0x00e0 A[EDGE_INSN: B:40:0x00e0->B:26:0x00e0 BREAK  A[LOOP:0: B:19:0x0094->B:41:?], SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:41:? A[LOOP:0: B:19:0x0094->B:41:?, LOOP_END, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 250
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.a.g.AnonymousClass6.run():void");
            }
        });
    }
}
