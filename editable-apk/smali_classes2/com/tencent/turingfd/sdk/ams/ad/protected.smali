.class public Lcom/tencent/turingfd/sdk/ams/ad/protected;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/protected$if;,
        Lcom/tencent/turingfd/sdk/ams/ad/protected$do;
    }
.end annotation


# direct methods
.method public static a()Lcom/tencent/turingfd/sdk/ams/ad/protected$do;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 4
    :cond_0
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v0

    .line 6
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/protected$if;

    .line 14
    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/protected$if;-><init>()V

    .line 15
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.google.android.gms"

    .line 16
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    .line 18
    invoke-virtual {v1, v3, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    :try_start_2
    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/protected$if;->a()Landroid/os/IBinder;

    move-result-object v3

    .line 21
    new-instance v6, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v9, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 26
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 27
    invoke-interface {v3, v5, v7, v8, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V

    .line 29
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :try_start_4
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 32
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v10, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 37
    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x2

    .line 39
    invoke-interface {v3, v10, v7, v8, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 40
    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V

    .line 41
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    move v4, v5

    .line 43
    :cond_1
    :try_start_6
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-direct {v6, v9, v4}, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 50
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v6

    :catchall_0
    move-exception v3

    .line 51
    :try_start_7
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw v3

    :catchall_1
    move-exception v3

    .line 54
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    throw v2

    .line 59
    :catch_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :catch_1
    :cond_2
    return-object v2

    :catchall_3
    move-exception v1

    monitor-exit v0

    throw v1
.end method
