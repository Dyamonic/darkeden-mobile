.class Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$2;
.super Ljava/lang/Object;
.source "SecurityJumpAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->leftEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;
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

    .line 57
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->dismiss()V

    return-void
.end method
