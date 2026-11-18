.class final Lcom/hjq/xtoast/CancelRunnable;
.super Ljava/lang/ref/WeakReference;
.source "CancelRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/hjq/xtoast/XToast;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hjq/xtoast/XToast;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/hjq/xtoast/CancelRunnable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hjq/xtoast/XToast;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/hjq/xtoast/XToast;->cancel()Lcom/hjq/xtoast/XToast;

    :cond_0
    return-void
.end method
