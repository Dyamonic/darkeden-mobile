package com.qq.gdt.action;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.ads.convert.utils.BusinessConstant;
import com.qq.gdt.action.GDTAction;
import com.qq.gdt.action.j.h;
import com.qq.gdt.action.j.j;
import com.qq.gdt.action.j.n;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.q;
import com.qq.gdt.action.j.t;
import com.qq.gdt.action.j.u;
import com.qq.gdt.action.j.v;
import com.qq.gdt.action.multioprocess.UserMessageChangeReceiver;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.tencent.turingfd.sdk.ams.ad.ITuringIoTFeatureMap;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import javax.crypto.SecretKey;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class e {
    private static volatile e c;
    private static Handler q;
    private volatile JSONObject F;
    private volatile PrivateController G;
    private volatile Context H;
    private String K;
    private volatile Context l;
    private volatile String m;
    private volatile String n;
    private volatile SecretKey o;
    private volatile SecretKey p;
    private volatile String v;
    private static final String b = "GDTAction初始化成功（sdkv: " + f.a() + ", sdkvc: " + f.b() + "）";
    private static volatile boolean d = false;
    private static volatile boolean e = false;
    private static volatile boolean f = false;
    private static volatile boolean g = false;
    private static volatile boolean h = false;
    private static volatile String i = "";
    private static volatile boolean j = false;
    private static volatile boolean k = false;
    private static final Pattern x = Pattern.compile("^[a-zA-Z0-9_]{1,32}$", 2);
    private static volatile boolean C = true;
    private final String r = UUID.randomUUID().toString().replaceAll("-", "");
    private AtomicLong s = new AtomicLong(0);
    private AtomicLong t = new AtomicLong(0);
    private String u = "";
    private volatile ChannelType w = ChannelType.CHANNEL_TENCENT;
    private long y = -1;
    private long z = -1;
    private boolean A = true;
    private long B = -1;
    private volatile String D = "";
    private volatile boolean E = false;
    public volatile long a = 0;
    private volatile boolean I = false;
    private volatile boolean J = true;

    private e() {
        q = new Handler(Looper.getMainLooper()) { // from class: com.qq.gdt.action.e.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    e.this.J();
                    GDTAction.logAction("TICKET", e.this.I());
                    e.this.B = SystemClock.elapsedRealtime();
                }
            }
        };
    }

    private String E() {
        return com.qq.gdt.action.multioprocess.a.a.a().b();
    }

    private void F() {
        if (h) {
            return;
        }
        UserMessageChangeReceiver userMessageChangeReceiver = new UserMessageChangeReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(UserMessageChangeReceiver.a);
        intentFilter.addCategory("android.intent.category.DEFAULT");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                g().registerReceiver(userMessageChangeReceiver, intentFilter, 4);
            } else {
                g().registerReceiver(userMessageChangeReceiver, intentFilter, UserMessageChangeReceiver.b, null);
            }
            h = true;
        } catch (Exception e2) {
            o.c("Error registering receiver: " + e2.getMessage());
        }
        h = true;
    }

    private void G() {
        j.a().b().execute(new Runnable() { // from class: com.qq.gdt.action.e.3
            @Override // java.lang.Runnable
            public void run() {
                o.a("initedPersistent = " + e.g, new Object[0]);
                if (!e.g) {
                    e eVar = e.this;
                    eVar.f(eVar.l);
                    h.f(e.this.l);
                    e.this.H();
                    com.qq.gdt.action.j.d.b(e.this.l);
                    a.a(e.this.l).b();
                }
                boolean unused = e.g = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.D = System.getProperty("http.agent");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject I() {
        long elapsedRealtime = (SystemClock.elapsedRealtime() - this.B) / 1000;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("begin_time", Long.valueOf(this.z));
            jSONObject.putOpt("duration", Long.valueOf(elapsedRealtime));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        if (q.hasMessages(1) || !this.A) {
            return;
        }
        q.sendEmptyMessageDelayed(1, b.a(this.l).c());
    }

    public static e a() {
        if (c == null) {
            synchronized (e.class) {
                if (c == null) {
                    c = new e();
                }
            }
        }
        return c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final GDTAction.a aVar) {
        if (!j) {
            o.a(b);
        }
        if (aVar != null) {
            q.post(new Runnable() { // from class: com.qq.gdt.action.e.4
                @Override // java.lang.Runnable
                public void run() {
                    aVar.a();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final GDTAction.a aVar, final String str) {
        o.c(str);
        if (aVar != null) {
            q.post(new Runnable() { // from class: com.qq.gdt.action.e.5
                @Override // java.lang.Runnable
                public void run() {
                    aVar.a(str);
                }
            });
        }
    }

    private void b(Activity activity) {
        if (activity != null) {
            try {
                if (activity.getIntent() == null || activity.getIntent().getData() == null) {
                    return;
                }
                Uri data = activity.getIntent().getData();
                String dataString = activity.getIntent().getDataString();
                o.a("getIntentData:" + data, new Object[0]);
                if (!v.a(data.getQueryParameter("gdt_traceid"))) {
                    a(this.l, data.getQueryParameter("gdt_traceid"));
                }
                if (v.a(dataString)) {
                    return;
                }
                b(this.l, dataString);
            } catch (Throwable th) {
                o.a("setTraceId err:" + th.getMessage(), new Object[0]);
            }
        }
    }

    private void b(String str) {
        int i2;
        o.a("ReadConfigChannelId channelId  = " + str, new Object[0]);
        if (v.a(str)) {
            return;
        }
        new ArrayList();
        if (com.qq.gdt.action.multioprocess.d.a().c() != null) {
            List<String> q2 = com.qq.gdt.action.multioprocess.d.a().c().q();
            if (q2.size() <= 0) {
                o.a("not read channleIds", new Object[0]);
                i2 = 410401;
            } else if (q2.contains(str)) {
                o.a("you set " + str + " in remote channelid list ，remote channelid list" + TextUtils.join(",", q2), new Object[0]);
                i2 = 41041;
            } else {
                o.a("you set " + str + " not in remote channelid list ，remote channelid list " + TextUtils.join(",", q2) + " ，please set", new Object[0]);
                i2 = 41042;
            }
        } else {
            o.a("not read UserMessageSyncByMemory", new Object[0]);
            i2 = 410402;
        }
        com.qq.gdt.action.h.a.a(i2);
    }

    private JSONObject c(boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = z ? this.z : this.y;
        long j3 = j2 < 0 ? -1L : (elapsedRealtime - j2) / 1000;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("duration", Long.valueOf(j3));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private void d(Context context) {
        o.a("initOnce = " + f, new Object[0]);
        if (f) {
            o.a("initOnce has executed", new Object[0]);
            return;
        }
        a(this.l);
        t.f(context);
        com.qq.gdt.action.j.c.a().a(this.l);
        f = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e(android.content.Context r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L10
            android.content.Context r0 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L15
            if (r0 != 0) goto L9
            goto L10
        L9:
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L15
        Ld:
            r2.l = r3     // Catch: java.lang.Throwable -> L15
            goto L2a
        L10:
            android.content.Context r3 = com.qq.gdt.action.j.d.e()     // Catch: java.lang.Throwable -> L15
            goto Ld
        L15:
            r3 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "getApplicationContext ex = "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            com.qq.gdt.action.j.o.c(r3)
        L2a:
            android.content.Context r3 = r2.g()
            if (r3 == 0) goto L34
            r2.F()
            goto L3c
        L34:
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r0 = "registerUserMessageBroadcast fail , ApplicationContext null"
            com.qq.gdt.action.j.o.a(r0, r3)
        L3c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.e.e(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context) {
        String q2 = q();
        if (v.a(q())) {
            q2 = UUID.randomUUID().toString().replaceAll("-", "");
            SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0).edit();
            edit.putString(TapEventParamConstants.PARAM_DEVICE_ID, q2);
            edit.apply();
        }
        o.a("Set device id: " + q2, new Object[0]);
    }

    public static boolean w() {
        return C;
    }

    public boolean A() {
        o.a("last vister cp inveter time" + (System.currentTimeMillis() - this.a) + "ms", new Object[0]);
        o.a("network time " + b.a(g()).o() + "ms", new Object[0]);
        return System.currentTimeMillis() - this.a > ((long) b.a(g()).o());
    }

    public synchronized PrivateController B() {
        if (this.G == null) {
            this.G = new c();
        }
        return this.G;
    }

    public boolean C() {
        return this.J;
    }

    public JSONObject a(JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("ainit", e);
            jSONObject.put("byAutoInit", j);
            jSONObject.put("byAutoInitFinal", k);
            jSONObject.put("ifrom", i);
            jSONObject.put("sinit", d);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public void a(Activity activity) {
        this.A = true;
        this.z = SystemClock.elapsedRealtime();
        GDTAction.logAction("ENTER_FOREGROUND", c(false));
        t.b(this.l, System.currentTimeMillis());
        b(activity);
        this.B = SystemClock.elapsedRealtime();
        J();
        com.qq.gdt.action.g.e.b(this.l);
    }

    public void a(Context context) {
        e(context);
        this.u = com.qq.gdt.action.j.d.a(this.l);
    }

    public void a(Context context, String str) {
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0).edit();
        edit.putString("gdt_traceid", str);
        edit.apply();
        t.d(context, System.currentTimeMillis());
    }

    public synchronized void a(Context context, String str, String str2, ChannelType channelType, String str3, GDTAction.a aVar) {
        a(context, str, str2, channelType, str3, aVar, "0", true, false);
    }

    public void a(PrivateController privateController) {
        this.G = privateController;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.qq.gdt.action.c.a aVar) {
        a.a(a().g()).a(aVar);
    }

    public synchronized void a(com.qq.gdt.action.multioprocess.b bVar, JSONObject jSONObject, String str) {
        String str2;
        int i2;
        int i3;
        try {
            o.a("package name gcheckUserMessageAndInit  from  = " + str + " userMessage = " + bVar + " eventObject = " + jSONObject, new Object[0]);
            if (bVar == null) {
                o.a("package name get from remote success  usermessage is null ", new Object[0]);
                if (str.equals("auto_init_by_logaction")) {
                    com.qq.gdt.action.h.a.a(40031, jSONObject);
                } else if (str.equals("auto_init_by_start")) {
                    com.qq.gdt.action.h.a.a(41031);
                }
            } else if (bVar.k()) {
                if (str.equals("auto_init_by_logaction")) {
                    com.qq.gdt.action.h.a.a(40034, jSONObject, bVar);
                } else if (str.equals("auto_init_by_start")) {
                    com.qq.gdt.action.h.a.a(41034, bVar);
                }
                String b2 = bVar.b();
                String c2 = bVar.c();
                ChannelType e2 = bVar.e();
                String d2 = bVar.d();
                i = "0";
                o.a("init from last user set", new Object[0]);
                boolean a = a(g(), b2, c2, e2, d2, null, i, false, true);
                if (a) {
                    com.qq.gdt.action.multioprocess.d.a().a(b2, c2, e2, d2, false);
                    b();
                }
                o.a("logActon remote fill result = " + a, new Object[0]);
                if (str.equals("auto_init_by_logaction")) {
                    i3 = a ? 40036 : 40035;
                    com.qq.gdt.action.h.a.a(i3, jSONObject, bVar);
                } else if (str.equals("auto_init_by_start")) {
                    i2 = a ? 41036 : 41035;
                    com.qq.gdt.action.h.a.a(i2, bVar);
                }
            } else if (bVar.l()) {
                o.a("logActon user set not complete", new Object[0]);
                if (str.equals("auto_init_by_logaction")) {
                    com.qq.gdt.action.h.a.a(40032, jSONObject, bVar);
                } else if (str.equals("auto_init_by_start")) {
                    com.qq.gdt.action.h.a.a(41032, bVar);
                }
                String h2 = bVar.h();
                String i4 = bVar.i();
                ChannelType m = bVar.m();
                String n = bVar.n();
                try {
                    str2 = (TextUtils.isEmpty(n) || !n.equals("2")) ? E() : bVar.q().get(0);
                } catch (Exception e3) {
                    o.a("channelIdRemote e = " + e3, new Object[0]);
                    str2 = "";
                }
                o.a("init from last remote set", new Object[0]);
                boolean a2 = a(g(), h2, i4, m, str2, null, n, false, true);
                if (a2) {
                    com.qq.gdt.action.multioprocess.d.a().a(h2, i4, m, str2, n, false);
                    b();
                }
                o.a("logActon remote fill result = " + a2, new Object[0]);
                if (str.equals("auto_init_by_logaction")) {
                    i3 = a2 ? 400361 : 400351;
                    com.qq.gdt.action.h.a.a(i3, jSONObject, bVar);
                } else if (str.equals("auto_init_by_start")) {
                    i2 = a2 ? 410361 : 410351;
                    com.qq.gdt.action.h.a.a(i2, bVar);
                }
            } else {
                o.a("logActon remote set not complete", new Object[0]);
                if (str.equals("auto_init_by_logaction")) {
                    com.qq.gdt.action.h.a.a(400321, jSONObject, bVar);
                } else if (str.equals("auto_init_by_start")) {
                    com.qq.gdt.action.h.a.a(410321, bVar);
                }
            }
        } catch (Throwable th) {
            o.a("checkUserMessageAndInit fill exception", th);
            if (str.equals("auto_init_by_logaction")) {
                com.qq.gdt.action.h.a.a(40033, jSONObject, bVar);
            } else if (str.equals("auto_init_by_start")) {
                com.qq.gdt.action.h.a.a(41033, bVar);
            }
        }
    }

    public void a(String str) {
        if (v.a(str) || x.matcher(str).matches()) {
            com.qq.gdt.action.multioprocess.d.a().a(str);
        } else {
            o.c("userUniqueId参数格式不正确");
        }
    }

    public void a(boolean z) {
        this.J = z;
    }

    public synchronized boolean a(Context context, String str, final String str2, ChannelType channelType, String str3, final GDTAction.a aVar, String str4, boolean z, boolean z2) {
        String str5 = str3;
        synchronized (this) {
            try {
                o.a("init byAuto = " + z2 + " initfrom = " + str4 + " needSaveUserSetInfo = " + z + " userActionSetId = " + str + " appKey = " + str2 + " channel = " + channelType + " channelId = " + str5, new Object[0]);
                j = z2;
                k = z2;
                i = str4;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("byAutoInit", z2);
                jSONObject.put("ifrom", str4);
                if (d) {
                    o.b("GDTAction已经初始化过，不需要再次初始化");
                    return false;
                }
                if (context == null) {
                    a(aVar, "GDTAction初始化失败，init方法的context参数不能为null");
                    return false;
                }
                this.l = context.getApplicationContext();
                com.qq.gdt.action.h.a.a(ITuringIoTFeatureMap.RIOT_WIFI_MAC_ADDRESS, jSONObject);
                if (v.a(str)) {
                    com.qq.gdt.action.h.a.a(ITuringIoTFeatureMap.RIOT_TOTAL_MEM, jSONObject);
                    a(aVar, "GDTAction初始化失败，init方法的userActionSetId参数不能为空");
                    return false;
                }
                this.m = str.trim();
                if (v.a(str2)) {
                    com.qq.gdt.action.h.a.a(ITuringIoTFeatureMap.RIOT_SIM_NUMBER, jSONObject);
                    a(aVar, "GDTAction初始化失败，init方法的appKey参数不能为空");
                    return false;
                }
                this.n = str2.trim();
                if (!v.a(str3) && !x.matcher(str5).matches()) {
                    com.qq.gdt.action.h.a.a(ITuringIoTFeatureMap.RIOT_CAMERA_SERIAL, jSONObject);
                    a(aVar, "GDTAction初始化失败，init方法的channelId参数格式不正确");
                    return false;
                }
                this.v = str5;
                if (v.a(str3)) {
                    str5 = E();
                }
                String str6 = str5;
                b(str6);
                this.w = channelType;
                this.H = context;
                if (!q.a(this.l)) {
                    com.qq.gdt.action.h.a.a(ITuringIoTFeatureMap.RIOT_CPU_ID, jSONObject);
                }
                try {
                    boolean equals = h.d().equals(this.u);
                    o.a("isMainProcess = " + equals + " getApplicationContext().getPackageName() = " + g().getPackageName() + " processName = " + this.u, new Object[0]);
                    com.qq.gdt.action.h.a.a(equals ? ITuringIoTFeatureMap.RIOT_NEAR_BY_WIFI_SSID : 3011, jSONObject);
                } catch (Exception e2) {
                    o.c("getAppPackageName " + e2.getMessage());
                    com.qq.gdt.action.h.a.a(3012, jSONObject);
                }
                d(context);
                j.a().b().execute(new Runnable() { // from class: com.qq.gdt.action.e.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            com.qq.gdt.action.j.e.a();
                            e.this.o = com.qq.gdt.action.j.a.a(str2);
                            o.a("aesKey = " + u.c(e.this.o.getEncoded()), new Object[0]);
                            com.qq.gdt.action.i.b.a();
                            b.a(e.this.l);
                            e.this.a(aVar);
                        } catch (Exception e3) {
                            o.c("GDTAction初始化失败，ErrorCode:01，请联系广点通运营" + e3.getMessage());
                            e.this.a(aVar, "GDTAction初始化失败，ErrorCode:01，请联系广点通运营" + e3.getMessage());
                        }
                    }
                });
                com.qq.gdt.action.h.a.a(3013, jSONObject);
                if (z2) {
                    e = true;
                } else {
                    d = true;
                    com.qq.gdt.action.multioprocess.d.a().a(str, str2, channelType, str6, z);
                }
                k = z2;
                jSONObject.put("byAutoInitFinal", k);
                jSONObject.put("ainit", e);
                jSONObject.put("sinit", d);
                com.qq.gdt.action.h.a.a(3014, jSONObject);
                return true;
            } catch (Throwable th) {
                o.b("init e ", th);
                return false;
            }
        }
    }

    public String b(Context context) {
        return context.getApplicationContext().getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0).getString("gdt_traceid", "");
    }

    public void b(Context context, String str) {
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0).edit();
        edit.putString(BusinessConstant.INTENT_KEY_OPEN_URL, str);
        edit.apply();
        t.e(context, System.currentTimeMillis());
    }

    public void b(JSONObject jSONObject) {
        if (n.a(jSONObject)) {
            return;
        }
        this.F = jSONObject;
    }

    public synchronized boolean b() {
        try {
            if (this.H != null && this.m != null && this.n != null) {
                if (!this.I) {
                    G();
                    this.I = true;
                }
                return true;
            }
            o.c("请先完成初始化，再调用start或logAction方法");
            return false;
        } catch (Throwable th) {
            o.b("gdt start error ", th);
            return false;
        }
    }

    public String c(Context context) {
        return context.getApplicationContext().getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0).getString(BusinessConstant.INTENT_KEY_OPEN_URL, "");
    }

    public void c() {
        e((Context) null);
    }

    public boolean d() {
        return d;
    }

    public boolean e() {
        return e;
    }

    public boolean f() {
        return d() || e();
    }

    public Context g() {
        return this.l;
    }

    public String h() {
        return this.m;
    }

    public String i() {
        return this.n;
    }

    public String j() {
        return "event_encrypt";
    }

    public SecretKey k() {
        return this.o;
    }

    public SecretKey l() {
        try {
            if (this.p == null) {
                try {
                    this.p = com.qq.gdt.action.j.a.a(j());
                } catch (NoSuchAlgorithmException e2) {
                    e2.printStackTrace();
                } catch (InvalidKeySpecException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            o.c("getAesSecretKeyByEvent" + e4.getMessage());
        }
        return this.p;
    }

    public void m() {
        this.A = false;
        this.y = SystemClock.elapsedRealtime();
        GDTAction.logAction("ENTER_BACKGROUND", c(true));
        t.c(this.l, System.currentTimeMillis());
        a.a(this.l).a();
        GDTAction.logAction("TICKET", I());
        q.removeMessages(1);
        com.qq.gdt.action.g.e.c(this.l);
    }

    public String n() {
        return this.r;
    }

    public long o() {
        return this.s.incrementAndGet();
    }

    public long p() {
        return this.t.incrementAndGet();
    }

    public String q() {
        if (v.a(this.K)) {
            this.K = this.l.getApplicationContext().getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0).getString(TapEventParamConstants.PARAM_DEVICE_ID, "");
        }
        return this.K;
    }

    public String r() {
        if (v.a(this.u)) {
            this.u = com.qq.gdt.action.j.d.a(this.l);
        }
        return this.u;
    }

    public String s() {
        return this.w.name();
    }

    public String t() {
        return this.v;
    }

    public String u() {
        return com.qq.gdt.action.multioprocess.d.a().d();
    }

    public String v() {
        return com.qq.gdt.action.multioprocess.d.a().f();
    }

    public String x() {
        return this.D;
    }

    public JSONObject y() {
        return this.F;
    }

    public boolean z() {
        return this.I;
    }
}
