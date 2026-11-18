.class Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;
.super Ljava/lang/Object;
.source "FragmentDelegateImpl.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;

.field final synthetic val$callback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

.field final synthetic val$config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

.field final synthetic val$permissions:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->val$permissions:Ljava/util/Set;

    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->val$callback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    iput-object p4, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->val$config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->onClose()V

    return-void
.end method

.method public onConfirm()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->val$permissions:Ljava/util/Set;

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->val$callback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;->val$config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->access$000(Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;I)V

    return-void
.end method
