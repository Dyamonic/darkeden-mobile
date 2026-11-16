.class public Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;
.super Landroid/app/DialogFragment;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;,
        Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;,
        Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$DeviceInfoReceiver;
    }
.end annotation


# static fields
.field private static final CLEAR_CACHE:I = 0x20

.field public static final FILE_CHOOSER_RESULT_CODE:I = 0x2710

.field private static final HIDE_CLOSE:I = 0x10

.field private static final HIDE_LOADING:I = 0x14

.field private static final ON_LONG_CLICK_SAVE_IMAGE:I = 0x1

.field private static final OPEN_WEB_VIEW_FRAGMENT_REQUEST_CODE:I = 0x2711

.field private static final SHOW_CLOSE:I = 0x11

.field private static final SHOW_LOADING:I = 0x15


# instance fields
.field private afterResultRunnable:Ljava/lang/Runnable;

.field private baseUrl:Ljava/lang/String;

.field private callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

.field private clientId:Ljava/lang/String;

.field private close:Landroid/widget/ImageButton;

.field private filePicker:Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

.field private handler:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

.field private isNotch:Z

.field private isRequestFile:Z

.field private loading:Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

.field private locale:Ljava/util/Locale;

.field private mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

.field private networkErrorDialog:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

.field private networkReceiver:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;

.field private root:Landroid/widget/FrameLayout;

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field urlExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->clientId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isNotch:Z

    .line 86
    iput-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isRequestFile:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isNotch:Z

    return p0
.end method

