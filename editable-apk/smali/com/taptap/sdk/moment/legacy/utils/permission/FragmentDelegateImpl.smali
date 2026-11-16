.class public Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;
.super Ljava/lang/Object;
.source "FragmentDelegateImpl.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegate;
.implements Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;


# static fields
.field public static final FORWARD_TO_SETTING:I = 0x2

.field public static final REQUEST_PERMISSION_CODE:I = 0x1

.field public static final REQUEST_PERMISSION_FROM_SETTING:I = 0x3


# instance fields
.field private forwardPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forwardSetting:Z

.field private mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

.field private mConfig:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

.field private mDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private mGrantedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermanentDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->forwardPermissions:Ljava/util/Set;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->forwardSetting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;I)V

    return-void
.end method

.method private handlerRequestPermission([Ljava/lang/String;[II)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 122
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 123
    aget-object v2, p1, v1

    .line 124
    aget v3, p2, v1

    if-nez v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    .line 131
    invoke-virtual {v3, v2}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/taptap/sdk/moment/legacy/utils/permission/TdsPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v1, 0x1

    if-lt p1, p2, :cond_5

    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-gtz p1, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    if-eqz p1, :cond_6

    .line 151
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    if-eqz p1, :cond_b

    .line 152
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v1, p2, p3}, Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    goto :goto_4

    .line 155
    :cond_6
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-gtz p1, :cond_8

    .line 156
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    if-eqz p1, :cond_7

    .line 157
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, p2, p3}, Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    :cond_7
    return-void

    .line 161
    :cond_8
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->forwardPermissions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 162
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->forwardPermissions:Ljava/util/Set;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-ne p3, v1, :cond_a

    .line 164
    iget-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->forwardSetting:Z

    if-eqz p1, :cond_9

    .line 165
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->showForwardSetting()V

    goto :goto_4

    .line 167
    :cond_9
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->onConfirm()V

    goto :goto_4

    :cond_a
    const/4 p1, 0x3

    if-ne p3, p1, :cond_b

    .line 170
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, p2, p3}, Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;",
            "Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;",
            "I)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    .line 96
    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    .line 97
    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mConfig:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    .line 98
    iget-object p3, p3, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipTitle:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mConfig:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    iget-object p3, p3, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipReason:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iput-boolean p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->forwardSetting:Z

    .line 99
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p3, v2, :cond_1

    .line 100
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    new-array p3, v1, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 102
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, p3, p1}, Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private showForwardSetting()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mConfig:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mConfig:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    iget-object v1, v1, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipReason:Ljava/lang/String;

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mConfig:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    iget-object v2, v2, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipCancelText:Ljava/lang/String;

    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mConfig:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    iget-object v3, v3, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->tipConfirmText:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    .line 177
    invoke-virtual {v1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Fragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 117
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->forwardPermissions:Ljava/util/Set;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    iget-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mConfig:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;I)V

    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "package"

    const/4 v3, 0x0

    .line 184
    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 110
    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->handlerRequestPermission([Ljava/lang/String;[II)V

    :cond_1
    return-void
.end method

.method public requestPermission(Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V
    .locals 5
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

    .line 58
    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;

    .line 59
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 60
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 64
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/taptap/sdk/moment/legacy/utils/permission/TdsPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3, v0, p1}, Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p3, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->intentTitle:Ljava/lang/String;

    iget-object v1, p3, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->intentReason:Ljava/lang/String;

    iget-object v2, p3, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->intentCancelText:Ljava/lang/String;

    iget-object v3, p3, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;->intentConfirmText:Ljava/lang/String;

    new-instance v4, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl$1;-><init>(Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;Ljava/util/Set;Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionConfig;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    .line 87
    invoke-virtual {p2}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    sget-object p3, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
