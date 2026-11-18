.class public Lcom/juhe/juhesdk/sdk/SDKLoader;
.super Ljava/lang/Object;
.source "SDKLoader.java"


# static fields
.field private static imp:Lcom/juhe/juhesdk/sdk/SDKLoader;


# instance fields
.field private appApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

.field private sdk:Lcom/juhe/juhesdk/interfaces/ISDKApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/juhe/juhesdk/sdk/SDKLoader;->sdk:Lcom/juhe/juhesdk/interfaces/ISDKApi;

    .line 10
    iput-object v0, p0, Lcom/juhe/juhesdk/sdk/SDKLoader;->appApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    return-void
.end method

.method public static instance()Lcom/juhe/juhesdk/sdk/SDKLoader;
    .locals 1

    .line 13
    sget-object v0, Lcom/juhe/juhesdk/sdk/SDKLoader;->imp:Lcom/juhe/juhesdk/sdk/SDKLoader;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/juhe/juhesdk/sdk/SDKLoader;

    invoke-direct {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;-><init>()V

    sput-object v0, Lcom/juhe/juhesdk/sdk/SDKLoader;->imp:Lcom/juhe/juhesdk/sdk/SDKLoader;

    .line 16
    :cond_0
    sget-object v0, Lcom/juhe/juhesdk/sdk/SDKLoader;->imp:Lcom/juhe/juhesdk/sdk/SDKLoader;

    return-object v0
.end method


# virtual methods
.method public getApp(I)Lcom/juhe/juhesdk/interfaces/IAppApi;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/SDKLoader;->appApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "com.juhe.juhesdk.app.channel.YoFiApp"

    .line 35
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-string p1, "com.juhe.juhesdk.app.channel.ViVoApp"

    .line 37
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    const-string p1, "com.juhe.juhesdk.app.channel.CoolPayApp"

    .line 39
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    const-string p1, "com.juhe.juhesdk.app.channel.HuaWeiApp"

    .line 41
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    const-string p1, "com.juhe.juhesdk.app.channel.G360App"

    .line 43
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    const-string p1, "com.juhe.juhesdk.app.channel.BaiDuApp"

    .line 45
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    const-string p1, "com.juhe.juhesdk.app.channel.BiLiBiLiApp"

    .line 47
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x11

    if-ne p1, v0, :cond_7

    const-string p1, "com.juhe.juhesdk.app.channel.HeiShaApp"

    .line 49
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x12

    if-ne p1, v0, :cond_8

    const-string p1, "com.juhe.juhesdk.app.channel.NubiaApp"

    .line 51
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x13

    if-ne p1, v0, :cond_9

    const-string p1, "com.juhe.juhesdk.app.channel.MuMuApp"

    .line 53
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x15

    if-ne p1, v0, :cond_a

    const-string p1, "com.juhe.juhesdk.app.channel.GBApp"

    .line 55
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x16

    if-ne p1, v0, :cond_b

    const-string p1, "com.juhe.juhesdk.app.channel.YuMingApp"

    .line 57
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x17

    if-ne p1, v0, :cond_c

    const-string p1, "com.juhe.juhesdk.app.channel.ZhongChenApp"

    .line 59
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_d

    const-string p1, "com.juhe.juhesdk.app.channel.YouXiFanApp"

    .line 61
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_d
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_e

    const-string p1, "com.juhe.juhesdk.app.channel.UmarkApp"

    .line 63
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_e
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_f

    const-string p1, "com.juhe.juhesdk.app.channel.QidianApp"

    .line 65
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_f
    const/16 v0, 0x20

    if-ne p1, v0, :cond_10

    const-string p1, "com.juhe.juhesdk.app.channel.UmarkSdkApp"

    .line 67
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_10
    const/16 v0, 0x23

    if-ne p1, v0, :cond_11

    const-string p1, "com.juhe.juhesdk.app.channel.BwhApp"

    .line 69
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_11
    const/16 v0, 0x26

    if-ne p1, v0, :cond_12

    const-string p1, "com.juhe.juhesdk.app.channel.HonorApp"

    .line 71
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_12
    const/16 v0, 0x27

    if-ne p1, v0, :cond_13

    const-string p1, "com.juhe.juhesdk.app.channel.TTsdkApp"

    .line 73
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_13
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_14

    const-string p1, "com.juhe.juhesdk.app.channel.DownJoyApp"

    .line 75
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_14
    const/16 v0, 0x41

    if-ne p1, v0, :cond_15

    const-string p1, "com.juhe.juhesdk.app.channel.QimengApp"

    .line 77
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_15
    const-string p1, "com.juhe.juhesdk.app.channel.DefaultApp"

    .line 79
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 81
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/juhe/juhesdk/interfaces/IAppApi;

    iput-object p1, p0, Lcom/juhe/juhesdk/sdk/SDKLoader;->appApi:Lcom/juhe/juhesdk/interfaces/IAppApi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 83
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_16
    :goto_2
    iget-object p1, p0, Lcom/juhe/juhesdk/sdk/SDKLoader;->appApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    return-object p1
.end method

.method public getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/SDKLoader;->sdk:Lcom/juhe/juhesdk/interfaces/ISDKApi;

    if-nez v0, :cond_0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getChannelClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/juhe/juhesdk/interfaces/ISDKApi;

    iput-object v0, p0, Lcom/juhe/juhesdk/sdk/SDKLoader;->sdk:Lcom/juhe/juhesdk/interfaces/ISDKApi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/juhe/juhesdk/sdk/SDKLoader;->sdk:Lcom/juhe/juhesdk/interfaces/ISDKApi;

    return-object v0
.end method