.method static synthetic access$002(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isNotch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)I
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->filePicker:Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->customErrResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->checkHandlerNotNull(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->openImageChooserActivity([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->root:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->sendChooseFileIntent([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->setFullScreen()V

    return-void
.end method

.method static synthetic access$1900(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->onDeviceInfoDidChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->handleLayout(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/widget/ImageButton;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->close:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->loading:Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->networkErrorDialog:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    return-object p0
.end method

.method static synthetic access$602(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->networkErrorDialog:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->handler:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->deviceInfo2Json()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkHandlerNotNull(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->handler:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    if-nez v0, :cond_0

    const-string v0, "no handler"

    .line 713
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private customErrResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1013
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    .line 1014
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error_description"

    .line 1015
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1016
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1018
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "{}"

    :goto_0
    return-object p1
.end method

.method private deviceInfo2Json()Ljava/lang/String;
    .locals 8

    .line 932
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "SV"

    .line 933
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ANDROID_ID"

    .line 934
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "UUID"

    .line 935
    sget-object v2, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getInstallUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MOBILE_TYPE"

    .line 936
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getNetworkStateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "HARDWARE"

    .line 937
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getHardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "RAM"

    .line 938
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/utils/DeviceUtils;->getDeviceTotalRam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ROM"

    .line 939
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/utils/DeviceUtils;->getDeviceTotalRom(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "SR"

    .line 940
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PN"

    const-string v2, "TapTap"

    .line 942
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "VN"

    const-string v2, "4.5.4"

    .line 943
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "LANG"

    .line 944
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "LOC"

    .line 945
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PLT"

    const-string v2, "Android"

    .line 946
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MANUFACTURER"

    .line 947
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MODEL"

    .line 948
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "VERSION_RELEASE"

    .line 949
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "CPU_ARCHITECTURE"

    .line 950
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getCpuArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ORIENTATION"

    .line 951
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "NOTCH"

    .line 952
    iget-boolean v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isNotch:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "VERSION_CODE"

    const v2, 0x18246b80

    .line 953
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "TAPDB_DEVICE_ID"

    .line 955
    sget-object v2, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/moment/legacy/utils/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HAS_TAPTAP_CLIENT"

    .line 958
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {v3}, Lcom/taptap/sdk/moment/TapMomentInternal;->getRegionType()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.taptap"

    goto :goto_0

    :cond_1
    const-string v3, "com.taptap.global"

    :goto_0
    invoke-static {v2, v3}, Lcom/taptap/sdk/moment/legacy/utils/DeviceUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 960
    :cond_2
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "level"

    const/4 v3, -0x1

    .line 963
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "scale"

    .line 964
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v2, v2

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const-string v5, "status"

    .line 966
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x5

    const/4 v5, 0x2

    if-ne v1, v3, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    if-ne v1, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v7

    :goto_1
    const-string v1, "BATTERY_STATUS"

    .line 974
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "BATTERY_LEVEL"

    .line 975
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "NETWORK_TYPE"

    .line 976
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "SDK_LANG"

    .line 977
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLanguage()Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 979
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 981
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "{}"

    :goto_2
    return-object v0
.end method

.method private errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1039
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "err"

    .line 1040
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1041
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1043
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "{}"

    :goto_0
    return-object p1
.end method

.method private errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1026
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "err"

    .line 1027
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    .line 1028
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1029
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1031
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "{}"

    :goto_0
    return-object p1
.end method

.method public static getCpuArchitecture()Ljava/lang/String;
    .locals 6

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "x86"

    const-string v2, "arm"

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    .line 992
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 993
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    .line 995
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    return-object v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 999
    :cond_3
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1001
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    return-object v1

    :cond_6
    const-string v0, "unKnow"

    return-object v0
.end method

.method private getOrientation()I
    .locals 1

    .line 987
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private handleLayout(I)V
    .locals 5

    .line 884
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 886
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->close:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 887
    iget-boolean v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isNotch:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-float v4, v0, v2

    float-to-int v4, v4

    .line 888
    invoke-virtual {p1, v3, v1, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    mul-float v1, v0, v2

    float-to-int v1, v1

    .line 890
    invoke-virtual {p1, v3, v1, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 893
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 894
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->close:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 897
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 898
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 901
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->close:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-float/2addr v2, v0

    float-to-int v1, v2

    const/high16 v2, 0x41e80000    # 29.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 902
    invoke-virtual {p1, v3, v1, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 903
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 904
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->close:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 907
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 908
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    const-string p1, "moment"

    const-string v0, "config changed"

    .line 910
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$31;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$31;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 919
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 234
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$4;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$4;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "supportHandlers"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 251
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$5;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$5;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "loadComplete"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 260
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$6;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$6;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "showCloseButton"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 269
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "hideCloseButton"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 292
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$8;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$8;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "openBrowser"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 313
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$9;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$9;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "openUrl"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 351
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$10;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$10;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "getDeviceInfo"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 358
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$11;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$11;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "clearCache"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 367
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$12;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$12;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "getAccessToken"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 374
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$13;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$13;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "bindTapAccount"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 383
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$14;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$14;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "getPrivateUserInfo"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 392
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$15;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$15;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "getMomentConfig"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 401
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$16;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$16;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "getFileData"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 425
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$17;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$17;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "closeMoment"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 446
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$18;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$18;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "sendCertification"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 453
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "longClick"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 480
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$20;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$20;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "alert"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 516
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$21;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$21;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "loginByTap"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 541
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$22;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$22;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "getTapToken"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 553
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$23;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$23;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "checkBindTap"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 563
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$24;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$24;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "bindTapTap"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 572
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$25;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$25;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "reportError"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 580
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$26;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$26;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    const-string v2, "sendSceneEventCallback"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 589
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$27;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$27;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 624
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 703
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$29;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$29;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_5

    .line 800
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    .line 805
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 806
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 808
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    move v2, p3

    .line 809
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 810
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 811
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    if-eqz p1, :cond_4

    const/4 p2, 0x1

    new-array v1, p2, [Landroid/net/Uri;

    .line 815
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, p3

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 818
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 819
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    :cond_5
    :goto_2
    return-void
.end method

.method private onDeviceInfoDidChange()V
    .locals 3

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceStatusDidChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->deviceInfo2Json()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Moment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->deviceInfo2Json()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceStatusDidChange"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private openImageChooserActivity([Ljava/lang/String;)V
    .locals 11

    .line 720
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 721
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/TdsPermission;->with(Landroid/app/Fragment;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;

    move-result-object v1

    new-instance v10, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_permission_intent_title:I

    .line 723
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_permission_intent_reason:I

    .line 724
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v4

    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_permission_intent_confirm:I

    .line 725
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_permission_tip_title:I

    .line 726
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_permission_tip_reason:I

    .line 727
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v7

    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_dialog_cancel:I

    .line 728
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v8

    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_permission_tip_confirm:I

    .line 729
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {v1, v10}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->forwardSetting(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;

    move-result-object v1

    .line 730
    invoke-virtual {v1, v0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->permission([Ljava/lang/String;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;

    invoke-direct {v1, p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$30;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->request(Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;)V

    goto :goto_0

    .line 749
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->sendChooseFileIntent([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendChooseFileIntent([Ljava/lang/String;)V
    .locals 2

    .line 754
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 755
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 756
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 757
    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "image/*"

    .line 759
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "Image Chooser"

    .line 761
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    .line 762
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isRequestFile:Z

    return-void
.end method

.method private setFullScreen()V
    .locals 4

    .line 830
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x400

    .line 835
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 836
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x106000d

    .line 837
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 838
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 839
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 840
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 841
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 843
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    .line 844
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 845
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 847
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x500

    .line 848
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const/high16 v2, 0x1000000

    .line 850
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 853
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 854
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/ScreenHelper;->fullScreenImmersive(Landroid/view/Window;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public back()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 1054
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isRequestFile:Z

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 768
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 769
    iput-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isRequestFile:Z

    .line 770
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->afterResultRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 771
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v2, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->post(Ljava/lang/Runnable;)Z

    .line 772
    iput-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->afterResultRunnable:Ljava/lang/Runnable;

    :cond_0
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_5

    .line 775
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 776
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, v1

    .line 777
    :goto_1
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_4

    .line 778
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_2

    .line 779
    :cond_4
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6

    .line 780
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 781
    iput-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_2

    :cond_5
    const/16 p2, 0x2711

    if-ne p1, p2, :cond_6

    .line 784
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    if-eqz p1, :cond_6

    .line 786
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "content"

    .line 787
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 788
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-interface {p2, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 790
    :catch_0
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 824
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 825
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->handleLayout(I)V

    .line 826
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->onDeviceInfoDidChange()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "client_id"

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->clientId:Ljava/lang/String;

    const-string v0, "locale"

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->locale:Ljava/util/Locale;

    .line 102
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;->getMomentUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->baseUrl:Ljava/lang/String;

    const-string v0, "url_extra"

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->urlExtra:Ljava/lang/String;

    const-string v0, "data"

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 106
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    invoke-direct {v0, p3}, Lcom/taptap/sdk/moment/legacy/widget/FilePicker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->filePicker:Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 111
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->networkReceiver:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->networkReceiver:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->networkReceiver:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "ttos_moment_fragment_moment"

    invoke-static {p3, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 868
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 869
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 870
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->handler:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 871
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    if-eqz v1, :cond_0

    .line 872
    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->removeAllViews()V

    .line 873
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 874
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->setTag(Ljava/lang/Object;)V

    .line 875
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->clearHistory()V

    .line 876
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->destroy()V

    .line 877
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    .line 879
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v1, "disappear.moment.taptap.action"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 860
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 861
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->networkReceiver:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->networkReceiver:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->setFullScreen()V

    .line 185
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 186
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$3;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$3;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    if-eqz v0, :cond_1

    const-string v1, "enterForeground"

    .line 200
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 215
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 216
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    if-eqz v0, :cond_0

    const-string v1, "enterBackground"

    .line 217
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 123
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->handler:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    .line 130
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    .line 131
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "root"

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->root:Landroid/widget/FrameLayout;

    .line 132
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->close:Landroid/widget/ImageButton;

    .line 133
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "loading"

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->loading:Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    .line 134
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->close:Landroid/widget/ImageButton;

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$1;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->root:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->assistActivity(Landroid/widget/FrameLayout;)V

    .line 141
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->initWebView()V

    .line 143
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapMomentAndroid/4.5.4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->mWebView:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 147
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 178
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->loading:Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    const-string v0, "ttos_moment_loading"

    invoke-static {p2, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setMovieResource(I)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewStateRestored data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setResultCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->afterResultRunnable:Ljava/lang/Runnable;

    return-void
.end method
