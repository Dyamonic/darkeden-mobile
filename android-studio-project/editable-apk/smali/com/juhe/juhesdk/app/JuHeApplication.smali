.class public Lcom/juhe/juhesdk/app/JuHeApplication;
.super Landroid/app/Application;
.source "JuHeApplication.java"


# static fields
.field private static context:Landroid/content/Context;

.field public static hasInJuHeApplication:Z


# instance fields
.field iAppApi:Lcom/juhe/juhesdk/interfaces/IAppApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContextObject()Landroid/content/Context;
    .locals 2

    .line 82
    sget-object v0, Lcom/juhe/juhesdk/app/JuHeApplication;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "JuHeApplication"

    const-string v1, "JuHeApplication\u4e3a\u521d\u59cb\u5316"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    sget-object v0, Lcom/juhe/juhesdk/app/JuHeApplication;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 69
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->init(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 72
    sput-boolean p1, Lcom/juhe/juhesdk/app/JuHeApplication;->hasInJuHeApplication:Z

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528attachBaseContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JuHeApplication"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getApp(I)Lcom/juhe/juhesdk/interfaces/IAppApi;

    move-result-object p1

    iput-object p1, p0, Lcom/juhe/juhesdk/app/JuHeApplication;->iAppApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/juhe/juhesdk/app/JuHeApplication;->iAppApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/juhe/juhesdk/app/JuHeApplication;->iAppApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    invoke-interface {p1, p0}, Lcom/juhe/juhesdk/interfaces/IAppApi;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public loadLib()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/juhe/juhesdk/app/JuHeApplication;->iAppApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/IAppApi;->loadLib()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 90
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    iget-object v0, p0, Lcom/juhe/juhesdk/app/JuHeApplication;->iAppApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    invoke-interface {v0, p1}, Lcom/juhe/juhesdk/interfaces/IAppApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 59
    invoke-virtual {p0}, Lcom/juhe/juhesdk/app/JuHeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/juhe/juhesdk/app/JuHeApplication;->context:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/juhe/juhesdk/app/JuHeApplication;->iAppApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/IAppApi;->initApp()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 97
    iget-object v0, p0, Lcom/juhe/juhesdk/app/JuHeApplication;->iAppApi:Lcom/juhe/juhesdk/interfaces/IAppApi;

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/IAppApi;->onTerminate()V

    return-void
.end method
