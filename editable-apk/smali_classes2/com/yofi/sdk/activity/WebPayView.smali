.class public Lcom/yofi/sdk/activity/WebPayView;
.super Landroid/app/Activity;
.source "WebPayView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebPayViewTag"


# instance fields
.field private btnClose:Landroid/widget/Button;

.field private hasUploadToutiao:Z

.field private orderAmount:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payResult:Lorg/json/JSONObject;

.field private paySuccess:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/activity/WebPayView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/yofi/sdk/activity/WebPayView;->paySuccess:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yofi/sdk/activity/WebPayView;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/yofi/sdk/activity/WebPayView;->paySuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yofi/sdk/activity/WebPayView;)Lorg/json/JSONObject;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yofi/sdk/activity/WebPayView;->payResult:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yofi/sdk/activity/WebPayView;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yofi/sdk/activity/WebPayView;->payResult:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yofi/sdk/activity/WebPayView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/yofi/sdk/activity/WebPayView;->hasUploadToutiao:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yofi/sdk/activity/WebPayView;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/yofi/sdk/activity/WebPayView;->hasUploadToutiao:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yofi/sdk/activity/WebPayView;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yofi/sdk/activity/WebPayView;->orderId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yofi/sdk/activity/WebPayView;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yofi/sdk/activity/WebPayView;->orderAmount:Ljava/lang/String;

    return-object p0
.end method

.method public static checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramContext",
            "paramString"
        }
    .end annotation

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "#ededed"

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/yofi/sdk/utils/toolbar/StatusBarUtil;->setStatusBarLightMode(Landroid/app/Activity;I)V

    .line 55
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yofi_pay_webview"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/WebPayView;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top_view"

    const-string v2, "id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/WebPayView;->findViewById(I)Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wv_pay"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/WebPayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/yofi/sdk/activity/WebPayView;->webView:Landroid/webkit/WebView;

    .line 60
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btn_close"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/WebPayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yofi/sdk/activity/WebPayView;->btnClose:Landroid/widget/Button;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/yofi/sdk/activity/WebPayView;->paySuccess:Z

    .line 62
    iput-boolean p1, p0, Lcom/yofi/sdk/activity/WebPayView;->hasUploadToutiao:Z

    .line 64
    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/yofi/sdk/activity/WebPayView$1;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/activity/WebPayView$1;-><init>(Lcom/yofi/sdk/activity/WebPayView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 130
    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/yofi/sdk/activity/WebPayView$2;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/activity/WebPayView$2;-><init>(Lcom/yofi/sdk/activity/WebPayView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 158
    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 162
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-string v1, "appcache"

    .line 169
    invoke-virtual {p0, v1, p1}, Lcom/yofi/sdk/activity/WebPayView;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const-string v1, "geolocation"

    .line 170
    invoke-virtual {p0, v1, p1}, Lcom/yofi/sdk/activity/WebPayView;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/yofi/sdk/activity/WebPayView;->webView:Landroid/webkit/WebView;

    const-string v0, "android"

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/yofi/sdk/activity/WebPayView;->btnClose:Landroid/widget/Button;

    new-instance v0, Lcom/yofi/sdk/activity/WebPayView$3;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/activity/WebPayView$3;-><init>(Lcom/yofi/sdk/activity/WebPayView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/WebPayView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "APP_ORDER_ID"

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/activity/WebPayView;->orderId:Ljava/lang/String;

    const-string v0, "APP_ORDER_AMOUNT"

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/activity/WebPayView;->orderAmount:Ljava/lang/String;

    const-string v0, "BOTH_H5"

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "PAY_TYPE"

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 206
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_0
    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdk/api/v1/pay/h5/index?orderId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk/api/v1/pay/h5?orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&payChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yofiDeviceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;->ANDROID:Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "yofiSystem"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "yofiSdkVersion"

    const-string v3, "2.2.1"

    .line 222
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v1

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "yofiVersion"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yofiChannelId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yofiPackageName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    :cond_2
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/yofi/sdk/activity/WebPayView;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :catch_0
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 279
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 280
    iget-boolean p1, p0, Lcom/yofi/sdk/activity/WebPayView;->paySuccess:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 282
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const-string p2, "pay success"

    invoke-interface {p1, p2}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/activity/WebPayView;->payResult:Lorg/json/JSONObject;

    const-string p2, ""

    if-eqz p1, :cond_1

    .line 286
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {p1, v1, p2}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    :goto_0
    return v0

    .line 294
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramInt1",
            "paramInt2",
            "paramIntent"
        }
    .end annotation

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "YoFiSdk"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parseScheme(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramString"
        }
    .end annotation

    const-string v0, "platformapi/startapp"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "platformapi"

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "startapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public payResult(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebPayViewTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Lcom/yofi/sdk/activity/WebPayView$4;

    invoke-direct {v0, p0, p1}, Lcom/yofi/sdk/activity/WebPayView$4;-><init>(Lcom/yofi/sdk/activity/WebPayView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yofi/sdk/activity/WebPayView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
