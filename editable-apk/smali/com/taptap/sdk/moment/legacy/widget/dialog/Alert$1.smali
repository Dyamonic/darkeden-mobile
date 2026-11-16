.class Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$1;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;

.field final synthetic val$cancelable:Z


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;Z)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;

    iput-boolean p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$1;->val$cancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 102
    iget-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$1;->val$cancelable:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
