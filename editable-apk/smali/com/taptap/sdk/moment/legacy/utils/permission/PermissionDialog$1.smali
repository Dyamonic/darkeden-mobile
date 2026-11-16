.class Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$1;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->onStart()V
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

    .line 59
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
