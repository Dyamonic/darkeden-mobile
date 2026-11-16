package com.tencent.connect.share;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import androidx.core.content.FileProvider;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.a.d;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.b;
import com.tencent.open.utils.c;
import com.tencent.open.utils.e;
import com.tencent.open.utils.h;
import com.tencent.open.utils.k;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.io.File;
import java.util.ArrayList;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class QQShare extends BaseApi {
    public static final int QQ_SHARE_SUMMARY_MAX_LENGTH = 512;
    public static final int QQ_SHARE_TITLE_MAX_LENGTH = 128;
    public static final String SHARE_TO_QQ_APP_NAME = "appName";
    public static final String SHARE_TO_QQ_ARK_INFO = "share_to_qq_ark_info";
    public static final String SHARE_TO_QQ_AUDIO_URL = "audio_url";
    public static final String SHARE_TO_QQ_EXT_INT = "cflag";
    public static final String SHARE_TO_QQ_EXT_STR = "share_qq_ext_str";
    public static final int SHARE_TO_QQ_FLAG_QZONE_AUTO_OPEN = 1;
    public static final int SHARE_TO_QQ_FLAG_QZONE_ITEM_HIDE = 2;
    public static final String SHARE_TO_QQ_IMAGE_LOCAL_URL = "imageLocalUrl";
    public static final String SHARE_TO_QQ_IMAGE_URL = "imageUrl";
    public static final String SHARE_TO_QQ_KEY_TYPE = "req_type";
    public static final int SHARE_TO_QQ_MINI_PROGRAM = 7;
    public static final String SHARE_TO_QQ_MINI_PROGRAM_APPID = "mini_program_appid";
    public static final String SHARE_TO_QQ_MINI_PROGRAM_PATH = "mini_program_path";
    public static final String SHARE_TO_QQ_MINI_PROGRAM_TYPE = "mini_program_type";
    public static final String SHARE_TO_QQ_SITE = "site";
    public static final String SHARE_TO_QQ_SUMMARY = "summary";
    public static final String SHARE_TO_QQ_TARGET_URL = "targetUrl";
    public static final String SHARE_TO_QQ_TITLE = "title";
    public static final int SHARE_TO_QQ_TYPE_APP = 6;
    public static final int SHARE_TO_QQ_TYPE_AUDIO = 2;
    public static final int SHARE_TO_QQ_TYPE_DEFAULT = 1;
    public static final int SHARE_TO_QQ_TYPE_IMAGE = 5;
    public String mViaShareQQType;

    @Override // com.tencent.connect.common.BaseApi
    public void releaseResource() {
    }

    public QQShare(Context context, QQToken qQToken) {
        super(qQToken);
        this.mViaShareQQType = "";
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0329 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void shareToQQ(android.app.Activity r23, android.os.Bundle r24, com.tencent.tauth.IUiListener r25) {
        /*
            Method dump skipped, instructions count: 864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.connect.share.QQShare.shareToQQ(android.app.Activity, android.os.Bundle, com.tencent.tauth.IUiListener):void");
    }

    private void b(final Activity activity, final Bundle bundle, final IUiListener iUiListener) {
        SLog.i("openSDK_LOG.QQShare", "shareToMobileQQ() -- start.");
        String string = bundle.getString("imageUrl");
        final String string2 = bundle.getString("title");
        final String string3 = bundle.getString("summary");
        SLog.v("openSDK_LOG.QQShare", "shareToMobileQQ -- imageUrl: " + string);
        if (!TextUtils.isEmpty(string)) {
            if (k.g(string)) {
                if (!k.f(activity, "4.3.0")) {
                    d(activity, bundle, iUiListener);
                } else {
                    new b(activity).a(string, new c() { // from class: com.tencent.connect.share.QQShare.1
                        @Override // com.tencent.open.utils.c
                        public void a(int i, ArrayList<String> arrayList) {
                        }

                        @Override // com.tencent.open.utils.c
                        public void a(int i, String str) {
                            if (i == 0) {
                                bundle.putString("imageLocalUrl", str);
                            } else if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
                                IUiListener iUiListener2 = iUiListener;
                                if (iUiListener2 != null) {
                                    iUiListener2.onError(new UiError(-6, Constants.MSG_SHARE_GETIMG_ERROR, null));
                                    SLog.e("openSDK_LOG.QQShare", "shareToMobileQQ -- error: 获取分享图片失败!");
                                }
                                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, QQShare.this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_GETIMG_ERROR);
                                return;
                            }
                            QQShare.this.d(activity, bundle, iUiListener);
                        }
                    });
                }
            } else {
                bundle.putString("imageUrl", null);
                if (k.f(activity, "4.3.0")) {
                    SLog.d("openSDK_LOG.QQShare", "shareToMobileQQ -- QQ Version is < 4.3.0 ");
                    d(activity, bundle, iUiListener);
                } else {
                    SLog.d("openSDK_LOG.QQShare", "shareToMobileQQ -- QQ Version is > 4.3.0 ");
                    a.a(activity, string, new c() { // from class: com.tencent.connect.share.QQShare.2
                        @Override // com.tencent.open.utils.c
                        public void a(int i, ArrayList<String> arrayList) {
                        }

                        @Override // com.tencent.open.utils.c
                        public void a(int i, String str) {
                            if (i == 0) {
                                bundle.putString("imageLocalUrl", str);
                            } else if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
                                IUiListener iUiListener2 = iUiListener;
                                if (iUiListener2 != null) {
                                    iUiListener2.onError(new UiError(-6, Constants.MSG_SHARE_GETIMG_ERROR, null));
                                    SLog.e("openSDK_LOG.QQShare", "shareToMobileQQ -- error: 获取分享图片失败!");
                                }
                                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, QQShare.this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_GETIMG_ERROR);
                                return;
                            }
                            QQShare.this.d(activity, bundle, iUiListener);
                        }
                    });
                }
            }
        } else if (bundle.getInt("req_type", 1) == 5) {
            c(activity, bundle, iUiListener);
        } else {
            d(activity, bundle, iUiListener);
        }
        SLog.i("openSDK_LOG.QQShare", "shareToMobileQQ() -- end");
    }

    private void c(Activity activity, Bundle bundle, IUiListener iUiListener) {
        if (new File(bundle.getString("imageLocalUrl")).length() >= 5242880) {
            if (iUiListener != null) {
                iUiListener.onError(new UiError(-16, Constants.MSG_SHARE_IMAGE_TOO_LARGE_ERROR, null));
            }
            SLog.e("openSDK_LOG.QQShare", "doShareImageToQQ -- error: 图片太大，请压缩到5M内再分享!");
            return;
        }
        d(activity, bundle, iUiListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Activity activity, Bundle bundle, IUiListener iUiListener) {
        int i;
        int i2;
        SLog.i("openSDK_LOG.QQShare", "doShareToQQ() -- start");
        StringBuffer stringBuffer = new StringBuffer("mqqapi://share/to_fri?src_type=app&version=1&file_type=news");
        String string = bundle.getString("imageUrl");
        String string2 = bundle.getString("title");
        String string3 = bundle.getString("summary");
        String string4 = bundle.getString("targetUrl");
        String string5 = bundle.getString("audio_url");
        int i3 = bundle.getInt("req_type", 1);
        String string6 = bundle.getString(SHARE_TO_QQ_ARK_INFO);
        String string7 = bundle.getString(SHARE_TO_QQ_MINI_PROGRAM_APPID);
        String string8 = bundle.getString(SHARE_TO_QQ_MINI_PROGRAM_PATH);
        String string9 = bundle.getString(SHARE_TO_QQ_MINI_PROGRAM_TYPE);
        int i4 = bundle.getInt("cflag", 0);
        String string10 = bundle.getString("share_qq_ext_str");
        String a = k.a(activity);
        if (a == null) {
            a = bundle.getString("appName");
        }
        String str = a;
        String string11 = bundle.getString("imageLocalUrl");
        String appId = this.c.getAppId();
        String openId = this.c.getOpenId();
        SLog.v("openSDK_LOG.QQShare", "doShareToQQ -- openid: " + openId);
        if (!TextUtils.isEmpty(string11) && h.c(activity)) {
            File file = new File(string11);
            if (!file.canRead()) {
                iUiListener.onError(new UiError(-17, Constants.MSG_SHARE_NO_FILE_PERMISSION, null));
                return;
            }
            Uri uriForFile = FileProvider.getUriForFile(activity, Constants.FILE_PROVIDER_AUTHORITIES, file);
            activity.grantUriPermission("com.tencent.mobileqq", uriForFile, 3);
            stringBuffer.append("&file_uri=");
            stringBuffer.append(Base64.encodeToString(k.i(uriForFile.toString()), 2));
        }
        if (!TextUtils.isEmpty(string)) {
            stringBuffer.append("&image_url=" + Base64.encodeToString(k.i(string), 2));
        }
        if (!TextUtils.isEmpty(string11)) {
            stringBuffer.append("&file_data=" + Base64.encodeToString(k.i(string11), 2));
        }
        if (!TextUtils.isEmpty(string2)) {
            stringBuffer.append("&title=" + Base64.encodeToString(k.i(string2), 2));
        }
        if (!TextUtils.isEmpty(string3)) {
            stringBuffer.append("&description=" + Base64.encodeToString(k.i(string3), 2));
        }
        if (!TextUtils.isEmpty(appId)) {
            stringBuffer.append("&share_id=" + appId);
        }
        if (!TextUtils.isEmpty(string4)) {
            stringBuffer.append("&url=" + Base64.encodeToString(k.i(string4), 2));
        }
        if (!TextUtils.isEmpty(str)) {
            if (str.length() > 20) {
                str = str.substring(0, 20) + "...";
            }
            stringBuffer.append("&app_name=" + Base64.encodeToString(k.i(str), 2));
        }
        if (!TextUtils.isEmpty(openId)) {
            stringBuffer.append("&open_id=" + Base64.encodeToString(k.i(openId), 2));
        }
        if (!TextUtils.isEmpty(string5)) {
            stringBuffer.append("&audioUrl=" + Base64.encodeToString(k.i(string5), 2));
        }
        stringBuffer.append("&req_type=" + Base64.encodeToString(k.i(String.valueOf(i3)), 2));
        if (!TextUtils.isEmpty(string7)) {
            stringBuffer.append("&mini_program_appid=" + Base64.encodeToString(k.i(String.valueOf(string7)), 2));
        }
        if (!TextUtils.isEmpty(string8)) {
            stringBuffer.append("&mini_program_path=" + Base64.encodeToString(k.i(String.valueOf(string8)), 2));
        }
        if (!TextUtils.isEmpty(string9)) {
            stringBuffer.append("&mini_program_type=" + Base64.encodeToString(k.i(String.valueOf(string9)), 2));
        }
        if (!TextUtils.isEmpty(string6)) {
            stringBuffer.append("&share_to_qq_ark_info=" + Base64.encodeToString(k.i(string6), 2));
        }
        if (!TextUtils.isEmpty(string10)) {
            stringBuffer.append("&share_qq_ext_str=" + Base64.encodeToString(k.i(string10), 2));
        }
        stringBuffer.append("&cflag=" + Base64.encodeToString(k.i(String.valueOf(i4)), 2));
        SLog.v("openSDK_LOG.QQShare", "doShareToQQ -- url: " + stringBuffer.toString());
        com.tencent.connect.a.a.a(e.a(), this.c, "requireApi", "shareToNativeQQ");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(stringBuffer.toString()));
        intent.putExtra("pkg_name", activity.getPackageName());
        if (k.f(activity, "4.6.0")) {
            SLog.i("openSDK_LOG.QQShare", "doShareToQQ, qqver below 4.6.");
            if (a(intent)) {
                UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_OLD_SHARE, iUiListener);
                a(activity, intent, Constants.REQUEST_OLD_SHARE);
            }
            i2 = i4;
            i = 1;
        } else {
            SLog.i("openSDK_LOG.QQShare", "doShareToQQ, qqver greater than 4.6.");
            if (UIListenerManager.getInstance().setListnerWithAction("shareToQQ", iUiListener) != null) {
                SLog.i("openSDK_LOG.QQShare", "doShareToQQ, last listener is not null, cancel it.");
            }
            if (a(intent)) {
                i = 1;
                a(activity, Constants.REQUEST_QQ_SHARE, intent, true);
            } else {
                i = 1;
            }
            i2 = i4;
        }
        String str2 = i2 == i ? Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE : Constants.VIA_REPORT_TYPE_SHARE_TO_QQ;
        if (a(intent)) {
            d.a().a(this.c.getOpenId(), this.c.getAppId(), Constants.VIA_SHARE_TO_QQ, str2, "3", "0", this.mViaShareQQType, "0", "1", "0");
            d.a().a(0, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "");
        } else {
            d.a().a(this.c.getOpenId(), this.c.getAppId(), Constants.VIA_SHARE_TO_QQ, str2, "3", "1", this.mViaShareQQType, "0", "1", "0");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "hasActivityForIntent fail");
        }
        SLog.i("openSDK_LOG.QQShare", "doShareToQQ() --end");
    }
}
