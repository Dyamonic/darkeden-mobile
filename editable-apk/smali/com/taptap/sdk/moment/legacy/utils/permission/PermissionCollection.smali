.class public Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;
.super Ljava/lang/Object;
.source "PermissionCollection.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

.field private mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

.field private requestPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->activity:Landroid/app/Activity;

    return-void
.end method

.method private request(Landroid/app/Activity;)V
    .locals 3

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;

    if-nez v1, :cond_2

    .line 55
    new-instance v1, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;

    invoke-direct {v1}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->start()V

    .line 59
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 65
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->requestPermissions:Ljava/util/Set;

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    invoke-virtual {v1, p1, v0, v2}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionFragment;->requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V

    return-void
.end method


# virtual methods
.method public forwardSetting(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->config:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    return-object p0
.end method

.method public varargs permission([Ljava/lang/String;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->requestPermissions:Ljava/util/Set;

    return-object p0
.end method

.method public request(Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    .line 46
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;->request(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
