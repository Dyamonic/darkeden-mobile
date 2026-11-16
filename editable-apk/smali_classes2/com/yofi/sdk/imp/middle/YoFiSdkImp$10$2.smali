.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10$2;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;->onFailure(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1308
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10$2;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1311
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10$2;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;

    iget-object v1, v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->querySession(Ljava/lang/String;)V

    return-void
.end method
