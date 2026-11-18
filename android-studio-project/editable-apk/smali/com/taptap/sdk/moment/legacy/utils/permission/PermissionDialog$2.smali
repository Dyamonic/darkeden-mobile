.class Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$2;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->access$000(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;->onConfirm()V

    .line 89
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->dismiss()V

    return-void
.end method
