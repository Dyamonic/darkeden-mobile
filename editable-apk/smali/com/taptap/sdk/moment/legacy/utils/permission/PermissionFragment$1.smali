.class Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;

.field final synthetic val$callback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

.field final synthetic val$config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

.field final synthetic val$permissions:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;->val$permissions:Ljava/util/Set;

    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;->val$callback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    iput-object p4, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;->val$config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->access$000(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;)Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;->val$permissions:Ljava/util/Set;

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;->val$callback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;->val$config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;->requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V

    return-void
.end method
