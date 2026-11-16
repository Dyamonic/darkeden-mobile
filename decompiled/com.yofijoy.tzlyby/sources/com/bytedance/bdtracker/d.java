package com.bytedance.bdtracker;

import android.accounts.Account;
import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import com.bytedance.applog.IActiveCustomParamsCallback;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.applog.IDataObserver;
import com.bytedance.applog.IEventObserver;
import com.bytedance.applog.IExtraParams;
import com.bytedance.applog.IHeaderCustomTimelyCallback;
import com.bytedance.applog.IOaidObserver;
import com.bytedance.applog.IPresetEventObserver;
import com.bytedance.applog.IPullAbTestConfigCallback;
import com.bytedance.applog.ISessionObserver;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.Level;
import com.bytedance.applog.R;
import com.bytedance.applog.UriConfig;
import com.bytedance.applog.alink.IALinkListener;
import com.bytedance.applog.alink.util.LinkUtils;
import com.bytedance.applog.event.EventBuilder;
import com.bytedance.applog.event.IEventHandler;
import com.bytedance.applog.exception.AppCrashType;
import com.bytedance.applog.exposure.ViewExposureManager;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.ILogProcessor;
import com.bytedance.applog.log.LogProcessorHolder;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.network.INetworkClient;
import com.bytedance.applog.oneid.IDBindCallback;
import com.bytedance.applog.profile.UserProfileCallback;
import com.bytedance.applog.simulate.SimulateLaunchActivity;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class d implements IAppLogInstance {
    public static final List<d> K = new CopyOnWriteArrayList();
    public static final AtomicInteger L = new AtomicInteger(0);
    public IActiveCustomParamsCallback A;
    public volatile r B;
    public IEventHandler C;
    public final IAppLogLogger D;
    public final u3 j;
    public final s3 k;
    public volatile v1 o;
    public volatile x1 p;
    public volatile d0 q;
    public volatile v r;
    public volatile ViewExposureManager s;
    public volatile INetworkClient t;
    public volatile IHeaderCustomTimelyCallback v;
    public volatile f1 w;
    public i1 y;
    public IALinkListener z;
    public final ConcurrentHashMap<String, JSONObject> a = new ConcurrentHashMap<>();
    public final k1 b = new k1();
    public final j1 c = new j1();
    public final z1 d = new z1();
    public final o1 e = new o1();
    public final Set<Integer> f = new HashSet();
    public final Set<String> g = new HashSet();
    public final Set<Class<?>> h = new HashSet();
    public final Map<String, j0> i = new ConcurrentHashMap();
    public int l = 0;
    public String m = "";
    public volatile Application n = null;
    public volatile boolean u = false;
    public volatile boolean x = false;
    public volatile boolean E = true;
    public long F = 0;
    public volatile boolean G = false;
    public final y4<String> H = new y4<>();
    public final y4<String> I = new y4<>();
    public final Object J = new Object();

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public final /* synthetic */ boolean a;

        public a(boolean z) {
            this.a = z;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", d.this.m);
                jSONObject2.put("接口加密开关", this.a);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes.dex */
    public class b implements EventBus.DataFetcher {
        public final /* synthetic */ boolean a;

        public b(boolean z) {
            this.a = z;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", d.this.m);
                jSONObject2.put("禁止采集详细信息开关", this.a);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes.dex */
    public class c implements EventBus.DataFetcher {
        public final /* synthetic */ boolean a;

        public c(boolean z) {
            this.a = z;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", d.this.m);
                jSONObject2.put("剪切板开关", this.a);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* renamed from: com.bytedance.bdtracker.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0004d implements EventBus.DataFetcher {
        public final /* synthetic */ boolean a;

        public C0004d(boolean z) {
            this.a = z;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", d.this.m);
                jSONObject2.put("隐私模式开关", this.a);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public d() {
        L.incrementAndGet();
        this.D = new LoggerImpl();
        this.j = new u3(this);
        this.k = new s3(this);
        K.add(this);
    }

    public z1 a() {
        return this.d;
    }

    public final void a(Object obj, JSONObject jSONObject) {
        boolean z;
        boolean z2;
        if (this.r == null || obj == null) {
            return;
        }
        e4 e4Var = new e4("bav2b_page", true);
        JSONObject jSONObject2 = new JSONObject();
        String name = obj.getClass().getName();
        Iterator<Class<?>> it = b5.d.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                z2 = false;
                break;
            } else if (it.next().isInstance(obj)) {
                z2 = true;
                break;
            }
        }
        if (z2) {
            Activity activity = null;
            try {
                activity = (Activity) obj.getClass().getMethod("getActivity", new Class[0]).invoke(obj, new Object[0]);
            } catch (Throwable unused) {
            }
            if (activity != null) {
                name = activity.getClass().getName() + ":" + name;
            }
            z = true;
        }
        try {
            jSONObject2.put("page_key", name);
            jSONObject2.put("is_fragment", z);
            jSONObject2.put("duration", 1000L);
            jSONObject2.put("page_title", b5.c(obj));
            jSONObject2.put("page_path", b5.b(obj));
            jSONObject2.put("is_custom", true);
            k0.c(jSONObject, jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        e4Var.o = jSONObject2;
        receive(e4Var);
    }

    public final boolean a(String str) {
        return k0.a((Object) this.p, "Call " + str + " before please initialize first");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void activateALink(Uri uri) {
        if (b("activateALink")) {
            return;
        }
        j jVar = this.q.B;
        jVar.c();
        if (uri != null) {
            jVar.h = uri.toString();
        }
        jVar.b().debug(3, "Activate deep link with url: {}...", jVar.h);
        Handler a2 = jVar.a();
        l lVar = (l) p.a.a(LinkUtils.INSTANCE.getParamFromLink(uri), l.class);
        String d = lVar != null ? lVar.d() : null;
        if (d == null || d.length() == 0) {
            return;
        }
        jVar.e = 0;
        a2.sendMessage(a2.obtainMessage(1, lVar));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public synchronized void addDataObserver(IDataObserver iDataObserver) {
        if (this.y == null) {
            this.y = new i1();
        }
        this.y.a(iDataObserver);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void addEventObserver(IEventObserver iEventObserver) {
        this.c.a(k0.a(iEventObserver, (IPresetEventObserver) null));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void addEventObserver(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver) {
        this.c.a(k0.a(iEventObserver, iPresetEventObserver));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String addNetCommonParams(Context context, String str, boolean z, Level level) {
        return this.j.a(this.p != null ? this.p.e() : null, str, z, level);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void addSessionHook(ISessionObserver iSessionObserver) {
        this.b.a(iSessionObserver);
    }

    public boolean b() {
        return this.G;
    }

    public final boolean b(String str) {
        return k0.a((Object) this.q, "Call " + str + " before please initialize first");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void bind(Map<String, String> map, IDBindCallback iDBindCallback) {
        if (b("bind")) {
            return;
        }
        d0 d0Var = this.q;
        if (map == null) {
            d0Var.d.D.warn("BindID identities is null", new Object[0]);
        } else {
            d0Var.G.a(map, iDBindCallback);
        }
    }

    public final void c() {
        y4<String> y4Var = this.H;
        if (y4Var.b && !k0.a(y4Var.a, this.o.f())) {
            this.p.h(this.H.a);
            IAppLogLogger iAppLogLogger = this.D;
            StringBuilder a2 = com.bytedance.bdtracker.a.a("postSetUuidAfterDm uuid -> ");
            a2.append(this.H.a);
            iAppLogLogger.debug(a2.toString(), new Object[0]);
            this.p.g("");
        }
        y4<String> y4Var2 = this.I;
        if (!y4Var2.b || k0.a(y4Var2.a, this.o.g())) {
            return;
        }
        this.p.i(this.I.a);
        IAppLogLogger iAppLogLogger2 = this.D;
        StringBuilder a3 = com.bytedance.bdtracker.a.a("postSetUuidAfterDm uuid -> ");
        a3.append(this.I.a);
        iAppLogLogger2.debug(a3.toString(), new Object[0]);
        this.p.g("");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void clearAbTestConfigsCache() {
        if (this.p == null) {
            new m0().initCause(new AssertionError("Please initialize first")).printStackTrace();
        } else {
            x1 x1Var = this.p;
            x1Var.e((String) null);
            x1Var.f("");
            x1Var.a((JSONObject) null);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void clearDb() {
        if (this.q == null) {
            new m0().initCause(new AssertionError("clearDb before init")).printStackTrace();
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.D.debug("Start to clear db data...", new Object[0]);
        this.q.c().a();
        this.D.debug("Db data cleared", new Object[0]);
        p2.a(getMonitor(), "api_usage", "clearDb", elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void flush() {
        if (b("flush")) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.q.a((String[]) null, true);
        p2.a(getMonitor(), "api_usage", "flush", elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public IALinkListener getALinkListener() {
        return this.z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.applog.IAppLogInstance
    public <T> T getAbConfig(String str, T t) {
        if (a("getAbConfig")) {
            return null;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        x1 x1Var = this.p;
        JSONObject optJSONObject = x1Var.c.a().optJSONObject(str);
        if (optJSONObject != null) {
            String optString = optJSONObject.optString("vid");
            Object opt = optJSONObject.opt("val");
            x1Var.a(optString);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ab_sdk_version", optString);
                x1Var.i.onEventV3("abtest_exposure", jSONObject, 0);
            } catch (Throwable th) {
                x1Var.i.D.error(Collections.singletonList("DeviceManager"), "JSON handle failed", th, new Object[0]);
            }
            T t2 = opt != 0 ? opt : null;
            if (t2 != null) {
                t = t2;
            }
        }
        p2.a(getMonitor(), "api_usage", "getAbConfig", elapsedRealtime);
        return t;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getAbSdkVersion() {
        return a("getAbSdkVersion") ? "" : this.p.a();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public IActiveCustomParamsCallback getActiveCustomParams() {
        return this.A;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @Deprecated
    public String getAid() {
        return this.m;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public JSONObject getAllAbTestConfigs() {
        return this.q == null ? new JSONObject() : this.q.e.a();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public f getAppContext() {
        return null;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getAppId() {
        return this.m;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getClientUdid() {
        return a("getClientUdid") ? "" : this.p.d.optString("clientudid", "");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public Context getContext() {
        return this.n;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getDeepLinkUrl() {
        if (this.q != null) {
            return this.q.B.h;
        }
        return null;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getDid() {
        if (a("getDid")) {
            return "";
        }
        String c2 = this.p.c();
        return !TextUtils.isEmpty(c2) ? c2 : this.p.d.optString(TapEventParamConstants.PARAM_DEVICE_ID, "");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean getEncryptAndCompress() {
        return this.E;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public f1 getEventFilterByClient() {
        return this.w;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public IEventHandler getEventHandler() {
        return this.C;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getExternalAbVersion() {
        if (a("setExternalAbVersion")) {
            return null;
        }
        return this.o.c();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public JSONObject getHeader() {
        if (a("getHeader")) {
            return null;
        }
        return this.p.e();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public IHeaderCustomTimelyCallback getHeaderCustomCallback() {
        return this.v;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public <T> T getHeaderValue(String str, T t, Class<T> cls) {
        if (a("getHeaderValue")) {
            return null;
        }
        return (T) this.p.a(str, (String) t, (Class<String>) cls);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getIid() {
        return a("getIid") ? "" : this.p.f();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public InitConfig getInitConfig() {
        if (this.o != null) {
            return this.o.c;
        }
        return null;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public int getLaunchFrom() {
        return this.l;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public m2 getMonitor() {
        if (b("getMonitor")) {
            return null;
        }
        return this.q.q;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public INetworkClient getNetClient() {
        if (this.t != null) {
            return this.t;
        }
        if (getInitConfig() != null && getInitConfig().getNetworkClient() != null) {
            return getInitConfig().getNetworkClient();
        }
        synchronized (this) {
            if (this.t == null) {
                this.t = new h3(this.k);
            }
        }
        return this.t;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getOpenUdid() {
        return a("getOpenUdid") ? "" : this.p.g();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public Map<String, String> getRequestHeader() {
        if (this.o == null) {
            return Collections.emptyMap();
        }
        String string = this.o.f.getString("device_token", "");
        HashMap hashMap = new HashMap();
        hashMap.put("x-tt-dt", string != null ? string : "");
        return hashMap;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getSdkVersion() {
        return "6.16.9";
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getSessionId() {
        return this.q != null ? this.q.d() : "";
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getSsid() {
        return a("getSsid") ? "" : this.p.i();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void getSsidGroup(Map<String, String> map) {
        String did = getDid();
        if (!TextUtils.isEmpty(did)) {
            map.put(TapEventParamConstants.PARAM_DEVICE_ID, did);
        }
        String iid = getIid();
        if (!TextUtils.isEmpty(iid)) {
            map.put("install_id", iid);
        }
        String openUdid = getOpenUdid();
        if (!TextUtils.isEmpty(openUdid)) {
            map.put("openudid", openUdid);
        }
        String clientUdid = getClientUdid();
        if (TextUtils.isEmpty(clientUdid)) {
            return;
        }
        map.put("clientudid", clientUdid);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getUdid() {
        return a("getUdid") ? "" : this.p.j();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public UriConfig getUriRuntime() {
        if (b("getUriRuntime")) {
            return null;
        }
        return this.q.e();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getUserID() {
        if (b("getUserID")) {
            return null;
        }
        return String.valueOf(this.q.n.a);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getUserUniqueID() {
        return a("getUserUniqueID") ? "" : this.p.k();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public ViewExposureManager getViewExposureManager() {
        return this.s;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public JSONObject getViewProperties(View view) {
        if (view != null) {
            return this.a.get(k0.b(view));
        }
        return null;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean hasStarted() {
        return this.u;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void ignoreAutoTrackClick(View view) {
        if (view == null) {
            return;
        }
        this.g.add(k0.b(view));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void ignoreAutoTrackClickByViewType(Class<?>... clsArr) {
        if (clsArr == null) {
            return;
        }
        this.h.addAll(Arrays.asList(clsArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
    
        r4 = true;
     */
    @Override // com.bytedance.applog.IAppLogInstance
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void ignoreAutoTrackPage(java.lang.Class<?>... r8) {
        /*
            r7 = this;
            if (r8 != 0) goto L3
            return
        L3:
            int r0 = r8.length
            r1 = 0
            r2 = r1
        L6:
            if (r2 >= r0) goto L6b
            r3 = r8[r2]
            if (r3 != 0) goto Ld
            goto L68
        Ld:
            java.util.List<java.lang.Class<?>> r4 = com.bytedance.bdtracker.b5.c
            java.util.Iterator r4 = r4.iterator()
        L13:
            boolean r5 = r4.hasNext()
            r6 = 1
            if (r5 == 0) goto L27
            java.lang.Object r5 = r4.next()
            java.lang.Class r5 = (java.lang.Class) r5
            boolean r5 = r5.isAssignableFrom(r3)
            if (r5 == 0) goto L13
            goto L3f
        L27:
            java.util.List<java.lang.Class<?>> r4 = com.bytedance.bdtracker.b5.d
            java.util.Iterator r4 = r4.iterator()
        L2d:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L41
            java.lang.Object r5 = r4.next()
            java.lang.Class r5 = (java.lang.Class) r5
            boolean r5 = r5.isAssignableFrom(r3)
            if (r5 == 0) goto L2d
        L3f:
            r4 = r6
            goto L42
        L41:
            r4 = r1
        L42:
            if (r4 != 0) goto L50
            com.bytedance.applog.log.IAppLogLogger r4 = r7.D
            java.lang.Object[] r5 = new java.lang.Object[r6]
            r5[r1] = r3
            java.lang.String r3 = "{} is not a page class"
            r4.warn(r3, r5)
            goto L68
        L50:
            java.lang.String r3 = r3.getCanonicalName()
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto L5b
            goto L68
        L5b:
            java.util.Set<java.lang.Integer> r4 = r7.f
            int r3 = r3.hashCode()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r4.add(r3)
        L68:
            int r2 = r2 + 1
            goto L6
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.d.ignoreAutoTrackPage(java.lang.Class[]):void");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void init(Context context, InitConfig initConfig) {
        String str;
        ILogProcessor l1Var;
        synchronized (d.class) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (k0.c(initConfig.getAid())) {
                Log.e("AppLog", "Init failed. App id must not be empty!");
                return;
            }
            if (k0.c(initConfig.getChannel())) {
                Log.e("AppLog", "Channel must not be empty!");
                return;
            }
            if (com.bytedance.bdtracker.b.b(initConfig.getAid())) {
                Log.e("AppLog", "The app id: " + initConfig.getAid() + " has initialized already");
                return;
            }
            this.D.setAppId(initConfig.getAid());
            this.m = initConfig.getAid();
            this.n = (Application) context.getApplicationContext();
            if (initConfig.isLogEnable()) {
                if (initConfig.getLogger() != null) {
                    str = this.m;
                    l1Var = new m1(initConfig.getLogger());
                } else {
                    str = this.m;
                    l1Var = new l1(this);
                }
                LogProcessorHolder.setProcessor(str, l1Var);
            }
            this.D.info("AppLog init begin...", new Object[0]);
            if (!initConfig.isMonitorEnabled() && !o2.a(initConfig) && initConfig.getUriConfig() == null) {
                initConfig.setMonitorEnabled(true);
            }
            initMetaSec(context);
            if (TextUtils.isEmpty(initConfig.getSpName())) {
                initConfig.setSpName(com.bytedance.bdtracker.b.a(this, "applog_stats"));
            }
            synchronized (this.J) {
                this.o = new v1(this, this.n, initConfig);
                this.p = new x1(this, this.n, this.o);
                c();
                this.q = new d0(this, this.o, this.p, this.e);
            }
            if (!LogUtils.isDisabled()) {
                LogUtils.sendJsonFetcher("init_begin", new e(this, initConfig));
            }
            this.r = v.a(this.n);
            this.s = new ViewExposureManager(this);
            if (AppCrashType.hasJavaCrashType(initConfig.getTrackCrashType()) || initConfig.isMonitorEnabled()) {
                n0.a();
            }
            this.l = 1;
            this.u = initConfig.autoStart();
            LogUtils.sendString("init_end", this.m);
            this.D.info("AppLog init end", new Object[0]);
            if (k0.a(SimulateLaunchActivity.entryAppId, this.m)) {
                v3.a(this);
            }
            this.o.l();
            m2 monitor = getMonitor();
            Intrinsics.checkParameterIsNotNull("sdk_init", "metricsName");
            p2.a(monitor, "sdk_init", (String) null, elapsedRealtime);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void init(Context context, InitConfig initConfig, Activity activity) {
        init(context, initConfig);
        if (this.r == null || activity == null) {
            return;
        }
        this.r.onActivityCreated(activity, null);
        this.r.onActivityResumed(activity);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void initH5Bridge(View view, String str) {
        Class<?> b2 = k0.b("com.bytedance.applog.tracker.WebViewUtil");
        if (b2 == null) {
            this.D.warn("No WebViewUtil class, and will not initialize h5 bridge", new Object[0]);
            return;
        }
        try {
            Method declaredMethod = b2.getDeclaredMethod("injectWebViewBridges", View.class, String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, view, str);
        } catch (Throwable th) {
            this.D.error("Initialize h5 bridge failed", th, new Object[0]);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void initMetaSec(Context context) {
        if (getInitConfig() == null || getInitConfig().isMetaSecEnabled()) {
            Class<?> b2 = k0.b("com.bytedance.applog.metasec.AppLogSecHelper");
            if (b2 == null) {
                this.D.debug("No AppLogSecHelper class, and will not init", new Object[0]);
                return;
            }
            try {
                Method declaredMethod = b2.getDeclaredMethod("init", IAppLogInstance.class, Context.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(null, this, context);
            } catch (Throwable th) {
                this.D.error("Initialize AppLogSecHelper failed", th, new Object[0]);
            }
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void initWebViewBridge(View view, String str) {
        Class<?> b2 = k0.b("com.bytedance.applog.tracker.WebViewUtil");
        if (b2 != null) {
            try {
                b2.getMethod("injectWebViewBridges", View.class, String.class).invoke(null, view, str);
            } catch (Throwable th) {
                this.D.error("Init webview bridge failed", th, new Object[0]);
            }
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isAutoTrackClickIgnored(View view) {
        if (view == null) {
            return false;
        }
        if (this.g.contains(k0.b(view))) {
            return true;
        }
        Iterator<Class<?>> it = this.h.iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isAutoTrackPageIgnored(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        String canonicalName = cls.getCanonicalName();
        if (TextUtils.isEmpty(canonicalName)) {
            return false;
        }
        return this.f.contains(Integer.valueOf(canonicalName.hashCode()));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isBavEnabled() {
        return this.q != null && this.q.g();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isH5BridgeEnable() {
        return getInitConfig() != null && getInitConfig().isH5BridgeEnable();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isH5CollectEnable() {
        return getInitConfig() != null && getInitConfig().isH5CollectEnable();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isNewUser() {
        if (a("isNewUser")) {
            return false;
        }
        return this.p.e;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isPrivacyMode() {
        return this.x;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean manualActivate() {
        if (b("manualActivate")) {
            return false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean a2 = this.q.a(false);
        p2.a(getMonitor(), "api_usage", "manualActivate", elapsedRealtime);
        return a2;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public EventBuilder newEvent(String str) {
        return new EventBuilder(this).setEvent(str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onActivityPause() {
        if (this.r != null) {
            this.r.onActivityPaused(null);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onActivityResumed(Activity activity, int i) {
        if (this.r != null) {
            this.r.a(activity, i);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(String str) {
        onEventV3(str, (JSONObject) null, 0);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(String str, Bundle bundle) {
        onEventV3(str, bundle, 0);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(String str, JSONObject jSONObject) {
        onEventV3(str, jSONObject, 0);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onMiscEvent(String str, JSONObject jSONObject) {
        if (!TextUtils.isEmpty(str) && jSONObject != null && jSONObject.length() > 0) {
            this.D.debug(Arrays.asList("customEvent", "miscEvent"), "logType:{} params:{} ", str, jSONObject.toString());
            try {
                jSONObject.put("log_type", str);
                receive(new a4("log_data", jSONObject));
                return;
            } catch (Throwable th) {
                this.D.error("call onMiscEvent error", th, new Object[0]);
                return;
            }
        }
        this.D.warn("call onMiscEvent with invalid params", new Object[0]);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onPause(Context context) {
        if (context instanceof Activity) {
            onActivityPause();
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onResume(Context context) {
        if (context instanceof Activity) {
            onActivityResumed((Activity) context, context.hashCode());
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void pauseDurationEvent(String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (k0.a(TextUtils.isEmpty(str), "Event name must not empty!")) {
            return;
        }
        j0 j0Var = this.i.get(str);
        if (k0.a((Object) j0Var, "No duration event with name: " + str)) {
            return;
        }
        j0Var.a(elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileAppend(JSONObject jSONObject) {
        if (b("profileAppend") || jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        try {
            if (!k0.a(jSONObject, (Class<?>[]) new Class[]{String.class, Integer.class}, (Class<?>[]) new Class[]{String.class})) {
                this.D.warn("only support String、Int、String Array！", new Object[0]);
                return;
            }
        } catch (Throwable th) {
            this.D.error("JSON handle failed", th, new Object[0]);
        }
        j5.a(this.D, jSONObject);
        this.q.b(jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileIncrement(JSONObject jSONObject) {
        if (b("profileIncrement") || jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        try {
            if (!k0.a(jSONObject, (Class<?>[]) new Class[]{Integer.class}, (Class<?>[]) null)) {
                this.D.warn("only support Int param", new Object[0]);
                return;
            }
        } catch (Throwable th) {
            this.D.error("JSON handle failed", th, new Object[0]);
        }
        j5.a(this.D, jSONObject);
        this.q.c(jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileSet(JSONObject jSONObject) {
        if (b("profileSet") || jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        j5.a(this.D, jSONObject);
        this.q.d(jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileSetOnce(JSONObject jSONObject) {
        if (b("profileSetOnce") || jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        j5.a(this.D, jSONObject);
        this.q.e(jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileUnset(String str) {
        if (b("profileUnset")) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, "");
        } catch (Throwable th) {
            this.D.error("JSON handle failed", th, new Object[0]);
        }
        j5.a(this.D, jSONObject);
        this.q.f(jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void pullAbTestConfigs() {
        pullAbTestConfigs(-1, null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void pullAbTestConfigs(int i, IPullAbTestConfigCallback iPullAbTestConfigCallback) {
        if (this.q == null) {
            new m0().initCause(new AssertionError("Please initialize first")).printStackTrace();
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long currentTimeMillis = System.currentTimeMillis();
        long abs = this.q.a - Math.abs(currentTimeMillis - this.F);
        if (abs < 0) {
            this.F = currentTimeMillis;
            Handler handler = this.q.p;
            handler.sendMessage(handler.obtainMessage(18, i, -1, iPullAbTestConfigCallback));
        } else if (iPullAbTestConfigCallback != null) {
            iPullAbTestConfigCallback.onThrottle(abs);
        } else {
            this.D.warn("Pull ABTest config too frequently", new Object[0]);
        }
        p2.a(getMonitor(), "api_usage", "pullAbTestConfigs", elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void putCommonParams(Context context, Map<String, String> map, boolean z, Level level) {
        this.j.a(this.p != null ? this.p.e() : null, z, map, level);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void receive(x3 x3Var) {
        if (x3Var == null) {
            return;
        }
        x3Var.m = this.m;
        if (this.q == null) {
            this.e.a(x3Var);
        } else {
            this.q.a(x3Var);
        }
        LogUtils.sendObject("event_receive", x3Var);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void registerHeaderCustomCallback(IHeaderCustomTimelyCallback iHeaderCustomTimelyCallback) {
        this.v = iHeaderCustomTimelyCallback;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeAllDataObserver() {
        i1 i1Var = this.y;
        if (i1Var != null) {
            i1Var.a.clear();
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeDataObserver(IDataObserver iDataObserver) {
        i1 i1Var = this.y;
        if (i1Var != null) {
            i1Var.b(iDataObserver);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeEventObserver(IEventObserver iEventObserver) {
        this.c.b(k0.a(iEventObserver, (IPresetEventObserver) null));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeEventObserver(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver) {
        this.c.b(k0.a(iEventObserver, iPresetEventObserver));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeHeaderInfo(String str) {
        if (a("removeHeaderInfo")) {
            return;
        }
        this.p.d(str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeOaidObserver(IOaidObserver iOaidObserver) {
        o5.b(iOaidObserver);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeSessionHook(ISessionObserver iSessionObserver) {
        this.b.b(iSessionObserver);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean reportPhoneDetailInfo() {
        return this.p != null && this.p.r();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void resumeDurationEvent(String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (k0.a(TextUtils.isEmpty(str), "Event name must not empty!")) {
            return;
        }
        j0 j0Var = this.i.get(str);
        if (k0.a((Object) j0Var, "No duration event with name: " + str)) {
            return;
        }
        j0Var.b(elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setALinkListener(IALinkListener iALinkListener) {
        this.z = iALinkListener;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setAccount(Account account) {
        if (a("setAccount")) {
            return;
        }
        z1 a2 = this.p.i.a();
        if (a2.a instanceof u4) {
            w3 w3Var = a2.a.c;
            if (w3Var != null) {
                w3Var.a(account);
                return;
            }
            return;
        }
        a2.b = account;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setActiveCustomParams(IActiveCustomParamsCallback iActiveCustomParamsCallback) {
        this.A = iActiveCustomParamsCallback;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setAppContext(f fVar) {
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setAppLanguageAndRegion(String str, String str2) {
        boolean z;
        if (b("setAppLanguageAndRegion")) {
            return;
        }
        d0 d0Var = this.q;
        x1 x1Var = d0Var.i;
        boolean z2 = true;
        if (x1Var.a("app_language", (Object) str)) {
            x1Var.c.f.putString("app_language", str);
            z = true;
        } else {
            z = false;
        }
        x1 x1Var2 = d0Var.i;
        if (x1Var2.a("app_region", (Object) str2)) {
            x1Var2.c.f.putString("app_region", str2);
        } else {
            z2 = false;
        }
        if (z || z2) {
            d0Var.a(d0Var.k);
            d0Var.a(d0Var.f);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setAppTrack(JSONObject jSONObject) {
        if (jSONObject == null || a("setAppTrack")) {
            return;
        }
        x1 x1Var = this.p;
        if (x1Var.a("app_track", jSONObject)) {
            v1 v1Var = x1Var.c;
            v1Var.d.putString("app_track", jSONObject.toString());
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setClipboardEnabled(boolean z) {
        if (b("setClipboardEnabled")) {
            return;
        }
        this.q.B.a = z;
        if (LogUtils.isDisabled()) {
            return;
        }
        LogUtils.sendJsonFetcher("update_config", new c(z));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setEncryptAndCompress(boolean z) {
        this.E = z;
        if (!k0.d(this.m) || LogUtils.isDisabled()) {
            return;
        }
        LogUtils.sendJsonFetcher("update_config", new a(z));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setEventFilterByClient(List<String> list, boolean z) {
        f1 f1Var = null;
        if (list != null && !list.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            if (!hashSet.isEmpty()) {
                f1Var = z ? new h1(hashSet, null) : new g1(hashSet, null);
            }
        }
        this.w = f1Var;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setEventHandler(IEventHandler iEventHandler) {
        this.C = iEventHandler;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setExternalAbVersion(String str) {
        if (a("setExternalAbVersion")) {
            return;
        }
        this.p.f(str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setExtraParams(IExtraParams iExtraParams) {
        this.j.a = iExtraParams;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setForbidReportPhoneDetailInfo(boolean z) {
        if (a("setForbidReportPhoneDetailInfo")) {
            return;
        }
        x1 x1Var = this.p;
        x1Var.l = z;
        if (!x1Var.r()) {
            x1Var.a("sim_serial_number", (Object) null);
        }
        if (LogUtils.isDisabled()) {
            return;
        }
        LogUtils.sendJsonFetcher("update_config", new b(z));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setGPSLocation(float f, float f2, String str) {
        if (this.p == null) {
            this.D.warn("Please initialize first", new Object[0]);
        } else {
            this.B = new r(f, f2, str);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setGoogleAid(String str) {
        if (a("setGoogleAid")) {
            return;
        }
        x1 x1Var = this.p;
        if (x1Var.a("google_aid", (Object) str)) {
            x1Var.c.f.putString("google_aid", str);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setHeaderInfo(String str, Object obj) {
        if (a("setHeaderInfo") || TextUtils.isEmpty(str)) {
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put(str, obj);
        j5.a(this.D, hashMap);
        this.p.a(hashMap);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setLaunchFrom(int i) {
        this.l = i;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setOaidObserver(IOaidObserver iOaidObserver) {
        o5.a(iOaidObserver);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setPrivacyMode(boolean z) {
        this.x = z;
        if (!k0.d(this.m) || LogUtils.isDisabled()) {
            return;
        }
        LogUtils.sendJsonFetcher("update_config", new C0004d(z));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setPullAbTestConfigsThrottleMills(Long l) {
        if (this.q != null) {
            this.q.a(l);
        } else {
            new m0().initCause(new AssertionError("Please initialize first")).printStackTrace();
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setRangersEventVerifyEnable(boolean z, String str) {
        if (b("setRangersEventVerifyEnable")) {
            return;
        }
        d0 d0Var = this.q;
        d0Var.j.removeMessages(15);
        d0Var.j.obtainMessage(15, new Object[]{Boolean.valueOf(z), str}).sendToTarget();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setTouchPoint(String str) {
        setHeaderInfo("touch_point", str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setTracerData(JSONObject jSONObject) {
        if (a("setTracerData")) {
            return;
        }
        this.p.a("tracer_data", jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setUriRuntime(UriConfig uriConfig) {
        if (b("setUriRuntime")) {
            return;
        }
        d0 d0Var = this.q;
        d0Var.o = uriConfig;
        d0Var.a(d0Var.k);
        if (d0Var.e.c.isAutoActive()) {
            d0Var.a(true);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setUserAgent(String str) {
        if (a("setUserAgent")) {
            return;
        }
        x1 x1Var = this.p;
        if (x1Var.a("user_agent", (Object) str)) {
            x1Var.c.f.putString("user_agent", str);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setUserID(long j) {
        if (b("setUserID")) {
            return;
        }
        this.q.n.a = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.applog.IAppLogInstance
    public void setUserUniqueID(String str) {
        if (this.p != null) {
            setUserUniqueID(str, this.p.l());
            return;
        }
        y4<String> y4Var = this.H;
        y4Var.a = str;
        y4Var.b = true;
        this.D.debug(com.bytedance.bdtracker.a.a("cache uuid before init id -> ", str), new Object[0]);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setViewId(Dialog dialog, String str) {
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        dialog.getWindow().getDecorView().setTag(R.id.applog_tag_view_id, str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setViewId(View view, String str) {
        if (view == null) {
            return;
        }
        view.setTag(R.id.applog_tag_view_id, str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setViewId(Object obj, String str) {
        if (obj == null) {
            return;
        }
        if (!k0.a(obj, "android.support.v7.app.AlertDialog", "androidx.appcompat.app.AlertDialog")) {
            this.D.warn("Only support AlertDialog view", new Object[0]);
            return;
        }
        try {
            Window window = (Window) obj.getClass().getMethod("getWindow", new Class[0]).invoke(obj, new Object[0]);
            if (window != null) {
                window.getDecorView().setTag(R.id.applog_tag_view_id, str);
            }
        } catch (NoSuchMethodException e) {
            this.D.error("Not found getWindow method in alertDialog", e, new Object[0]);
        } catch (Throwable th) {
            this.D.error("Cannot set viewId for alertDialog", th, new Object[0]);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setViewProperties(View view, JSONObject jSONObject) {
        if (view == null || jSONObject == null) {
            return;
        }
        this.a.put(k0.b(view), jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void start() {
        if (b("start") || this.u) {
            return;
        }
        this.u = true;
        d0 d0Var = this.q;
        if (d0Var.r) {
            return;
        }
        d0Var.i();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void startDurationEvent(String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (k0.a(TextUtils.isEmpty(str), "Event name must not empty!")) {
            return;
        }
        j0 j0Var = this.i.get(str);
        if (j0Var == null) {
            j0Var = new j0(this.D, str);
            this.i.put(str, j0Var);
        }
        j0Var.c(elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void startSimulator(String str) {
        if (b("startSimulator")) {
            return;
        }
        d0 d0Var = this.q;
        b0 b0Var = d0Var.s;
        if (b0Var != null) {
            b0Var.d = true;
        }
        Class<?> b2 = k0.b("com.bytedance.applog.picker.DomSender");
        if (b2 != null) {
            try {
                d0Var.s = (b0) b2.getConstructor(d0.class, String.class).newInstance(d0Var, str);
                d0Var.j.sendMessage(d0Var.j.obtainMessage(9, d0Var.s));
            } catch (Throwable th) {
                d0Var.d.D.error("Start simulator failed.", th, new Object[0]);
            }
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void stopDurationEvent(String str, JSONObject jSONObject) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (k0.a(TextUtils.isEmpty(str), "Event name must not empty!")) {
            return;
        }
        j0 j0Var = this.i.get(str);
        if (k0.a((Object) j0Var, "No duration event with name: " + str)) {
            return;
        }
        long j = 0;
        if (elapsedRealtime <= 0) {
            IAppLogLogger iAppLogLogger = j0Var.a;
            if (iAppLogLogger != null) {
                iAppLogLogger.warn(4, "End at illegal time: " + elapsedRealtime, new Object[0]);
            }
        } else {
            j0Var.a(elapsedRealtime);
            IAppLogLogger iAppLogLogger2 = j0Var.a;
            if (iAppLogLogger2 != null) {
                iAppLogLogger2.debug(4, "[DurationEvent:{}] End[ at:{} and duration is {}ms", j0Var.b, Long.valueOf(elapsedRealtime), Long.valueOf(j0Var.d));
            }
            j = j0Var.d;
        }
        JSONObject jSONObject2 = new JSONObject();
        k0.c(jSONObject, jSONObject2);
        try {
            jSONObject2.put("$event_duration", j);
        } catch (Throwable th) {
            this.D.error("JSON handle failed", th, new Object[0]);
        }
        receive(new e4(str, jSONObject2));
        this.i.remove(str);
    }

    public String toString() {
        StringBuilder a2 = com.bytedance.bdtracker.a.a("AppLogInstance{id:");
        a2.append(L.get());
        a2.append(";appId:");
        a2.append(this.m);
        a2.append("}@");
        a2.append(hashCode());
        return a2.toString();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackClick(View view) {
        trackClick(view, null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackClick(View view, JSONObject jSONObject) {
        z3 a2 = k0.a(view, false);
        if (a2 != null && jSONObject != null) {
            a2.o = jSONObject;
        }
        receive(a2);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackPage(Activity activity) {
        trackPage(activity, (JSONObject) null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackPage(Activity activity, JSONObject jSONObject) {
        a(activity, jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackPage(Object obj) {
        trackPage(obj, (JSONObject) null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackPage(Object obj, JSONObject jSONObject) {
        a(obj, jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void userProfileSetOnce(JSONObject jSONObject, UserProfileCallback userProfileCallback) {
        if (b("userProfileSetOnce")) {
            return;
        }
        d0 d0Var = this.q;
        if (d0Var.j != null) {
            o3.a(d0Var, 0, jSONObject, userProfileCallback, d0Var.j, false);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void userProfileSync(JSONObject jSONObject, UserProfileCallback userProfileCallback) {
        if (b("userProfileSync")) {
            return;
        }
        d0 d0Var = this.q;
        if (d0Var.j != null) {
            o3.a(d0Var, 1, jSONObject, userProfileCallback, d0Var.j, false);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(String str, Bundle bundle, int i) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th) {
                        th = th;
                        jSONObject = jSONObject2;
                        this.D.error("Parse event params failed", th, new Object[0]);
                        onEventV3(str, jSONObject, i);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        onEventV3(str, jSONObject, i);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setHeaderInfo(HashMap<String, Object> hashMap) {
        if (a("setHeaderInfo")) {
            return;
        }
        j5.a(this.D, hashMap);
        this.p.a(hashMap);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(String str, JSONObject jSONObject, int i) {
        if (TextUtils.isEmpty(str)) {
            this.D.error("event name is empty", new Object[0]);
            return;
        }
        IAppLogLogger iAppLogLogger = this.D;
        List<String> asList = Arrays.asList("customEvent", "eventV3");
        Object[] objArr = new Object[3];
        objArr[0] = str;
        objArr[1] = Integer.valueOf(i);
        objArr[2] = jSONObject != null ? jSONObject.toString() : null;
        iAppLogLogger.debug(asList, "event:{} type:{} params:{} ", objArr);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        j5.a(this.D, str, jSONObject);
        receive(new e4(this.m, str, false, jSONObject != null ? jSONObject.toString() : null, i));
        m2 monitor = getMonitor();
        String sessionId = getSessionId();
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        a3 a3Var = new a3();
        a3Var.a = "onEventV3";
        a3Var.b = elapsedRealtime2 - elapsedRealtime;
        if (monitor != null) {
            ((r2) monitor).a(a3Var);
        }
        if (monitor != null) {
            if (sessionId == null) {
                sessionId = "";
            }
            ((r2) monitor).a(new y2(0L, sessionId, 1L));
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void receive(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str);
            sb.append(",");
        }
        if (this.q == null) {
            this.e.a(strArr);
            return;
        }
        d0 d0Var = this.q;
        d0Var.p.removeMessages(4);
        d0Var.p.obtainMessage(4, strArr).sendToTarget();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.applog.IAppLogInstance
    public void setUserUniqueID(String str, String str2) {
        synchronized (this.J) {
            if (this.p != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.q.a(str, str2);
                p2.a(getMonitor(), "api_usage", "setUserUniqueID", elapsedRealtime);
                return;
            }
            y4<String> y4Var = this.H;
            y4Var.a = str;
            y4Var.b = true;
            this.D.debug("cache uuid before init id -> " + str, new Object[0]);
            y4<String> y4Var2 = this.I;
            y4Var2.a = str2;
            y4Var2.b = true;
            this.D.debug("cache uuid before init type -> " + str2, new Object[0]);
        }
    }
}
