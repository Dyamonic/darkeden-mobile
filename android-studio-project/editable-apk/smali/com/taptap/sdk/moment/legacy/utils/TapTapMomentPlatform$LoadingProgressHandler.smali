.class Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoadingProgressHandler;
.super Landroid/os/Handler;
.source "TapTapMomentPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingProgressHandler"
.end annotation


# instance fields
.field activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoadingProgressHandler;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "msg_progress_timeout"

    if-ne p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoadingProgressHandler;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->access$100()V

    :cond_0
    return-void
.end method
