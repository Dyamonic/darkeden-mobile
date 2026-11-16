.class public Lcom/tencent/turingfd/sdk/ams/ad/Solar;
.super Lcom/tencent/turingfd/sdk/ams/ad/Serpens;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->i:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Solar;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Serpens;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/implements;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 6
    array-length v5, v1

    if-lez v5, :cond_2

    .line 9
    aget-object v1, v1, v4

    const-string v5, "SHA1"

    .line 12
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 15
    :try_start_1
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    array-length v6, v1

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_1

    .line 25
    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    or-int/lit16 v8, v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :cond_2
    :goto_1
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/finally;->j:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 37
    :try_start_2
    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/Solar;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    invoke-interface {p1, v3, v5, v6, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 43
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 44
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_1
    move-exception p1

    .line 48
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method
