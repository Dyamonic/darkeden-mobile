.class public Lcom/juhe/juhesdk/middle/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;
    }
.end annotation


# static fields
.field public static final CDN_SERVER_URLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final FUNCTION_CODE:Ljava/lang/String; = "FUNCTION_CODE"

.field public static final FUNC_CODE_LOGIN:I = 0x1

.field public static final JUHE_APPID:Ljava/lang/String; = "JUHE_APPID"

.field public static final JUHE_APPKEY:Ljava/lang/String; = "JUHE_APPKEY"

.field public static final JUHE_CHANNEL:Ljava/lang/String; = "JUHE_CHANNEL"

.field public static final JUHE_INITIALIZED:Ljava/lang/String; = "JUHE_INITIALIZED"

.field public static final JUHE_IS_DEBUG:Ljava/lang/String; = "IS_DEBUG"

.field public static final JUHE_SDK_VERSION:Ljava/lang/String; = "1.0.3"

.field public static final JUHE_SHOW_REPORT_TOAST:Ljava/lang/String; = "JUHE_SHOW_REPORT_TOAST"

.field public static final MAIN_ACTIVITY:Ljava/lang/String; = "Juhe.MainActivity.Path"

.field public static final SDK_STAGE:Ljava/lang/String; = "SDK_STAGE"

.field public static SERVER_URL:Ljava/lang/String; = null

.field public static final SIGN_NAME:Ljava/lang/String; = "sign"

.field public static final SPLASH_TYPE:Ljava/lang/String; = "SPLASH_TYPE"

.field public static final TAG:Ljava/lang/String; = "JuheSdk"

.field public static final VERSION:Ljava/lang/String; = "v1"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "https://democdnconfig-juhe.yofijoy.com/sdkconfig/test/juhe/default.txt"

    const-string v1, "https://democdnconfig-juhe.yofijoy02.com/sdkconfig/test/juhe/1.txt"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/juhe/juhesdk/middle/common/Constants;->DEBUG_CDN_SERVER_URLS:Ljava/util/List;

    const-string v0, "https://cdnconfig-juhe.yofijoy.com/sdkconfig/prod/juhe"

    const-string v1, "https://cdnconfig-juhe.yofijoy02.com/sdkconfig/prod/juhe"

    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/juhe/juhesdk/middle/common/Constants;->CDN_SERVER_URLS:Ljava/util/List;

    const-string v0, "https://sdktest.gateway.yofijoy.com/"

    .line 15
    sput-object v0, Lcom/juhe/juhesdk/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    const-string v0, "https://juhe.gateway.yofijoy.com/"

    .line 16
    sput-object v0, Lcom/juhe/juhesdk/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
