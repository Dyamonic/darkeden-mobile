package com.tencent.connect.share;

import android.content.Context;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class QzoneShare extends BaseApi {
    public static final String SHARE_TO_QQ_APP_NAME = "appName";
    public static final String SHARE_TO_QQ_AUDIO_URL = "audio_url";
    public static final String SHARE_TO_QQ_EXT_INT = "cflag";
    public static final String SHARE_TO_QQ_EXT_STR = "share_qq_ext_str";
    public static final String SHARE_TO_QQ_IMAGE_LOCAL_URL = "imageLocalUrl";
    public static final String SHARE_TO_QQ_IMAGE_URL = "imageUrl";
    public static final String SHARE_TO_QQ_SITE = "site";
    public static final String SHARE_TO_QQ_SUMMARY = "summary";
    public static final String SHARE_TO_QQ_TARGET_URL = "targetUrl";
    public static final String SHARE_TO_QQ_TITLE = "title";
    public static final String SHARE_TO_QZONE_EXTMAP = "extMap";
    public static final String SHARE_TO_QZONE_KEY_TYPE = "req_type";
    public static final int SHARE_TO_QZONE_TYPE_APP = 6;
    public static final int SHARE_TO_QZONE_TYPE_IMAGE = 5;
    public static final int SHARE_TO_QZONE_TYPE_IMAGE_TEXT = 1;
    public static final int SHARE_TO_QZONE_TYPE_MINI_PROGRAM = 7;
    public static final int SHARE_TO_QZONE_TYPE_NO_TYPE = 0;
    private boolean a;
    private boolean d;
    private boolean e;
    private boolean f;
    public String mViaShareQzoneType;

    @Override // com.tencent.connect.common.BaseApi
    public void releaseResource() {
    }

    public QzoneShare(Context context, QQToken qQToken) {
        super(qQToken);
        this.mViaShareQzoneType = "";
        this.a = true;
        this.d = false;
        this.e = false;
        this.f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0411  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void shareToQzone(final android.app.Activity r29, final android.os.Bundle r30, final com.tencent.tauth.IUiListener r31) {
        /*
            Method dump skipped, instructions count: 1199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.connect.share.QzoneShare.shareToQzone(android.app.Activity, android.os.Bundle, com.tencent.tauth.IUiListener):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x038a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.app.Activity r25, android.os.Bundle r26, com.tencent.tauth.IUiListener r27) {
        /*
            Method dump skipped, instructions count: 1099
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.connect.share.QzoneShare.b(android.app.Activity, android.os.Bundle, com.tencent.tauth.IUiListener):void");
    }
}
