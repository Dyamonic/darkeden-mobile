.class public Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;
.super Ljava/lang/Object;
.source "TapTapSingleton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$SingletonInstance;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TapTapSingleton"


# instance fields
.field private TIME:I

.field handler:Landroid/os/Handler;

.field private hasInitTapTap:Z

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    .line 26
    iput v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->TIME:I

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->handler:Landroid/os/Handler;

    .line 28
    new-instance v0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$1;-><init>(Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;)V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->runnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->hasInitTapTap:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->TIME:I

    return p0
.end method

.method public static getInstance()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;
    .locals 1

    .line 46
    invoke-static {}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$SingletonInstance;->access$100()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    :try_start_0
    const-string v0, "TAPTAP_CLIENTID"

    .line 56
    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAPTAP_CLIENT_TOKEN"

    .line 58
    invoke-static {p1, v1}, Lcom/yofi/sdk/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAPTAP_SHOW"

    .line 60
    invoke-static {p1, v2}, Lcom/yofi/sdk/utils/ResUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "TapTapSingleton"

    if-eqz v2, :cond_1

    .line 64
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Lcom/taptap/sdk/core/TapTapSdkOptions;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {v2, v0}, Lcom/taptap/sdk/core/TapTapSdkOptions;->setEnableLog(Z)V

    .line 76
    invoke-static {p1, v2}, Lcom/taptap/sdk/core/TapTapSdk;->init(Landroid/content/Context;Lcom/taptap/sdk/core/TapTapSdkOptions;)V

    .line 78
    iput-boolean v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->hasInitTapTap:Z

    .line 81
    new-instance p1, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$2;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$2;-><init>(Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;)V

    invoke-static {p1}, Lcom/taptap/sdk/moment/TapTapMoment;->setCallback(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingletonInstance init: \u53c2\u6570\u4e3a\u7a7aclientId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,clientToken="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5305\u4f53\u8bbe\u7f6eTAPTAP_SHOW= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onDestory()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tapTapOpenMoment()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->hasInitTapTap:Z

    if-nez v0, :cond_0

    const-string v0, "TapTapSingleton"

    const-string v1, "tapTapOpenMoment: \u9700\u8981\u5148\u521d\u59cb\u5316taptapsdk"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/moment/TapTapMoment;->open()V

    return-void
.end method

.method public tapTapOpenReview()V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->hasInitTapTap:Z

    if-nez v0, :cond_0

    const-string v0, "TapTapSingleton"

    const-string v1, "tapTapOpenReview: \u9700\u8981\u5148\u521d\u59cb\u5316taptapsdk"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/review/TapTapReview;->openReview()V

    return-void
.end method

.method public tapTapOpenUpdate(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->hasInitTapTap:Z

    if-nez v0, :cond_0

    const-string p1, "TapTapSingleton"

    const-string v0, "tapTapOpenUpdate: \u9700\u8981\u5148\u521d\u59cb\u5316taptapsdk"

    .line 137
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$3;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$3;-><init>(Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;)V

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/TapTapUpdate;->updateGame(Landroid/app/Activity;Lcom/taptap/sdk/update/TapTapUpdateCallback;)V

    return-void
.end method
