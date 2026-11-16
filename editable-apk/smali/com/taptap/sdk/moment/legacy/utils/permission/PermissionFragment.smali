.class public Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;
.super Landroid/app/Fragment;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentLifecycle;


# static fields
.field public static final TAG:Ljava/lang/String; = "PermissionFragment"


# instance fields
.field private mFragmentDelegate:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;-><init>(Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;)V

    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->mFragmentDelegate:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;)Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->mFragmentDelegate:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;

    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 55
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->mFragmentDelegate:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->mFragmentDelegate:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 49
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->start()V

    return-void
.end method

.method public requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;",
            "Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;",
            ")V"
        }
    .end annotation

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment$1;-><init>(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->mFragmentDelegate:Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;

    invoke-interface {v0, p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;->bind(Landroid/app/Fragment;)V

    return-void
.end method
