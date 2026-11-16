.class public Lcom/yofi/sdk/utils/YofiOaidDemoHelper;
.super Ljava/lang/Object;
.source "YofiOaidDemoHelper.java"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/utils/YofiOaidDemoHelper$AppIdsUpdater;
    }
.end annotation


# static fields
.field public static final ASSET_FILE_NAME_CERT:Ljava/lang/String; = "yofioaid.cert.pem"

.field public static final HELPER_VERSION_CODE:I = 0x134b174

.field public static final TAG:Ljava/lang/String; = "YofiOaidDemoHelper"

.field public static endTimeMillis:J

.field public static startTimeMillis:J


# instance fields
.field private final appIdsUpdater:Lcom/yofi/sdk/utils/YofiOaidDemoHelper$AppIdsUpdater;

.field private isArchSupport:Z

.field private isCertInit:Z

.field public isSDKLogOn:Z


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/utils/YofiOaidDemoHelper$AppIdsUpdater;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appIdsUpdater",
            "lib"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isCertInit:Z

    .line 29
    iput-boolean v0, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isArchSupport:Z

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isSDKLogOn:Z

    .line 37
    invoke-virtual {p0, p2}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->loadLibrary(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-boolean p2, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isArchSupport:Z

    if-eqz p2, :cond_0

    .line 39
    sget p2, Lcom/bun/miitmdid/core/MdidSdkHelper;->SDK_VERSION_CODE:I

    const v0, 0x134b174

    if-eq p2, v0, :cond_0

    const-string p2, "YofiOaidDemoHelper"

    const-string v0, "SDK version not match."

    .line 40
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->appIdsUpdater:Lcom/yofi/sdk/utils/YofiOaidDemoHelper$AppIdsUpdater;

    return-void
.end method

.method public static loadPemFromAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "assetFileName"
        }
    .end annotation

    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 185
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "YofiOaidDemoHelper"

    const-string p1, "loadPemFromAssetFile failed"

    .line 196
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getDeviceIds(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cxt"
        }
    .end annotation

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->getDeviceIds(Landroid/content/Context;ZZZ)V

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->endTimeMillis:J

    return-void
.end method

.method public getDeviceIds(Landroid/content/Context;ZZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cxt",
            "isGetOAID",
            "isGetVAID",
            "isGetAAID"
        }
    .end annotation

    const-string v0, "Time Consume:"

    .line 59
    iget-boolean v1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isCertInit:Z

    const-string v2, "YofiOaidDemoHelper"

    if-nez v1, :cond_0

    .line 62
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sput-wide v3, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->startTimeMillis:J

    const-string v1, "yofioaid.cert.pem"

    .line 63
    invoke-static {p1, v1}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->loadPemFromAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitCert(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isCertInit:Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 67
    :goto_0
    iget-boolean v1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isCertInit:Z

    if-nez v1, :cond_0

    const-string v1, "getDeviceIds: cert init failed"

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v3, 0x1388

    .line 75
    :try_start_1
    invoke-static {v3, v4}, Lcom/bun/miitmdid/core/MdidSdkHelper;->setGlobalTimeout(J)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    :goto_1
    const/4 v1, 0x0

    .line 83
    :try_start_2
    iget-boolean v4, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isSDKLogOn:Z

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZZZZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    sget-wide p1, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->endTimeMillis:J

    sget-wide p3, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->startTimeMillis:J

    sub-long/2addr p1, p3

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_2
    move-exception p1

    .line 85
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    sget-wide p1, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->endTimeMillis:J

    sget-wide p3, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->startTimeMillis:J

    sub-long/2addr p1, p3

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 92
    :goto_3
    new-instance p1, Lcom/bun/miitmdid/pojo/IdSupplierImpl;

    invoke-direct {p1}, Lcom/bun/miitmdid/pojo/IdSupplierImpl;-><init>()V

    const p2, 0xf63e8

    if-ne v1, p2, :cond_1

    const-string p2, "cert not init or check not pass"

    .line 95
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    goto :goto_4

    :cond_1
    const p2, 0xf63e4

    if-ne v1, p2, :cond_2

    const-string p2, "device not supported"

    .line 99
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    goto :goto_4

    :cond_2
    const p2, 0xf63e5

    if-ne v1, p2, :cond_3

    const-string p2, "failed to load config file"

    .line 103
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    goto :goto_4

    :cond_3
    const p2, 0xf63e3

    if-ne v1, p2, :cond_4

    const-string p2, "manufacturer not supported"

    .line 107
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    goto :goto_4

    :cond_4
    const p2, 0xf63e7

    if-ne v1, p2, :cond_5

    const-string p2, "sdk call error"

    .line 111
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    goto :goto_4

    :cond_5
    const p1, 0xf63e6

    if-ne v1, p1, :cond_6

    const-string p1, "result delay (async)"

    .line 114
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const p1, 0xf63e2

    if-ne v1, p1, :cond_7

    const-string p1, "result ok (sync)"

    .line 116
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 120
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDeviceIds: unknown code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    .line 88
    :goto_5
    sget-wide p2, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->endTimeMillis:J

    sget-wide v3, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->startTimeMillis:J

    sub-long/2addr p2, v3

    .line 89
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    throw p1
.end method

.method public getTimeConsume()J
    .locals 4

    .line 203
    sget-wide v0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->endTimeMillis:J

    sget-wide v2, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->startTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isArchSupport()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isArchSupport:Z

    return v0
.end method

.method public loadLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lib"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 209
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 210
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.product.cpu.abi"

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    .line 211
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const-string v1, "x86"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iput-boolean v5, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isArchSupport:Z

    goto :goto_0

    .line 216
    :cond_0
    iput-boolean v6, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isArchSupport:Z

    .line 217
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :catchall_0
    :goto_0
    iget-boolean p1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isArchSupport:Z

    if-nez p1, :cond_1

    const-string p1, "Arch: x86\n"

    return-object p1

    :cond_1
    const-string p1, "Arch: Not x86"

    return-object p1
.end method

.method public onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    const-string v0, "YofiOaidDemoHelper"

    if-nez p1, :cond_0

    const-string p1, "onSupport: supplier is null"

    .line 131
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->appIdsUpdater:Lcom/yofi/sdk/utils/YofiOaidDemoHelper$AppIdsUpdater;

    if-nez v1, :cond_1

    const-string p1, "onSupport: callbackListener is null"

    .line 135
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isArchSupport:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 144
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->isSupported()Z

    move-result v3

    .line 145
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->isLimited()Z

    move-result v1

    .line 146
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getVAID()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getAAID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v3

    move-object p1, v4

    move-object v2, p1

    .line 158
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "true"

    const-string v7, "false"

    if-eqz v3, :cond_3

    move-object v3, v6

    goto :goto_1

    :cond_3
    move-object v3, v7

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nlimit: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    move-object v1, v6

    goto :goto_2

    :cond_4
    move-object v1, v7

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nIs arch Support: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->isArchSupport:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nOAID: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nVAID: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAAID: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSupport: ids: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p1, p0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->appIdsUpdater:Lcom/yofi/sdk/utils/YofiOaidDemoHelper$AppIdsUpdater;

    invoke-interface {p1, v4}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper$AppIdsUpdater;->onIdsValid(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->endTimeMillis:J

    return-void
.end method
