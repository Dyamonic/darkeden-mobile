.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$22;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getNotCustomElementBuilder()Lcom/rich/oauth/core/UIConfigBuild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1861
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$22;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUncheckedAuthLoginListener(Landroid/content/Context;Lcom/cmic/gen/sdk/view/AuthLoginCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callBack"
        }
    .end annotation

    return-void
.end method
