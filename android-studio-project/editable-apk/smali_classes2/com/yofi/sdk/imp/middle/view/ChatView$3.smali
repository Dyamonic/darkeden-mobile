.class Lcom/yofi/sdk/imp/middle/view/ChatView$3;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

.field final synthetic val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$3;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$3;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$ChatView$3(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "granted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 350
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$3;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1000(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 346
    new-instance p1, Lcom/tbruyelle/rxpermissions3/RxPermissions;

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$3;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions3/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 347
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions3/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/yofi/sdk/imp/middle/view/-$$Lambda$ChatView$3$7kUGZm5QlPQRkEziIBb9_67AqwA;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/view/-$$Lambda$ChatView$3$7kUGZm5QlPQRkEziIBb9_67AqwA;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView$3;)V

    .line 349
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
