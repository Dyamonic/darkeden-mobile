package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.util.Base64;
import android.util.Log;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d extends AsyncTask<Void, Void, a> {
    private static final boolean m;
    private static final String n;
    private static String o;
    private String appId;
    private String p;
    private String q;
    private OAuthListener r;
    private f s;
    private String scope;
    private String signature;

    /* loaded from: classes2.dex */
    static class a {
        public OAuthErrCode t;
        public String u;
        public String v;
        public String w;
        public int x;
        public String y;
        public byte[] z;

        private a() {
        }

        public static a a(byte[] bArr) {
            OAuthErrCode oAuthErrCode;
            String format;
            a aVar = new a();
            if (bArr != null && bArr.length != 0) {
                try {
                } catch (Exception e) {
                    format = String.format("parse fail, build String fail, ex = %s", e.getMessage());
                }
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                    int i = jSONObject.getInt("errcode");
                    if (i != 0) {
                        Log.e("MicroMsg.SDK.GetQRCodeResult", String.format("resp errcode = %d", Integer.valueOf(i)));
                        aVar.t = OAuthErrCode.WechatAuth_Err_NormalErr;
                        aVar.x = i;
                        aVar.y = jSONObject.optString("errmsg");
                        return aVar;
                    }
                    String string = jSONObject.getJSONObject("qrcode").getString("qrcodebase64");
                    if (string != null && string.length() != 0) {
                        byte[] decode = Base64.decode(string, 0);
                        if (decode != null && decode.length != 0) {
                            if (!d.m) {
                                aVar.t = OAuthErrCode.WechatAuth_Err_OK;
                                aVar.z = decode;
                                aVar.u = jSONObject.getString("uuid");
                                String string2 = jSONObject.getString("appname");
                                aVar.v = string2;
                                Log.d("MicroMsg.SDK.GetQRCodeResult", String.format("parse succ, save in memory, uuid = %s, appname = %s, imgBufLength = %d", aVar.u, string2, Integer.valueOf(aVar.z.length)));
                                return aVar;
                            }
                            File file = new File(d.n);
                            file.mkdirs();
                            if (file.exists()) {
                                file.delete();
                            }
                            if (!a(d.n, decode)) {
                                Log.e("MicroMsg.SDK.GetQRCodeResult", String.format("writeToFile fail, qrcodeBuf length = %d", Integer.valueOf(decode.length)));
                                aVar.t = OAuthErrCode.WechatAuth_Err_NormalErr;
                                return aVar;
                            }
                            aVar.t = OAuthErrCode.WechatAuth_Err_OK;
                            aVar.w = d.n;
                            aVar.u = jSONObject.getString("uuid");
                            String string3 = jSONObject.getString("appname");
                            aVar.v = string3;
                            Log.d("MicroMsg.SDK.GetQRCodeResult", String.format("parse succ, save in external storage, uuid = %s, appname = %s, imgPath = %s", aVar.u, string3, aVar.w));
                            return aVar;
                        }
                        Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBuf is null");
                        aVar.t = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                        return aVar;
                    }
                    Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBase64 is null");
                    aVar.t = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                    return aVar;
                } catch (Exception e2) {
                    format = String.format("parse json fail, ex = %s", e2.getMessage());
                    Log.e("MicroMsg.SDK.GetQRCodeResult", format);
                    oAuthErrCode = OAuthErrCode.WechatAuth_Err_NormalErr;
                    aVar.t = oAuthErrCode;
                    return aVar;
                }
            }
            Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, buf is null");
            oAuthErrCode = OAuthErrCode.WechatAuth_Err_NetworkErr;
            aVar.t = oAuthErrCode;
            return aVar;
        }

        private static boolean a(String str, byte[] bArr) {
            FileOutputStream fileOutputStream;
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(str);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
                try {
                    fileOutputStream.close();
                } catch (IOException e2) {
                    Log.e("MicroMsg.SDK.GetQRCodeResult", "fout.close() exception:" + e2.getMessage());
                }
                Log.d("MicroMsg.SDK.GetQRCodeResult", "writeToFile ok!");
                return true;
            } catch (Exception e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                Log.w("MicroMsg.SDK.GetQRCodeResult", "write to file error, exception:" + e.getMessage());
                if (fileOutputStream2 == null) {
                    return false;
                }
                try {
                    fileOutputStream2.close();
                    return false;
                } catch (IOException e4) {
                    Log.e("MicroMsg.SDK.GetQRCodeResult", "fout.close() exception:" + e4.getMessage());
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e5) {
                        Log.e("MicroMsg.SDK.GetQRCodeResult", "fout.close() exception:" + e5.getMessage());
                    }
                }
                throw th;
            }
        }
    }

    static {
        m = Environment.getExternalStorageState().equals("mounted") && new File(Environment.getExternalStorageDirectory().getAbsolutePath()).canWrite();
        n = Environment.getExternalStorageDirectory().getAbsolutePath() + "/tencent/MicroMsg/oauth_qrcode.png";
        o = null;
        o = "http://open.weixin.qq.com/connect/sdk/qrconnect?appid=%s&noncestr=%s&timestamp=%s&scope=%s&signature=%s";
    }

    public d(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        this.appId = str;
        this.scope = str2;
        this.p = str3;
        this.q = str4;
        this.signature = str5;
        this.r = oAuthListener;
    }

    public final boolean a() {
        Log.i("MicroMsg.SDK.GetQRCodeTask", "cancelTask");
        f fVar = this.s;
        return fVar == null ? cancel(true) : fVar.cancel(true);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ a doInBackground(Void[] voidArr) {
        Log.i("MicroMsg.SDK.GetQRCodeTask", "external storage available = " + m);
        String format = String.format(o, this.appId, this.p, this.q, this.scope, this.signature);
        long currentTimeMillis = System.currentTimeMillis();
        byte[] a2 = e.a(format, -1);
        Log.d("MicroMsg.SDK.GetQRCodeTask", String.format("doInBackground, url = %s, time consumed = %d(ms)", format, Long.valueOf(System.currentTimeMillis() - currentTimeMillis)));
        return a.a(a2);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(a aVar) {
        a aVar2 = aVar;
        if (aVar2.t != OAuthErrCode.WechatAuth_Err_OK) {
            Log.e("MicroMsg.SDK.GetQRCodeTask", String.format("onPostExecute, get qrcode fail, OAuthErrCode = %s", aVar2.t));
            this.r.onAuthFinish(aVar2.t, null);
            return;
        }
        Log.d("MicroMsg.SDK.GetQRCodeTask", "onPostExecute, get qrcode success");
        this.r.onAuthGotQrcode(aVar2.w, aVar2.z);
        f fVar = new f(aVar2.u, this.r);
        this.s = fVar;
        if (Build.VERSION.SDK_INT >= 11) {
            fVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            fVar.execute(new Void[0]);
        }
    }
}
