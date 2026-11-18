.class public Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;
.super Ljava/lang/Object;
.source "GetWebUrlFromCDNTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;
    }
.end annotation


# instance fields
.field private cdn_configUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;->cdn_configUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;->cdn_configUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;->getCDNConfigHttp(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method private getCDNConfigHttp(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "url",
            "cb"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$2;

    invoke-direct {v0, p0, p2}, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$2;-><init>(Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;Lcom/yofi/sdk/IFlashCallback;)V

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->getCDNConfigParams(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method


# virtual methods
.method public beginFetch()V
    .locals 1

    .line 24
    new-instance v0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$1;-><init>(Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;)V

    invoke-virtual {p0, v0}, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;->getCDNConfigMethod(Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method public getCDNConfigMethod(Lcom/yofi/sdk/IFlashCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cb"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->CDN_SERVER_URLS:Ljava/util/List;

    .line 41
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_CDN_SERVER_URLS:Ljava/util/List;

    .line 44
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;->cdn_configUrl:Ljava/lang/String;

    .line 51
    new-instance v2, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;

    invoke-direct {v2, p0, p1, v0}, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$InitIFlashCallback;-><init>(Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;Lcom/yofi/sdk/IFlashCallback;Ljava/util/List;)V

    invoke-direct {p0, v1, v2}, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;->getCDNConfigHttp(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "getCDNConfigMethod"

    const-string v0, "serverUrls\u4e3a\u7a7a"

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
