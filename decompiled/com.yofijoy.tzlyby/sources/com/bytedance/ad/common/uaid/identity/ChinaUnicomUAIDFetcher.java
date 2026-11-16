package com.bytedance.ad.common.uaid.identity;

import android.content.Context;
import android.net.Network;
import android.os.Build;
import com.bytedance.ad.common.uaid.identity.Constant;
import com.bytedance.ad.common.uaid.identity.utils.SIMUtils;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import javax.net.ssl.HttpsURLConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0002J*\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001a\u0010\u0014\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u0006H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0017"}, d2 = {"Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;", "Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;", "config", "Lcom/bytedance/ad/common/uaid/identity/Config;", "(Lcom/bytedance/ad/common/uaid/identity/Config;)V", "type", "", "getType", "()Ljava/lang/String;", "fetchNewToken", "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;", "context", "Landroid/content/Context;", "network", "Landroid/net/Network;", "getAuthurl", "getPrivateIPV4", "realFetchToken", "url", "ipv4", "startGetRequest", "Lorg/json/JSONObject;", "Companion", "uaid_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class ChinaUnicomUAIDFetcher extends AbsUAIDFetcher {
    public static final String APP_ID = "1554778161154";
    public static final String CARRIER = "3";
    public static final String GET_TOKEN_URL = "https://nisportal.10010.com:9001/api";
    public static final String VENDOR = "3";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChinaUnicomUAIDFetcher(Config config) {
        super(config);
        Intrinsics.checkNotNullParameter(config, "config");
    }

    private final String getAuthurl(Network network) {
        JSONObject startGetRequest = startGetRequest(network, "https://nisportal.10010.com:9001/api?appid=1554778161154");
        if (startGetRequest.has("err_code")) {
            getUaidResult().setErrCode(startGetRequest.getString("err_code"));
            return null;
        }
        if (startGetRequest.has("authurl")) {
            getUaidResult().setErrCode(Constant.StatusCode.GET_URL_SUCC);
            return startGetRequest.getString("authurl");
        }
        getUaidResult().setErrCode(Constant.StatusCode.ERR_FAIL_GET_URL);
        return null;
    }

    private final String getPrivateIPV4() {
        Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
        while (it.hasNext()) {
            NetworkInterface networkInterface = (NetworkInterface) it.next();
            Intrinsics.checkNotNullExpressionValue(networkInterface, "networkInterface");
            Iterator it2 = Collections.list(networkInterface.getInetAddresses()).iterator();
            while (it2.hasNext()) {
                InetAddress inetAddresses = (InetAddress) it2.next();
                Intrinsics.checkNotNullExpressionValue(inetAddresses, "inetAddresses");
                if (inetAddresses.isSiteLocalAddress() && (inetAddresses instanceof Inet4Address)) {
                    String hostAddress = ((Inet4Address) inetAddresses).getHostAddress();
                    if (hostAddress != null) {
                        return hostAddress;
                    }
                    return null;
                }
            }
        }
        return null;
    }

    private final UAIDResult realFetchToken(Context context, Network network, String url, String ipv4) {
        JSONObject startGetRequest = startGetRequest(network, url + "/api?appid=1554778161154&private_ip=" + ipv4);
        if (startGetRequest.has("err_code")) {
            getUaidResult().setErrCode(startGetRequest.getString("err_code"));
        } else {
            if (!startGetRequest.has("code")) {
                return getUaidResult();
            }
            getUaidResult().set("3", Constant.StatusCode.GET_TOKEN_SUCC, startGetRequest.getString("code"), "3", SIMUtils.getCurrentSimSubId(context), System.currentTimeMillis());
        }
        return getUaidResult();
    }

    private final JSONObject startGetRequest(Network network, String url) {
        URLConnection openConnection;
        URL url2 = new URL(url);
        if (network == null) {
            openConnection = url2.openConnection();
        } else {
            if (Build.VERSION.SDK_INT < 21) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("err_code", Constant.StatusCode.ERR_ANDROID_VERSION);
                return jSONObject;
            }
            openConnection = network.openConnection(url2);
        }
        Objects.requireNonNull(openConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
        InputStream inputStream = (InputStream) null;
        try {
            try {
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setDoInput(true);
                httpsURLConnection.setDefaultUseCaches(false);
                httpsURLConnection.connect();
                if (httpsURLConnection.getResponseCode() != 200) {
                    JSONObject jSONObject2 = new JSONObject();
                    httpsURLConnection.disconnect();
                    return jSONObject2;
                }
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                byte[] bArr = new byte[2048];
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int read = inputStream2.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    Charset charset = StandardCharsets.UTF_8;
                    Intrinsics.checkNotNullExpressionValue(charset, "StandardCharsets.UTF_8");
                    sb.append(new String(bArr, 0, read, charset));
                }
                JSONObject jSONObject3 = new JSONObject(sb.toString());
                inputStream2.close();
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return jSONObject3;
            } catch (Exception unused) {
                JSONObject jSONObject4 = new JSONObject();
                if (inputStream != null) {
                    inputStream.close();
                }
                httpsURLConnection.disconnect();
                return jSONObject4;
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            httpsURLConnection.disconnect();
            throw th;
        }
    }

    @Override // com.bytedance.ad.common.uaid.identity.AbsUAIDFetcher
    public UAIDResult fetchNewToken(Context context, Network network) {
        String privateIPV4;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            String authurl = getAuthurl(network);
            if (authurl != null && (privateIPV4 = getPrivateIPV4()) != null) {
                realFetchToken(context, network, authurl, privateIPV4);
            }
        } catch (Exception e) {
            getUaidResult().setErrCode(e.getMessage());
        }
        return getUaidResult();
    }

    @Override // com.bytedance.ad.common.uaid.identity.AbsUAIDFetcher
    public String getType() {
        return "3";
    }
}
