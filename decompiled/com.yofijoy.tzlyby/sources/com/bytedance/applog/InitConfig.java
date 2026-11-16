package com.bytedance.applog;

import android.accounts.Account;
import android.text.TextUtils;
import com.bytedance.applog.encryptor.IEncryptorType;
import com.bytedance.applog.network.INetworkClient;
import com.bytedance.applog.store.kv.KVStoreConfig;
import com.bytedance.bdtracker.k0;
import com.bytedance.bdtracker.o2;
import com.bytedance.bdtracker.t5;
import com.bytedance.bdtracker.y;
import com.bytedance.mpaas.IEncryptor;
import com.taptap.sdk.update.download.DownloadTask;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class InitConfig {
    public String A;
    public SSLSocketFactory A0;
    public Map<String, Object> B;
    public Account C;
    public boolean D;
    public INetworkClient E;
    public boolean G;
    public String L;
    public String M;
    public ISensitiveInfoProvider N;
    public List<String> T;
    public String X;
    public boolean Y;
    public final String a;
    public String c;
    public String d;
    public y e;
    public String f;
    public String g;
    public ILogger h;
    public String i;
    public String j;
    public IPicker k;
    public boolean l;
    public boolean n;
    public String p;
    public boolean q;
    public String r;
    public UriConfig s;
    public String t;
    public String u;
    public int v;
    public int w;
    public int x;
    public String y;
    public String z;
    public boolean b = true;
    public boolean m = false;
    public int o = 0;
    public boolean F = true;
    public boolean H = false;
    public boolean I = true;
    public boolean J = true;
    public boolean K = true;
    public boolean O = true;
    public boolean P = true;
    public boolean Q = false;
    public boolean R = false;
    public boolean S = false;
    public boolean U = false;
    public boolean V = false;
    public boolean W = true;
    public IpcDataChecker Z = null;

    @Deprecated
    public String a0 = null;

    @Deprecated
    public String b0 = null;
    public boolean c0 = true;
    public boolean d0 = false;
    public boolean e0 = false;
    public boolean f0 = true;
    public boolean g0 = true;
    public boolean h0 = true;
    public boolean i0 = false;
    public boolean j0 = false;
    public boolean k0 = false;
    public boolean l0 = false;
    public boolean m0 = false;
    public boolean n0 = true;
    public int o0 = 6;
    public boolean p0 = true;
    public boolean q0 = false;
    public int r0 = DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS;
    public int s0 = 0;
    public Map<String, String> t0 = null;
    public DynamicValueCallback<Map<String, String>> u0 = null;
    public boolean v0 = true;
    public boolean w0 = true;
    public boolean x0 = true;
    public boolean y0 = true;
    public final Set<String> z0 = new HashSet(4);
    public KVStoreConfig B0 = KVStoreConfig.DEFAULT_CONFIG;

    /* loaded from: classes.dex */
    public interface IpcDataChecker {
        boolean checkIpcData(String[] strArr);
    }

    public InitConfig(String str, String str2) {
        this.a = str;
        this.c = str2;
    }

    public void addLoaderFilter(String str) {
        this.z0.add(str);
    }

    public boolean autoStart() {
        return this.b;
    }

    public InitConfig clearABCacheOnUserChange(boolean z) {
        this.W = z;
        return this;
    }

    public void clearDidAndIid(String str) {
        this.D = true;
        this.d = str;
    }

    public InitConfig disableDeferredALink() {
        this.V = false;
        return this;
    }

    public InitConfig enableDeferredALink() {
        this.V = true;
        return this;
    }

    public Account getAccount() {
        return this.C;
    }

    public String getAid() {
        return this.a;
    }

    public String getAliyunUdid() {
        return this.j;
    }

    public boolean getAnonymous() {
        return this.l;
    }

    public String getAppImei() {
        return this.X;
    }

    public String getAppName() {
        return this.r;
    }

    public int getAutoTrackEventType() {
        return this.o0;
    }

    public String getChannel() {
        return this.c;
    }

    public String getClearKey() {
        return this.d;
    }

    public Map<String, Object> getCommonHeader() {
        return this.B;
    }

    public String getDbName() {
        if (!TextUtils.isEmpty(this.L)) {
            return this.L;
        }
        return k0.a((Object) this.a) + "@bd_tea_agent.db";
    }

    public IEncryptor getEncryptor() {
        return this.e;
    }

    public int getGaidTimeOutMilliSeconds() {
        return this.r0;
    }

    public String getGoogleAid() {
        return this.f;
    }

    public List<String> getH5BridgeAllowlist() {
        return this.T;
    }

    public DynamicValueCallback<Map<String, String>> getHttpHeaderCallback() {
        return this.u0;
    }

    @Deprecated
    public Map<String, String> getHttpHeaders() {
        return this.t0;
    }

    public IpcDataChecker getIpcDataChecker() {
        return this.Z;
    }

    public KVStoreConfig getKvStoreConfig() {
        return this.B0;
    }

    public String getLanguage() {
        return this.g;
    }

    public Set<String> getLoaderFilters() {
        return this.z0;
    }

    public boolean getLocalTest() {
        return this.m;
    }

    public ILogger getLogger() {
        return this.h;
    }

    public String getManifestVersion() {
        return this.y;
    }

    public int getManifestVersionCode() {
        return this.x;
    }

    public INetworkClient getNetworkClient() {
        return this.E;
    }

    public boolean getNotReuqestSender() {
        return this.q;
    }

    public IPicker getPicker() {
        return this.k;
    }

    public t5 getPreInstallCallback() {
        return null;
    }

    public int getProcess() {
        return this.o;
    }

    public String getRegion() {
        return this.i;
    }

    public String getReleaseBuild() {
        return this.p;
    }

    public ISensitiveInfoProvider getSensitiveInfoProvider() {
        return this.N;
    }

    public String getSpName() {
        return this.M;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.A0;
    }

    public int getTrackCrashType() {
        return this.s0;
    }

    public String getTweakedChannel() {
        return this.u;
    }

    public int getUpdateVersionCode() {
        return this.w;
    }

    public UriConfig getUriConfig() {
        return this.s;
    }

    @Deprecated
    public String getUserUniqueId() {
        return this.a0;
    }

    @Deprecated
    public String getUserUniqueIdType() {
        return this.b0;
    }

    public String getVersion() {
        return this.t;
    }

    public int getVersionCode() {
        return this.v;
    }

    public String getVersionMinor() {
        return this.z;
    }

    public String getZiJieCloudPkg() {
        return this.A;
    }

    public boolean isAbEnable() {
        return this.H;
    }

    public boolean isAndroidIdEnabled() {
        return this.h0;
    }

    public boolean isAutoActive() {
        return this.F;
    }

    public boolean isAutoTrackEnabled() {
        return this.I;
    }

    public boolean isAutoTrackFragmentEnabled() {
        return this.e0;
    }

    public boolean isClearABCacheOnUserChange() {
        return this.W;
    }

    public boolean isClearDidAndIid() {
        return this.D;
    }

    public boolean isCongestionControlEnable() {
        return this.K;
    }

    public boolean isDeferredALinkEnabled() {
        return this.V;
    }

    public boolean isEventFilterEnable() {
        return this.Y;
    }

    public boolean isExposureEnabled() {
        return this.i0;
    }

    public boolean isGaidEnabled() {
        return this.q0;
    }

    public boolean isH5BridgeAllowAll() {
        return this.U;
    }

    public boolean isH5BridgeEnable() {
        return this.Q;
    }

    public boolean isH5CollectEnable() {
        return this.R;
    }

    public boolean isHandleLifeCycle() {
        return this.J;
    }

    public boolean isHarmonyEnabled() {
        return this.d0;
    }

    public boolean isIccIdEnabled() {
        return this.v0;
    }

    public boolean isImeiEnable() {
        return this.P;
    }

    public boolean isLaunchTerminateEnabled() {
        return this.y0;
    }

    public boolean isLogEnable() {
        return this.S;
    }

    public boolean isMacEnable() {
        return this.O;
    }

    public boolean isMetaSecEnabled() {
        return this.f0;
    }

    public boolean isMigrateEnabled() {
        return this.p0;
    }

    public boolean isMonitorEnabled() {
        return this.k0;
    }

    public boolean isOaidEnabled() {
        return this.g0;
    }

    public boolean isOperatorInfoEnabled() {
        return this.n0;
    }

    public boolean isPageMetaAnnotationEnable() {
        return this.x0;
    }

    public boolean isPlayEnable() {
        return this.n;
    }

    public boolean isReportOaidEnable() {
        return this.m0;
    }

    public boolean isScreenOrientationEnabled() {
        return this.l0;
    }

    public boolean isScrollObserveEnabled() {
        return this.j0;
    }

    public boolean isSerialNumberEnable() {
        return this.w0;
    }

    public boolean isSilenceInBackground() {
        return this.G;
    }

    public boolean isTrackEventEnabled() {
        return this.c0;
    }

    public InitConfig putCommonHeader(Map<String, Object> map) {
        this.B = map;
        return this;
    }

    public void setAbEnable(boolean z) {
        this.H = z;
    }

    public InitConfig setAccount(Account account) {
        this.C = account;
        return this;
    }

    public InitConfig setAliyunUdid(String str) {
        this.j = str;
        return this;
    }

    public void setAndroidIdEnabled(boolean z) {
        this.h0 = z;
    }

    public InitConfig setAnonymous(boolean z) {
        this.l = z;
        return this;
    }

    public void setAppImei(String str) {
        this.X = str;
    }

    public InitConfig setAppName(String str) {
        this.r = str;
        return this;
    }

    public void setAutoActive(boolean z) {
        this.F = z;
    }

    public InitConfig setAutoStart(boolean z) {
        this.b = z;
        return this;
    }

    public void setAutoTrackEnabled(boolean z) {
        this.I = z;
    }

    public void setAutoTrackEventType(int i) {
        this.o0 = i;
    }

    public void setAutoTrackFragmentEnabled(boolean z) {
        this.e0 = z;
    }

    public void setChannel(String str) {
        this.c = str;
    }

    public void setCongestionControlEnable(boolean z) {
        this.K = z;
    }

    public InitConfig setDbName(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.L = str;
        }
        return this;
    }

    public InitConfig setEnablePlay(boolean z) {
        this.n = z;
        return this;
    }

    public InitConfig setEncryptor(IEncryptor iEncryptor) {
        this.e = new y(iEncryptor, IEncryptorType.DEFAULT_ENCRYPTOR);
        return this;
    }

    public InitConfig setEncryptor(IEncryptor iEncryptor, String str) {
        this.e = new y(iEncryptor, str);
        return this;
    }

    public void setEventFilterEnable(boolean z) {
        this.Y = z;
    }

    public void setExposureEnabled(boolean z) {
        this.i0 = z;
    }

    public void setGaidEnabled(boolean z) {
        this.q0 = z;
    }

    public void setGaidTimeOutMilliSeconds(int i) {
        this.r0 = i;
    }

    public InitConfig setGoogleAid(String str) {
        this.f = str;
        return this;
    }

    public InitConfig setH5BridgeAllowAll(boolean z) {
        this.U = z;
        return this;
    }

    public InitConfig setH5BridgeAllowlist(List<String> list) {
        this.T = list;
        return this;
    }

    public InitConfig setH5BridgeEnable(boolean z) {
        this.Q = z;
        return this;
    }

    public InitConfig setH5CollectEnable(boolean z) {
        this.R = z;
        return this;
    }

    public void setHandleLifeCycle(boolean z) {
        this.J = z;
    }

    public void setHarmonyEnable(boolean z) {
        this.d0 = z;
    }

    @Deprecated
    public void setHttpHeaders(Map<String, String> map) {
        this.t0 = map;
    }

    public void setHttpHeadersCallback(DynamicValueCallback<Map<String, String>> dynamicValueCallback) {
        this.u0 = dynamicValueCallback;
    }

    public void setIccIdEnabled(boolean z) {
        this.v0 = z;
    }

    public InitConfig setImeiEnable(boolean z) {
        this.P = z;
        return this;
    }

    public InitConfig setIpcDataChecker(IpcDataChecker ipcDataChecker) {
        this.Z = ipcDataChecker;
        return this;
    }

    public void setKvStoreConfig(KVStoreConfig kVStoreConfig) {
        this.B0 = kVStoreConfig;
    }

    public InitConfig setLanguage(String str) {
        this.g = str;
        return this;
    }

    public void setLaunchTerminateEnabled(boolean z) {
        this.y0 = z;
    }

    public InitConfig setLocalTest(boolean z) {
        this.m = z;
        return this;
    }

    public InitConfig setLogEnable(boolean z) {
        this.S = z;
        return this;
    }

    public InitConfig setLogger(ILogger iLogger) {
        this.h = iLogger;
        return this;
    }

    public void setMacEnable(boolean z) {
        this.O = z;
    }

    public InitConfig setMainProcess() {
        this.o = 1;
        return this;
    }

    public InitConfig setManifestVersion(String str) {
        this.y = str;
        return this;
    }

    public InitConfig setManifestVersionCode(int i) {
        this.x = i;
        return this;
    }

    public void setMetaSecEnabled(boolean z) {
        this.f0 = z;
    }

    public void setMigrateEnabled(boolean z) {
        this.p0 = z;
    }

    public void setMonitorEnabled(boolean z) {
        o2.b(this);
        this.k0 = z;
    }

    public InitConfig setNetworkClient(INetworkClient iNetworkClient) {
        this.E = iNetworkClient;
        return this;
    }

    public InitConfig setNotRequestSender(boolean z) {
        this.q = z;
        return this;
    }

    public void setOaidEnabled(boolean z) {
        this.g0 = z;
    }

    public void setOperatorInfoEnabled(boolean z) {
        this.n0 = z;
    }

    public void setPageMetaAnnotationEnable(boolean z) {
        this.x0 = z;
    }

    public InitConfig setPicker(IPicker iPicker) {
        this.k = iPicker;
        return this;
    }

    public InitConfig setPreInstallChannelCallback(t5 t5Var) {
        return this;
    }

    public InitConfig setProcess(int i) {
        this.o = i;
        return this;
    }

    public InitConfig setRegion(String str) {
        this.i = str;
        return this;
    }

    public InitConfig setReleaseBuild(String str) {
        this.p = str;
        return this;
    }

    public void setReportOaidEnable(boolean z) {
        this.m0 = z;
    }

    public void setScreenOrientationEnabled(boolean z) {
        this.l0 = z;
    }

    public void setScrollObserveEnabled(boolean z) {
        this.j0 = z;
    }

    public void setSensitiveInfoProvider(ISensitiveInfoProvider iSensitiveInfoProvider) {
        this.N = iSensitiveInfoProvider;
    }

    public void setSerialNumberEnable(boolean z) {
        this.w0 = z;
    }

    public void setSilenceInBackground(boolean z) {
        this.G = z;
    }

    public InitConfig setSpName(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.M = str;
        }
        return this;
    }

    public void setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.A0 = sSLSocketFactory;
    }

    public void setTrackCrashType(int i) {
        this.s0 = i;
    }

    public void setTrackEventEnabled(boolean z) {
        this.c0 = z;
    }

    public InitConfig setTweakedChannel(String str) {
        this.u = str;
        return this;
    }

    public InitConfig setUpdateVersionCode(int i) {
        this.w = i;
        return this;
    }

    public InitConfig setUriConfig(int i) {
        this.s = UriConfig.createUriConfig(i);
        return this;
    }

    public InitConfig setUriConfig(UriConfig uriConfig) {
        this.s = uriConfig;
        return this;
    }

    @Deprecated
    public InitConfig setUserUniqueId(String str) {
        this.a0 = str;
        return this;
    }

    @Deprecated
    public InitConfig setUserUniqueIdType(String str) {
        this.b0 = str;
        return this;
    }

    public InitConfig setVersion(String str) {
        this.t = str;
        return this;
    }

    public InitConfig setVersionCode(int i) {
        this.v = i;
        return this;
    }

    public InitConfig setVersionMinor(String str) {
        this.z = str;
        return this;
    }

    public InitConfig setZiJieCloudPkg(String str) {
        this.A = str;
        return this;
    }
}
