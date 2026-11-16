.class public Lcom/yofi/sdk/imp/middle/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;,
        Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;,
        Lcom/yofi/sdk/imp/middle/common/Constants$YoFiEventName;,
        Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;,
        Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;,
        Lcom/yofi/sdk/imp/middle/common/Constants$ADDICITION_TYPE;,
        Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;,
        Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;,
        Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;,
        Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "ACCESS_TOKEN"

.field public static final ADDICITION:Ljava/lang/String; = "ADDICITION"

.field public static final APP_ORDER_AMOUNT:Ljava/lang/String; = "APP_ORDER_AMOUNT"

.field public static final APP_ORDER_ID:Ljava/lang/String; = "APP_ORDER_ID"

.field public static final BOTH_H5:Ljava/lang/String; = "BOTH_H5"

.field public static final CDN_SERVER_URLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIENT_VERSION:Ljava/lang/String; = "2.2.1"

.field public static final CONTENT:Ljava/lang/String; = "CONTENT"

.field public static final CONTENT_CLOSED:Ljava/lang/String; = "CONTENT_CLOSED"

.field public static final DEBUG_CDN_SERVER_URLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static DEBUG_SERVER_URL:Ljava/lang/String; = null

.field public static DEBUG_TASK_SERVER_URL:Ljava/lang/String; = null

.field public static DEBUG_WEB_DOMAIN_SERVER_URL:Ljava/lang/String; = null

.field public static final DEFAULTACCOUNT:I = 0x1

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "DOWNLOAD_URL"

.field public static final FORCE_AUTHEN:Ljava/lang/String; = "FORCE_AUTHEN"

.field public static final FUNCTION_CODE:Ljava/lang/String; = "FUNCTION_CODE"

.field public static final FUNC_CODE_ADDICTION_ALERT:I = 0xf

.field public static final FUNC_CODE_ADDICTION_POLICY:I = 0xe

.field public static final FUNC_CODE_BIND_PHONE:I = 0x9

.field public static final FUNC_CODE_CERTIFICATION:I = 0xc

.field public static final FUNC_CODE_CERTIFICATION_FINISH:I = 0x4b1

.field public static final FUNC_CODE_CHANGE_PASSWORD:I = 0x6

.field public static final FUNC_CODE_CHAT:I = 0x14

.field public static final FUNC_CODE_CHECK_UPDATE:I = 0x11

.field public static final FUNC_CODE_CONTACT:I = 0x10

.field public static final FUNC_CODE_FIND_PASSWORD:I = 0x7

.field public static final FUNC_CODE_FLOAT:I = 0x8

.field public static final FUNC_CODE_LOGIN:I = 0x1

.field public static final FUNC_CODE_MODIFY_PASSWORD:I = 0xd

.field public static final FUNC_CODE_NEW_CONTACT:I = 0x13

.field public static final FUNC_CODE_NOSETTINGS:I = 0x5

.field public static final FUNC_CODE_PAY:I = 0x3

.field public static final FUNC_CODE_POP:I = 0x15

.field public static final FUNC_CODE_PROTOCOL:I = 0xb

.field public static final FUNC_CODE_REGISTER:I = 0x2

.field public static final FUNC_CODE_REGISTER_CLOSE:I = 0xc8

.field public static final FUNC_CODE_SERVICE:I = 0x16

.field public static final FUNC_CODE_SETTINGS:I = 0x4

.field public static final FUNC_CODE_SWITCH_ACCOUNT:I = 0xa

.field public static final FUNC_CODE_TAPTAP_CHECK_UPDATE:I = 0x12

.field public static final GRAVITY:Ljava/lang/String; = "GRAVITY"

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_CENTER:I = 0xf

.field public static final GRAVITY_CENTER_HORIZONTA:I = 0xc

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x3

.field public static final GRAVITY_LEFT:I = 0x4

.field public static final GRAVITY_RIGHT:I = 0x8

.field public static final GRAVITY_TOP:I = 0x1

.field public static final GUEST_SHOW:Ljava/lang/String; = "GUEST_SHOW"

.field public static final IS_SHOW_QQ:Ljava/lang/String; = "IS_SHOW_QQ"

.field public static final LOGIN_TYPE:Ljava/lang/String; = "LOGIN_TYPE"

.field public static final MAIN_ACTIVITY:Ljava/lang/String; = "YoFiGame.MainActivity.Path"

.field public static final PAY_INFO:Ljava/lang/String; = "PAY_INFO"

.field public static final PAY_TYPE:Ljava/lang/String; = "PAY_TYPE"

