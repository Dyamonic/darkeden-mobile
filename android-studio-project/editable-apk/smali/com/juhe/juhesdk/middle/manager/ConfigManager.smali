.class public Lcom/juhe/juhesdk/middle/manager/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field static ins:Lcom/juhe/juhesdk/middle/manager/ConfigManager;


# instance fields
.field private channelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private isDebug:Z

.field private localEditor:Landroid/content/SharedPreferences$Editor;

.field private sdkStage:I

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->initialized:Z

    .line 18
    iput-boolean v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->isDebug:Z

    .line 19
    iput v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->sdkStage:I

    return-void
.end method

.method public static instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->ins:Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    invoke-direct {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;-><init>()V

    sput-object v0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->ins:Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->ins:Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    return-object v0
.end method


# virtual methods
.method public getAppId()I
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    const-string v1, "JUHE_APPID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    const-string v1, "JUHE_APPKEY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelClassName()Ljava/lang/String;
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelId"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIsDebug()Ljava/lang/Boolean;
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->isDebug:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getJuheCacheServerUrl()Ljava/lang/String;
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    const-string v1, "juheCacheServerUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJuheChannel()I
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    const-string v1, "JUHE_CHANNEL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSdkStage()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->sdkStage:I

    return v0
.end method

.method public getSplashType()Ljava/lang/String;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    const-string v1, "SPLASH_TYPE"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getshowRepotToast()Ljava/lang/String;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    const-string v1, "JUHE_SHOW_REPORT_TOAST"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "SPLASH_TYPE"

    const-string v0, "JUHE_SHOW_REPORT_TOAST"

    const-string v3, "JUHE_APPKEY"

    const-string v4, "JUHE_CHANNEL"

    const-string v5, "JUHE_APPID"

    const-string v6, "JUHE_INITIALIZED"

    const-string v7, "configManager\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    const-string v8, "string"

    .line 34
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v10, 0x0

    .line 35
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "com.juhe.juhesdk.middle.channel.DefaultImp"

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.YoFiImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.SQImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.OPPOImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.VIVOImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.CoolPayImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.AmigoPlayImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/4 v12, 0x7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.LenovoImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.MeizuImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.HuaweiImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0xa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.YSDKImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0xb

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.UCImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0xc

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.G360Imp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0xd

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.BaiduImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0xe

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.MiImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0xf

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.BiliImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.G4399Imp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.HeiShaImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.NubiaImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.MumuImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.TapTapImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.juhe.juhesdk.middle.channel.GbImp"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v12, 0x16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.YuMingImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.ZhongChenImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x18

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.LdImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x19

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.NoxImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x1a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.YouXiFanImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x1b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.GpImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x1c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.XiaoqiImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x1e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.UmarkImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x1f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.QidianImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.UmarkSdkImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x21

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.YeHuaImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x22

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.SiPuImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x23

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.BwhImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x24

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.ChangMengImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x26

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.HonorImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x27

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.TTsdkImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x28

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.g233Imp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x29

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.mumayiImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x2a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.DownJoyImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x2b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.SamSungImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x2c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.WuFanImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x39

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.HuanXiImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x40

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.YouGuImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v9, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->channelMap:Ljava/util/Map;

    const/16 v13, 0x41

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.juhe.juhesdk.middle.channel.QimengImp"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "channelMapInit"

    const-string v13, "init"

    .line 81
    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v13, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    if-nez v13, :cond_0

    const-string v13, "Juhe"

    move-object/from16 v14, p1

    .line 84
    invoke-virtual {v14, v13, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    iput-object v13, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    .line 86
    :goto_0
    iget-object v13, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    iput-object v13, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    .line 88
    iget-object v13, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v13

    const-string v15, "SDK_STAGE"

    .line 89
    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 90
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->sdkStage:I

    .line 95
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v12, 0x80

    invoke-virtual {v15, v13, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    if-nez v12, :cond_2

    return-void

    .line 100
    :cond_2
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_3

    .line 101
    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "IS_DEBUG"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->isDebug:Z

    .line 104
    :cond_3
    iget-object v12, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v12, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_4

    return-void

    .line 109
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v5, v8, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 109
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 112
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    :cond_5
    move v12, v10

    .line 114
    :goto_1
    iget-object v13, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13, v5, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v8, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 117
    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 120
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 122
    :cond_6
    iget-object v5, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5, v4, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v3, v8, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 124
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v5, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v10, :cond_7

    .line 132
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v8, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 132
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    iget-object v4, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 137
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    if-eq v10, v11, :cond_8

    const/16 v3, 0x16

    if-ne v10, v3, :cond_9

    .line 143
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 143
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v3, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    :cond_9
    iget-object v0, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    iget-object v0, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    iput-boolean v11, v1, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->initialized:Z

    return-void

    :catch_1
    move-exception v0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setJuheCacheServerUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "juheCacheServerUrl"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "juheCacheServerUrl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSdkStage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkStage"
        }
    .end annotation

    .line 189
    iput p1, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->sdkStage:I

    .line 190
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SDK_STAGE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->localEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
