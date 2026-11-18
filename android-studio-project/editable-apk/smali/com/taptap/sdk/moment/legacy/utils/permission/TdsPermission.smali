.class public Lcom/taptap/sdk/moment/legacy/utils/permission/TdsPermission;
.super Ljava/lang/Object;
.source "TdsPermission.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static with(Landroid/app/Activity;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;
    .locals 1

    .line 28
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;
    .locals 1

    .line 32
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionCollection;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method