.field public static final PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final QQ_APPID:Ljava/lang/String; = "QQ_APPID"

.field public static final REQUEST_ID:Ljava/lang/String; = "REQUEST_ID"

.field public static final SANDBOX:Ljava/lang/String; = "SANDBOX"

.field public static SERVER_URL:Ljava/lang/String; = null

.field public static final SHOW_BACK:Ljava/lang/String; = "SHOW_BACK"

.field public static final SHOW_NEXT:Ljava/lang/String; = "SHOW_NEXT"

.field public static final SIGN_NAME:Ljava/lang/String; = "sign"

.field public static final SY_ONEKEY_LOGIN_SHOW:Ljava/lang/String; = "SY_ONEKEY_LOGIN_SHOW"

.field public static final TAG:Ljava/lang/String; = "YoFiSdk"

.field public static final TAPTAP_SHOW:Ljava/lang/String; = "TAPTAP_SHOW"

.field public static TASK_SERVER_URL:Ljava/lang/String; = null

.field public static final THIRD_LOGIN_SHOW:Ljava/lang/String; = "THIRD_LOGIN_SHOW"

.field public static final UPDATE_CONTENT:Ljava/lang/String; = "UPDATE_CONTENT"

.field public static final UPDATE_NEED_TYPE:Ljava/lang/String; = "UPDATE_NEED_TYPE"

.field public static final USERACCOUNT:I = 0x2

.field public static final VERSION:Ljava/lang/String; = "v1"

.field public static WEB_DOMAIN_SERVER_URL:Ljava/lang/String; = null

.field public static final WECHAT_APPID:Ljava/lang/String; = "WECHAT_APPID"

.field public static final WECHAT_CODE:I = 0x1

.field public static final YOFI_APPID:Ljava/lang/String; = "YOFI_APPID"

.field public static final YOFI_APPKEY:Ljava/lang/String; = "YOFI_APPKEY"

.field public static final YOFI_IMEI:Ljava/lang/String; = "YOFI_IMEI"

.field public static final YOFI_IS_DEBUG:Ljava/lang/String; = "YOFI_IS_DEBUG"

.field public static final YOFI_LOGIN_WITHOUT_ACCOUNT:Ljava/lang/String; = "YOFI_LOGIN_WITHOUT_ACCOUNT"

.field public static final YOFI_OAID:Ljava/lang/String; = "YOFI_OAID"

.field public static final YOFI_PACKAGENAME:Ljava/lang/String; = "YOFI_PACKAGENAME"

.field public static final YOFI_PRIVATEKEY:Ljava/lang/String; = "YOFI_PRIVATEKEY"

.field public static final YOFI_SDK_CHANNEL:Ljava/lang/String; = "YOFI_SDK_CHANNEL"

.field public static final YOFI_SDK_NAME:Ljava/lang/String; = "YoFiSDK"

.field public static final YOFI_SHOW_FLOAT_BUTTON:Ljava/lang/String; = "YOFI_SHOW_FLOAT_BUTTON"

.field public static final YOFI_SPLASH_TYPE:Ljava/lang/String; = "YOFI_SPLASH_TYPE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "https://democdnconfig-yofi.yofijoy.com/sdkconfig/test/yofi/default.txt"

    const-string v1, "https://democdnconfig-yofi.yofijoy02.com/sdkconfig/test/yofi/1.txt"

    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_CDN_SERVER_URLS:Ljava/util/List;

    const-string v0, "https://cdnconfig-yofi.yofijoy.com/sdkconfig/prod/yofi"

    const-string v1, "https://cdnconfig-yofi.yofijoy02.com/sdkconfig/prod/yofi"

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->CDN_SERVER_URLS:Ljava/util/List;

    const-string v0, "https://sdktest.gateway.yofijoy.com/"

    .line 18
    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    const-string v0, "https://sdkapi.gateway.yofijoy.com/"

    .line 19
    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    const-string v0, "https://sdktest2.gateway.yofijoy.com/"

    .line 22
    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_TASK_SERVER_URL:Ljava/lang/String;

    const-string v0, "https://sdktask.gateway.yofijoy.com/"

    .line 23
    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->TASK_SERVER_URL:Ljava/lang/String;

    const-string v0, "http://sdktest.gateway.yofijoy.com:8080/sdkdomestic/sdkvue/"

    .line 26
    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_WEB_DOMAIN_SERVER_URL:Ljava/lang/String;

    const-string v0, "https://gnyfsdk.gateway.yofijoy.com/sdkdomestic/sdkvue/"

    .line 27
    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->WEB_DOMAIN_SERVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
