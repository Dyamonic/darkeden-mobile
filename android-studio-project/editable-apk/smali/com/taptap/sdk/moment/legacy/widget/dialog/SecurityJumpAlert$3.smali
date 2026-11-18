.class Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$3;
.super Ljava/lang/Object;
.source "SecurityJumpAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->rightEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$3;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 71
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$3;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$3;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$3;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->dismiss()V

    return-void
.end method
