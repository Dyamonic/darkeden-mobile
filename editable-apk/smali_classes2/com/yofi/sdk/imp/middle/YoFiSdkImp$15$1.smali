.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15$1;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1581
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15$1;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "error"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    return-void
.end method
