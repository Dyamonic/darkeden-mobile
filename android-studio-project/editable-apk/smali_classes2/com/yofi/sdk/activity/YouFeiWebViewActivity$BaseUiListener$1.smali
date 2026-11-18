.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener$1;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;->onError(Lcom/tencent/tauth/UiError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;

.field final synthetic val$e:Lcom/tencent/tauth/UiError;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;Lcom/tencent/tauth/UiError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$e"
        }
    .end annotation

    .line 955
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;

    iput-object p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener$1;->val$e:Lcom/tencent/tauth/UiError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;

    iget-object v0, v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    iget-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener$1;->val$e:Lcom/tencent/tauth/UiError;

    iget-object v1, v1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
