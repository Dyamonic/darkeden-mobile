package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.util.Log;
import com.taptap.sdk.moment.constant.Constant;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import cz.msebera.android.httpclient.HttpStatus;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class f extends AsyncTask<Void, Void, a> {
    private int A;
    private OAuthListener r;
    private String u;
    private String url;

    /* loaded from: classes2.dex */
    static class a {
        public String B;
        public int C;
        public OAuthErrCode t;

        a() {
        }

        public static a b(byte[] bArr) {
            OAuthErrCode oAuthErrCode;
            String format;
            OAuthErrCode oAuthErrCode2;
            a aVar = new a();
            if (bArr != null && bArr.length != 0) {
                try {
                } catch (Exception e) {
                    format = String.format("parse fail, build String fail, ex = %s", e.getMessage());
                }
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                    int i = jSONObject.getInt("wx_errcode");
                    aVar.C = i;
                    Log.d("MicroMsg.SDK.NoopingResult", String.format("nooping uuidStatusCode = %d", Integer.valueOf(i)));
                    int i2 = aVar.C;
                    if (i2 == 408) {
                        oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_OK;
                    } else {
                        if (i2 != 500) {
                            switch (i2) {
                                case HttpStatus.SC_PAYMENT_REQUIRED /* 402 */:
                                    oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_Timeout;
                                    break;
                                case HttpStatus.SC_FORBIDDEN /* 403 */:
                                    oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_Cancel;
                                    break;
                                case HttpStatus.SC_NOT_FOUND /* 404 */:
                                    oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_OK;
                                    break;
                                case HttpStatus.SC_METHOD_NOT_ALLOWED /* 405 */:
                                    aVar.t = OAuthErrCode.WechatAuth_Err_OK;
                                    aVar.B = jSONObject.getString("wx_code");
                                    break;
                                default:
                                    oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_NormalErr;
                                    break;
                            }
                            return aVar;
                        }
                        oAuthErrCode2 = OAuthErrCode.WechatAuth_Err_NormalErr;
                    }
                    aVar.t = oAuthErrCode2;
                    return aVar;
                } catch (Exception e2) {
                    format = String.format("parse json fail, ex = %s", e2.getMessage());
                    Log.e("MicroMsg.SDK.NoopingResult", format);
                    oAuthErrCode = OAuthErrCode.WechatAuth_Err_NormalErr;
                    aVar.t = oAuthErrCode;
                    return aVar;
                }
            }
            Log.e("MicroMsg.SDK.NoopingResult", "parse fail, buf is null");
            oAuthErrCode = OAuthErrCode.WechatAuth_Err_NetworkErr;
            aVar.t = oAuthErrCode;
            return aVar;
        }
    }

    public f(String str, OAuthListener oAuthListener) {
        this.u = str;
        this.r = oAuthListener;
        this.url = String.format("https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s", str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ a doInBackground(Void[] voidArr) {
        a aVar;
        OAuthErrCode oAuthErrCode;
        String str;
        String str2 = this.u;
        if (str2 == null || str2.length() == 0) {
            Log.e("MicroMsg.SDK.NoopingTask", "run fail, uuid is null");
            aVar = new a();
            oAuthErrCode = OAuthErrCode.WechatAuth_Err_NormalErr;
        } else {
            while (!isCancelled()) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.url);
                if (this.A == 0) {
                    str = "";
                } else {
                    str = "&last=" + this.A;
                }
                sb.append(str);
                String sb2 = sb.toString();
                long currentTimeMillis = System.currentTimeMillis();
                byte[] a2 = e.a(sb2, Constant.CALLBACK_CODE_LOGIN_SUCCESS);
                long currentTimeMillis2 = System.currentTimeMillis();
                a b = a.b(a2);
                Log.d("MicroMsg.SDK.NoopingTask", String.format("nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)", sb2, b.t.toString(), Integer.valueOf(b.C), Long.valueOf(currentTimeMillis2 - currentTimeMillis)));
                if (b.t != OAuthErrCode.WechatAuth_Err_OK) {
                    Log.e("MicroMsg.SDK.NoopingTask", String.format("nooping fail, errCode = %s, uuidStatusCode = %d", b.t.toString(), Integer.valueOf(b.C)));
                    return b;
                }
                this.A = b.C;
                if (b.C == g.UUID_SCANED.getCode()) {
                    this.r.onQrcodeScanned();
                } else if (b.C != g.UUID_KEEP_CONNECT.getCode() && b.C == g.UUID_CONFIRM.getCode()) {
                    if (b.B == null || b.B.length() == 0) {
                        Log.e("MicroMsg.SDK.NoopingTask", "nooping fail, confirm with an empty code!!!");
                        b.t = OAuthErrCode.WechatAuth_Err_NormalErr;
                    }
                    return b;
                }
            }
            Log.i("MicroMsg.SDK.NoopingTask", "IDiffDevOAuth.stopAuth / detach invoked");
            aVar = new a();
            oAuthErrCode = OAuthErrCode.WechatAuth_Err_Auth_Stopped;
        }
        aVar.t = oAuthErrCode;
        return aVar;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(a aVar) {
        a aVar2 = aVar;
        this.r.onAuthFinish(aVar2.t, aVar2.B);
    }
}
