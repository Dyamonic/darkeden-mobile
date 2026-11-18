.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$DeviceInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceInfoReceiver"
.end annotation


# instance fields
.field private final mFragmentWeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V
    .locals 1

    .line 1065
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1066
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$DeviceInfoReceiver;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1071
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$DeviceInfoReceiver;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    if-nez p1, :cond_0

    return-void

    .line 1073
    :cond_0
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1900(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V

    return-void
.end method
