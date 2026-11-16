.class public abstract Lcom/yofi/sdk/app/YoFiApplication;
.super Landroid/app/Application;
.source "YoFiApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    invoke-static {p0}, Lcom/yofi/sdk/YoFiSDK;->onApplicationCreate(Landroid/app/Application;)V

    return-void
.end method
