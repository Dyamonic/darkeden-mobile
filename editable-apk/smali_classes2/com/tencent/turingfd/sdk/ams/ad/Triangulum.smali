.class public Lcom/tencent/turingfd/sdk/ams/ad/Triangulum;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static a()Z
    .locals 4

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    return v1

    .line 4
    :cond_0
    const-class v2, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v2

    .line 5
    :try_start_0
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 6
    invoke-static {v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Triangulum;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 8
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
