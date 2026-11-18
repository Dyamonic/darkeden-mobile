.class public Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous$do;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

.field public static final m:J

.field public static final n:[I


# instance fields
.field public a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

.field public b:Landroid/os/Handler;

.field public c:Z

.field public d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/tencent/turingfd/sdk/ams/ad/protected$do;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->b1:[B

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->i:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->c1:[B

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->j:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->d1:[B

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->k:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->l:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->m:J

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xf
        0x1e
        0x5a
        0xf0
        0x168
        0x258
        0x4b0
        0x960
        0xc80
        0x12c0
        0x1c20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->c:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->e:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 481
    :try_start_0
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, p0, p1, p2, p3}, Ljava/util/UUID;-><init>(JJ)V

    .line 482
    new-instance p0, Landroid/media/MediaDrm;

    invoke-direct {p0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string p1, "deviceUniqueId"

    .line 483
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 484
    array-length p2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez p2, :cond_1

    .line 492
    :try_start_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_0

    .line 494
    invoke-virtual {p0}, Landroid/media/MediaDrm;->close()V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :goto_0
    return-object v1

    .line 499
    :cond_1
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 504
    :try_start_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v0, :cond_2

    .line 506
    invoke-virtual {p0}, Landroid/media/MediaDrm;->close()V

    goto :goto_1

    .line 510
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :goto_1
    return-object p1

    :catchall_2
    move-object p0, v1

    .line 511
    :catchall_3
    :try_start_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_3

    if-eqz p0, :cond_4

    .line 513
    invoke-virtual {p0}, Landroid/media/MediaDrm;->close()V

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_4

    .line 517
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_4
    :goto_2
    return-object v1
.end method

.method public static a(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    monitor-exit v0

    .line 4
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Melon;->a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/Hickory;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    invoke-virtual {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->b(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/16 v2, 0x27

    .line 15
    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_d

    .line 16
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "405"

    .line 17
    invoke-static {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    :try_start_2
    new-instance v6, Ljava/lang/String;

    const-string v7, "/proc/self/maps"

    invoke-static {v7}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "\n"

    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 23
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 24
    array-length v8, v6

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_b

    aget-object v10, v6, v9

    const-string v11, " +"

    .line 25
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 26
    array-length v11, v10

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    goto/16 :goto_2

    .line 27
    :cond_0
    array-length v11, v10

    sub-int/2addr v11, v5

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    :try_start_3
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v11, v3

    :goto_1
    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    :try_start_4
    const-string v12, "res"

    .line 38
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    const-string v12, ".apk"

    .line 39
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    const-string v12, "mediatek"

    .line 40
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    const-string v11, "/system/framework/framework-res.apk"

    .line 41
    invoke-static {v11, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    .line 42
    :cond_6
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    .line 43
    :cond_7
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v1, v10}, Lcom/tencent/turingfd/sdk/ams/ad/volatile;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    const-string v11, "android.auto_generated_rro__"

    .line 49
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "android.overlay"

    .line 50
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_2

    .line 54
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_9

    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_9
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_a
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :catchall_2
    :cond_b
    const-string v6, ","

    .line 64
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.content.res.Resources"

    .line 66
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 67
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "(\\|)|\\s*|\t|\r|\n"

    const-string v7, ""

    .line 71
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 72
    iget-object v6, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v7, "405"

    .line 73
    invoke-virtual {v6, v1, v7, v2, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    :cond_d
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 75
    iget-boolean v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->u:Z

    if-eqz v2, :cond_15

    const/16 v2, 0x2d

    .line 76
    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 78
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    sget v6, Lcom/tencent/turingfd/sdk/ams/ad/Core;->b:I

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    const-string v6, "902"

    .line 80
    invoke-static {v1, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    const-wide/16 v6, 0x0

    .line 81
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sget-wide v10, Lcom/tencent/turingfd/sdk/ams/ad/Core;->a:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_e

    move v8, v5

    goto :goto_4

    :cond_e
    move v8, v4

    :goto_4
    if-nez v8, :cond_f

    goto/16 :goto_9

    :cond_f
    const-string v8, "901"

    .line 82
    invoke-static {v1, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_6

    .line 86
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 87
    sget-object v8, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    .line 88
    sget-wide v9, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->e:J

    const-wide/32 v11, 0x36ee80

    const-string v13, "sid_refresh_period"

    .line 89
    invoke-virtual {v8, v13}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_11

    goto :goto_5

    .line 94
    :cond_11
    :try_start_6
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    mul-long v9, v8, v11

    :catch_0
    :goto_5
    cmp-long v6, v6, v9

    if-ltz v6, :cond_12

    :goto_6
    move v6, v5

    goto :goto_7

    :cond_12
    move v6, v4

    :goto_7
    if-eqz v6, :cond_14

    .line 95
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v6

    .line 96
    iget v7, v6, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a:I

    if-nez v7, :cond_13

    goto :goto_8

    .line 97
    :cond_13
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat;->a()Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v6

    .line 98
    :goto_8
    iget v7, v6, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a:I

    if-nez v7, :cond_14

    .line 99
    iget-object v7, v6, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->d:Ljava/lang/String;

    .line 100
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "901"

    .line 101
    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {v1, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 103
    invoke-virtual {v6}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "904"

    .line 105
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v1, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 107
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v1, v6, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;J)V

    .line 108
    :cond_15
    :goto_9
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 109
    iget-boolean v6, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->r:Z

    if-eqz v6, :cond_1a

    .line 110
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->c()Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;->userAgreement()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_b

    :cond_16
    const/16 v2, 0x29

    .line 116
    invoke-virtual {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 117
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->a:Ljava/util/Map;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->c:Ljava/lang/String;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_a

    .line 122
    :cond_17
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->a:Ljava/util/Map;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->c:Ljava/lang/String;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;

    .line 123
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Pegasus;

    invoke-direct {v2, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Pegasus;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;Landroid/content/Context;)V

    .line 128
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 129
    :cond_18
    :goto_a
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;ZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    .line 132
    sget-object p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a:Ljava/lang/String;

    .line 133
    const-class p0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter p0

    .line 134
    :try_start_7
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit p0

    .line 135
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    move-result-object p0

    if-eqz p0, :cond_19

    goto :goto_b

    .line 140
    :cond_19
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 141
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;

    invoke-direct {p0, v3, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;-><init>(Ljava/util/Map;Z)V

    .line 142
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->a()Ljava/util/concurrent/FutureTask;

    goto :goto_b

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    :goto_b
    return-void

    :catchall_5
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;)I
    .locals 7

    .line 230
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 231
    iget-boolean v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->s:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    .line 232
    :cond_0
    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    if-nez v0, :cond_4

    .line 233
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a:Ljava/lang/String;

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 239
    iget-wide v2, p1, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->b:J

    cmp-long p1, v0, v2

    const/4 v2, 0x3

    if-ltz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v2

    .line 248
    :cond_2
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-class v3, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v3

    .line 249
    :try_start_0
    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v3

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "107"

    .line 251
    invoke-static {v4, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 v3, 0x0

    .line 254
    :goto_0
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-class v5, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v5

    .line 255
    :try_start_2
    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    const-string v5, "108"

    .line 256
    invoke-virtual {p1, v6, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-ltz p1, :cond_3

    .line 260
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    monitor-exit v5

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v3

    throw p1

    :cond_4
    :goto_1
    return v1
.end method

.method public a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->f:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 149
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 151
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 154
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;ZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;
    .locals 6

    .line 171
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    if-nez v1, :cond_0

    const/16 p1, -0x2712

    .line 173
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 183
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a()V

    const/16 p1, -0x2718

    .line 186
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    return-object p1

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 189
    invoke-virtual {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 190
    monitor-exit v3

    goto :goto_1

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    iget-object v4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 196
    iget-object v4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 198
    iget-object v4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->b:Landroid/os/Handler;

    new-instance v5, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;

    invoke-direct {v5, p0, p1, v2, p3}, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;Landroid/content/Context;ZI)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :cond_4
    :try_start_2
    iget-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 209
    iget-wide v4, p2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->w:J

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x2710

    .line 210
    :goto_0
    invoke-virtual {p3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :catch_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v1

    if-eq v1, v0, :cond_6

    .line 217
    monitor-exit v3

    goto :goto_1

    :cond_6
    const/16 p1, -0x2714

    .line 219
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 220
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 228
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :cond_7
    const/4 p1, 0x3

    if-ne v1, p1, :cond_8

    .line 229
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a()V

    :cond_8
    return-object v0
.end method

.method public final a(Landroid/content/Context;ZZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x271c

    .line 263
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v0

    return-object v0

    .line 266
    :cond_0
    iget-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 267
    iget-boolean v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->s:Z

    const/16 v3, -0x753f

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_c

    .line 268
    const-class v9, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v9

    .line 269
    :try_start_0
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v9

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 271
    iget-object v13, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v14, "109"

    .line 272
    invoke-virtual {v13, v0, v14}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v13

    .line 273
    div-long/2addr v13, v11

    sub-long/2addr v9, v13

    .line 274
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0xe10

    cmp-long v0, v9, v11

    if-gtz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    if-nez v0, :cond_2

    .line 275
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v0

    return-object v0

    .line 276
    :cond_2
    iget-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-class v9, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v9

    .line 277
    :try_start_1
    sget-object v10, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v9

    .line 278
    invoke-virtual {v0, v10, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;I)Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    move-result-object v0

    .line 279
    iget-object v9, v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_5

    .line 280
    :cond_3
    iget-object v9, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-class v10, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v10

    .line 281
    :try_start_2
    sget-object v11, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v10

    .line 282
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "401"

    .line 283
    invoke-static {v11, v9}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 285
    :try_start_3
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-wide v9, v6

    :goto_1
    cmp-long v11, v9, v6

    if-gtz v11, :cond_4

    goto :goto_3

    .line 286
    :cond_4
    iget-object v11, v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v11

    .line 287
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 290
    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->n:[I

    array-length v14, v13

    int-to-long v14, v14

    cmp-long v14, v9, v14

    if-gez v14, :cond_5

    long-to-int v9, v9

    goto :goto_2

    .line 291
    :cond_5
    array-length v9, v13

    sub-int/2addr v9, v8

    :goto_2
    if-ge v9, v8, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v9, -0x1

    .line 298
    aget v10, v13, v10

    aget v9, v13, v9

    if-ge v10, v9, :cond_b

    .line 299
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    sub-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 300
    invoke-virtual {v13, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v9, v10

    .line 301
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v9

    invoke-virtual {v10, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    cmp-long v9, v11, v9

    if-gtz v9, :cond_7

    move v9, v5

    goto :goto_4

    :cond_7
    :goto_3
    move v9, v8

    :goto_4
    if-nez v9, :cond_8

    if-eqz p3, :cond_a

    goto :goto_5

    .line 302
    :cond_8
    iget-object v9, v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    .line 303
    check-cast v9, Ljava/lang/Long;

    .line 304
    iget-object v10, v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    .line 305
    iget v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->a:I

    if-ge v10, v0, :cond_9

    goto :goto_5

    .line 306
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sget-wide v11, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->m:J

    cmp-long v0, v9, v11

    if-ltz v0, :cond_a

    :goto_5
    move v0, v8

    goto :goto_6

    :cond_a
    move v0, v5

    :goto_6
    if-nez v0, :cond_c

    const/16 v0, -0x271b

    .line 307
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v0

    return-object v0

    .line 308
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v10

    throw v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    monitor-exit v9

    throw v2

    :catchall_3
    move-exception v0

    move-object v2, v0

    monitor-exit v9

    throw v2

    .line 309
    :cond_c
    iget-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-class v9, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v9

    .line 310
    :try_start_4
    sget-object v10, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    monitor-exit v9

    .line 311
    invoke-virtual {v0, v10, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;I)Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    move-result-object v0

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->a(Ljava/lang/Object;)V

    .line 314
    iget-object v4, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-class v9, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v9

    .line 315
    :try_start_5
    sget-object v10, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    monitor-exit v9

    .line 316
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v11, v5

    .line 318
    :goto_7
    iget-object v12, v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-ge v11, v12, :cond_e

    .line 319
    iget-object v12, v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v12, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 320
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v12, v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    sub-int/2addr v12, v8

    if-eq v11, v12, :cond_d

    const-string v12, "_"

    .line 322
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 326
    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "402"

    invoke-virtual {v4, v10, v9, v0, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 327
    const-class v4, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;

    monitor-enter v4

    .line 328
    :try_start_6
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    monitor-exit v4

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 330
    iget-object v4, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v9, "404"

    .line 331
    invoke-virtual {v4, v2, v9, v0, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 332
    :cond_f
    iget-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-static {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Melon;->a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/Hickory;)V

    .line 333
    iget-object v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v4, "502"

    .line 334
    invoke-virtual {v0, v2, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    .line 335
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    cmp-long v11, v9, v6

    const-wide/16 v12, 0x1

    if-nez v11, :cond_10

    .line 341
    invoke-virtual {v0, v2, v6, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->c(Landroid/content/Context;J)V

    goto :goto_8

    :cond_10
    if-eqz v11, :cond_11

    int-to-long v14, v4

    cmp-long v4, v14, v9

    if-eqz v4, :cond_11

    const-wide/16 v9, -0x1

    .line 346
    invoke-virtual {v0, v2, v9, v10}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->c(Landroid/content/Context;J)V

    goto :goto_8

    .line 348
    :cond_11
    invoke-virtual {v0, v2, v12, v13}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->c(Landroid/content/Context;J)V

    .line 349
    :goto_8
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    const-string v4, "e_b_d"

    .line 350
    invoke-virtual {v0, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 351
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 352
    invoke-static {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/TNative$aa;->c90_9F87DFDD2CC93068(Landroid/util/SparseArray;Landroid/content/Context;)Landroid/util/SparseArray;

    .line 353
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->b(Landroid/util/SparseArray;)I

    :cond_12
    move/from16 v4, p2

    move/from16 v9, p4

    .line 354
    :try_start_7
    invoke-virtual {v1, v2, v4, v9}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->b(Landroid/content/Context;ZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v10, v0

    const-string v0, "TuringFdJava"

    .line 356
    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x271f

    .line 357
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v0

    .line 358
    :goto_9
    iget v10, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    if-ne v10, v3, :cond_13

    .line 359
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "109"

    invoke-virtual {v3, v2, v11, v10, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    .line 361
    :cond_13
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v10, "109"

    .line 362
    invoke-virtual {v3, v2, v10}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v3, v10, v6

    if-eqz v3, :cond_14

    .line 363
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "109"

    invoke-virtual {v3, v2, v11, v10, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    :cond_14
    :goto_a
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "401"

    .line 366
    invoke-static {v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    :try_start_8
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_b

    :catchall_5
    move-wide v10, v6

    .line 369
    :goto_b
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    if-gez v3, :cond_15

    add-long/2addr v10, v12

    .line 370
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v3, v2, v10, v11}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;J)V

    goto :goto_c

    :cond_15
    cmp-long v3, v10, v6

    if-eqz v3, :cond_16

    .line 374
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v3, v2, v6, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;J)V

    .line 375
    :cond_16
    :goto_c
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "404"

    .line 376
    invoke-static {v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 378
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v6, "404"

    const-string v7, ""

    .line 379
    invoke-virtual {v3, v2, v6, v7, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 380
    :cond_17
    iget v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    if-nez v3, :cond_18

    .line 381
    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/Melon;->a:Ljava/lang/String;

    const-string v6, "502"

    .line 382
    invoke-virtual {v3, v2, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 383
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    int-to-long v10, v10

    cmp-long v6, v6, v10

    if-eqz v6, :cond_18

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "502"

    invoke-virtual {v3, v2, v7, v6, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_18
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 386
    iget v6, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    .line 387
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 388
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 389
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 390
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 391
    iget v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->h:I

    .line 392
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 393
    iget v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->i:I

    .line 394
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string v4, "%d_%d_%d_%d_%d_%d"

    .line 395
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 402
    iget-object v4, v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v5, "204"

    .line 403
    invoke-virtual {v4, v2, v5, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_6
    move-exception v0

    .line 404
    monitor-exit v4

    throw v0

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 405
    monitor-exit v9

    throw v2

    :catchall_8
    move-exception v0

    move-object v2, v0

    monitor-exit v9

    throw v2
.end method

.method public final a(Landroid/content/Context;[BI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;
    .locals 12

    .line 406
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    const-string v2, "e_w_t"

    const/4 v3, 0x0

    .line 408
    invoke-virtual {v1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2007"

    const-string v2, "1"

    .line 409
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 411
    invoke-static {v1, p2, v0, p3}, Lcom/tencent/turingfd/sdk/ams/ad/TNative$aa;->b90_9F87DFDD2CC93068(Landroid/util/SparseArray;[BLjava/util/Map;I)Landroid/util/SparseArray;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-static {p2}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->b(Landroid/util/SparseArray;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 415
    invoke-static {p3}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p3, 0x66

    .line 416
    const-class v0, Ljava/lang/Integer;

    invoke-static {p2, p3, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/16 v0, -0x7530

    if-nez p3, :cond_2

    .line 417
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    return-object p1

    .line 421
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 422
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v0, 0x65

    .line 423
    const-class v1, Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a:I

    const-string v1, ""

    if-nez v0, :cond_4

    move-object v0, v1

    .line 425
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 426
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit16 p1, p1, -0x271a

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 p3, 0x68

    .line 427
    const-class v2, Ljava/lang/String;

    invoke-static {p2, p3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_6

    move-object p3, v1

    :cond_6
    const/16 v2, 0x69

    .line 429
    const-class v4, Ljava/lang/String;

    invoke-static {p2, v2, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_7

    move-object v2, v1

    :cond_7
    const/16 v4, 0x6a

    .line 431
    const-class v5, Ljava/lang/String;

    invoke-static {p2, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_8

    move-object v4, v1

    :cond_8
    const/16 v5, 0x6b

    .line 433
    const-class v6, Ljava/lang/Integer;

    invoke-static {p2, v5, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/16 v6, 0x6c

    .line 434
    const-class v7, Ljava/lang/String;

    invoke-static {p2, v6, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_9

    move-object p2, v1

    :cond_9
    const/16 v6, 0xe10

    if-eqz v5, :cond_a

    .line 436
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v7, v6, :cond_b

    .line 438
    :cond_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 441
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 442
    new-instance v10, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;

    .line 443
    invoke-direct {v10, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;-><init>(I)V

    .line 444
    iput-wide v6, v10, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->b:J

    .line 445
    iput-object v0, v10, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->a:Ljava/lang/String;

    .line 446
    iput-object p3, v10, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->d:Ljava/lang/String;

    .line 447
    iput-object v2, v10, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->e:Ljava/lang/String;

    .line 448
    iput-object v4, v10, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->f:Ljava/lang/String;

    .line 449
    iput-object p2, v10, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->g:Ljava/lang/String;

    .line 450
    new-instance p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    invoke-direct {p2, v10}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)V

    .line 451
    iget-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 453
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a:Ljava/lang/String;

    const-string v3, "101"

    .line 454
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-wide v3, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->b:J

    .line 457
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "102"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->d:Ljava/lang/String;

    .line 459
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 460
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->d:Ljava/lang/String;

    const-string v3, "104"

    .line 461
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_c
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->e:Ljava/lang/String;

    .line 463
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 464
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->e:Ljava/lang/String;

    const-string v3, "105"

    .line 465
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_d
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->f:Ljava/lang/String;

    .line 467
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 468
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->f:Ljava/lang/String;

    const-string v3, "106"

    .line 469
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_e
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->g:Ljava/lang/String;

    .line 471
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 472
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->g:Ljava/lang/String;

    const-string v3, "110"

    .line 473
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const/4 v2, 0x1

    .line 476
    invoke-virtual {p3, p1, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    .line 477
    iget-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "107"

    invoke-virtual {p3, p1, v3, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v8

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "108"

    invoke-virtual {p3, p1, v1, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p2

    :catchall_0
    const/16 p1, -0x2717

    .line 480
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->b:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 170
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->f:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 159
    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 160
    iget p2, p1, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    if-eqz p2, :cond_1

    .line 161
    monitor-exit v0

    return-void

    .line 163
    :cond_1
    iget-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 164
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/content/Context;ZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;
    .locals 26

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    .line 2
    invoke-virtual {v0, v10}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(Landroid/content/Context;)J

    move-result-wide v12

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 6
    sget v0, Lcom/tencent/turingfd/sdk/ams/ad/Foxnut;->g:I

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 8
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/continue;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    .line 10
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    if-eqz v1, :cond_0

    .line 12
    iget-boolean v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->v:Z

    if-eqz v1, :cond_0

    const-string v1, "2"

    const-string v2, "1"

    .line 13
    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "101"

    .line 16
    iget-object v2, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 17
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ""

    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->q:Ljava/lang/String;

    .line 21
    :goto_0
    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v1, v10}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a:Ljava/lang/String;

    const-string v2, "207"

    .line 24
    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "209"

    .line 25
    iget-object v2, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 26
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, ""

    goto :goto_1

    .line 29
    :cond_2
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->g:Ljava/lang/String;

    .line 30
    :goto_1
    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "210"

    .line 31
    iget-object v2, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 32
    iget-boolean v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->t:Z

    .line 33
    iget-object v3, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/switch;->a(Ljava/lang/StringBuilder;)V

    const-string v5, ","

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "F:"

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_3

    const-string v5, "1"

    goto :goto_2

    :cond_3
    const-string v5, "0"

    .line 39
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PT:"

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PKG:"

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "1"

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SC:"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const-string v2, "1"

    goto :goto_3

    :cond_4
    const-string v2, "0"

    .line 51
    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    const v5, 0x19d14

    if-ne v2, v5, :cond_5

    const-string v2, ","

    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SOTR:"

    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat;->a()Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v2

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 61
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v2, ","

    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SRT:"

    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p3

    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "204"

    .line 73
    invoke-static {v10, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v2, "0_"

    .line 76
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v11, :cond_6

    const-string v5, "1"

    goto :goto_4

    :cond_6
    const-string v5, "0"

    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, ","

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "R:"

    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v2, ","

    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "US:"

    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-string v2, "503"

    .line 85
    invoke-static {v10, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    const-wide/16 v5, 0x0

    .line 86
    :goto_5
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    .line 87
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "502"

    .line 88
    invoke-virtual {v3, v10, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 89
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 93
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "STIF:"

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "904"

    .line 95
    invoke-static {v10, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GCI:"

    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "b8ba8c8"

    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    .line 106
    invoke-virtual {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2001"

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    .line 108
    sget v3, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    const v4, 0x19cc4

    const/16 v5, 0x12

    const/16 v7, 0x11

    if-eq v3, v4, :cond_a

    const v4, 0x19dc8

    if-ne v3, v4, :cond_9

    goto :goto_6

    :cond_9
    if-nez v11, :cond_b

    const-string v3, "1001"

    const-string v4, "1"

    .line 116
    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 117
    :cond_a
    :goto_6
    invoke-virtual {v1, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 118
    invoke-virtual {v1, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "1001"

    const-string v4, "2"

    .line 119
    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_7
    const-string v3, "2012"

    const-string v4, ""

    .line 127
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v18, 0x12c

    const-string v6, "m_p_s"

    .line 128
    invoke-virtual {v2, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v8

    const-wide/16 v7, 0x1

    if-nez v6, :cond_c

    goto :goto_8

    .line 133
    :cond_c
    :try_start_1
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    mul-long v18, v18, v7

    :catch_0
    :goto_8
    move-wide/from16 v5, v18

    long-to-int v5, v5

    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v20

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x88

    .line 137
    invoke-virtual {v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_9

    .line 139
    :cond_d
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->k:Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Triangulum;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "501"

    const-string v4, "1"

    .line 141
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_9
    const/16 v3, 0x8f

    .line 147
    invoke-virtual {v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_e

    .line 148
    :cond_f
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->i:Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Triangulum;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    goto :goto_a

    .line 154
    :cond_10
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x80

    invoke-virtual {v3, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_11

    :goto_a
    const/4 v3, 0x1

    goto :goto_b

    :catchall_1
    :cond_11
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_12

    const-string v2, "2020"

    const-string v3, "-2"

    .line 155
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 159
    :cond_12
    iget-object v3, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->h:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 160
    :try_start_3
    iget-object v4, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/FutureTask;

    if-nez v4, :cond_13

    .line 162
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/tencent/turingfd/sdk/ams/ad/Guava;

    invoke-direct {v6, v9}, Lcom/tencent/turingfd/sdk/ams/ad/Guava;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;)V

    invoke-direct {v4, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 168
    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/package;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 169
    iget-object v6, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 173
    :cond_13
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 175
    :try_start_4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    if-eqz v3, :cond_17

    .line 177
    iget-boolean v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->b:Z

    if-eqz v4, :cond_15

    const-string v4, "ig_g_a_l"

    const/4 v6, 0x0

    .line 178
    invoke-virtual {v2, v4, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_c

    :cond_14
    const-string v2, "2020"

    const-string v3, "1"

    .line 179
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_15
    :goto_c
    const-string v2, "2020"

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-boolean v6, v3, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->b:Z

    if-eqz v6, :cond_16

    const-string v6, "1"

    goto :goto_d

    :cond_16
    const-string v6, "0"

    :goto_d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_17
    const-string v2, "2020"

    const-string v3, "-1"

    .line 188
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_e

    :catchall_2
    const-string v2, "2020"

    const-string v3, "-3"

    .line 193
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_e
    iget-object v2, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 199
    iget-boolean v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->B:Z

    const/4 v8, 0x2

    if-nez v2, :cond_19

    const/16 v2, 0x90

    .line 200
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_f

    :cond_18
    move-wide/from16 v22, v12

    goto/16 :goto_14

    .line 201
    :cond_19
    :goto_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1a

    goto :goto_10

    .line 202
    :cond_1a
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    const-string v2, "d_i_l"

    .line 203
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 205
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->d:Ljava/lang/String;

    .line 206
    :cond_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :goto_10
    move-wide/from16 v22, v12

    const/4 v1, 0x0

    goto :goto_13

    .line 210
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v3, :cond_20

    aget-object v4, v1, v6

    const-string v7, ":"

    .line 212
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 213
    array-length v7, v4

    if-eq v7, v8, :cond_1d

    :catchall_3
    move-wide/from16 v22, v12

    goto :goto_12

    :cond_1d
    const/4 v7, 0x0

    .line 219
    :try_start_5
    aget-object v8, v4, v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v7, 0x10

    move-wide/from16 v22, v12

    :try_start_6
    invoke-static {v8, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-static {v12, v13, v7, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(JJ)Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 224
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    goto :goto_12

    .line 227
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1f

    const-string v7, ","

    .line 228
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_1f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catchall_4
    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v12, v22

    const/4 v8, 0x2

    goto :goto_11

    :cond_20
    move-wide/from16 v22, v12

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "2023"

    .line 234
    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_21
    const-string v1, "2023"

    const-string v2, ""

    .line 236
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :goto_14
    sget-object v12, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    .line 238
    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    const/16 v1, 0x29

    .line 239
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    const/4 v8, 0x3

    if-nez v1, :cond_22

    const-string v1, "2003"

    const-string v2, "0"

    .line 241
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v24, v14

    const/4 v14, 0x1

    move-object v15, v5

    goto/16 :goto_18

    .line 243
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "100"

    .line 245
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->b:Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;

    if-eqz v1, :cond_23

    .line 246
    iget v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;->b:I

    if-eqz v2, :cond_23

    goto :goto_15

    .line 247
    :cond_23
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->a:Ljava/util/Map;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->c:Ljava/lang/String;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const/16 v1, -0xa

    .line 249
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;

    move-result-object v1

    :goto_15
    const/16 v18, 0x1

    goto :goto_17

    .line 253
    :cond_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "main"

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, -0xb

    .line 255
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;

    move-result-object v1

    goto :goto_15

    .line 258
    :cond_25
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->a:Ljava/util/Map;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->c:Ljava/lang/String;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;

    if-eqz v1, :cond_26

    .line 259
    iget v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;->b:I

    if-gt v2, v8, :cond_26

    const/16 v18, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 260
    iput v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;->b:I

    .line 261
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/Aquila;

    .line 262
    invoke-interface {v1, v10}, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;

    move-result-object v1

    sput-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->b:Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;

    goto :goto_16

    :cond_26
    const/16 v18, 0x1

    .line 265
    :goto_16
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Perseus;->b:Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;

    .line 266
    :goto_17
    iget-object v4, v1, Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;->a:Ljava/lang/String;

    const/16 v1, 0x14

    move-object v2, v5

    move-wide/from16 v24, v14

    move/from16 v14, v18

    move-object v15, v5

    move-wide v5, v6

    move v7, v1

    .line 267
    invoke-static/range {v2 .. v7}, Lcom/tencent/turingfd/sdk/ams/ad/Gooseberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 276
    :goto_18
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 277
    iget-object v5, v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    if-eqz v5, :cond_28

    .line 278
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 284
    new-instance v18, Lcom/tencent/turingfd/sdk/ams/ad/Haw;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v3, v7

    move-object v4, v15

    move-object/from16 p3, v6

    move-object v14, v7

    move-wide/from16 v6, v20

    move/from16 v19, v8

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/tencent/turingfd/sdk/ams/ad/Haw;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/HashMap;Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;JLjava/lang/Object;)V

    .line 308
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    move-object/from16 v1, p3

    .line 311
    monitor-enter v1

    const-wide/16 v2, 0x3e8

    .line 313
    :try_start_7
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_19

    :catchall_5
    move-exception v0

    goto :goto_1a

    .line 316
    :catch_1
    :goto_19
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    cmp-long v1, v4, v2

    if-lez v1, :cond_27

    const-string v1, "Turing"

    const-string v2, "invoke info impl timeout"

    .line 319
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v1, 0x1

    .line 324
    invoke-virtual {v14, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1b

    .line 325
    :goto_1a
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :cond_28
    move/from16 v19, v8

    .line 326
    :goto_1b
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/default;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "264"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    .line 328
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 329
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "205"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/tencent/turingfd/sdk/ams/ad/extends;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x8

    invoke-static {v3, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->a(IJ)V

    :cond_29
    const/16 v1, 0x2712

    .line 335
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "2005"

    const-string v2, "0"

    .line 336
    invoke-virtual {v15, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const/16 v1, 0x2713

    .line 340
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "2006"

    const-string v2, "0"

    .line 341
    invoke-virtual {v15, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string v1, "901"

    .line 342
    invoke-static {v10, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "266"

    .line 343
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x73

    .line 345
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "268"

    .line 346
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    const-string v2, ""

    .line 348
    :cond_2c
    invoke-virtual {v15, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    const/16 v1, 0x74

    .line 351
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "269"

    .line 352
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Centaurus;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2e

    const-string v2, ""

    .line 354
    :cond_2e
    invoke-virtual {v15, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    const/16 v1, 0x75

    .line 357
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, ""

    .line 358
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "270"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const/16 v1, 0x2e

    .line 361
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, ""

    .line 362
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "271"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    const/16 v1, 0x76

    .line 365
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, ""

    .line 366
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Chamaeleon;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "272"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    const/16 v1, 0x11

    .line 369
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-nez v1, :cond_33

    const/16 v1, 0x28

    .line 370
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 372
    :cond_33
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 373
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->d:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;

    .line 374
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/UrsaMajor;->a(Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;)Ljava/util/List;

    move-result-object v1

    .line 375
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 376
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/import;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 377
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 380
    :cond_34
    invoke-virtual {v13}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 382
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 385
    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/UrsaMajor;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "277"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    const/16 v1, 0x7a

    .line 393
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 394
    sget v1, Lcom/tencent/turingfd/sdk/ams/ad/while;->a:I

    .line 395
    :try_start_a
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/while;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_1c

    :catchall_6
    const-string v1, "exception"

    :goto_1c
    const-string v2, "280"

    .line 398
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const/16 v1, 0x7e

    .line 402
    invoke-virtual {v12, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "281"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    const-string v1, "x_l2_p_i"

    .line 404
    invoke-virtual {v13, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string v2, "2014"

    .line 405
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    const-string v1, "x_u_p_i"

    .line 406
    invoke-virtual {v13, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    const-string v2, "2015"

    .line 407
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_3a
    invoke-virtual {v13}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    const-string v2, "2013"

    .line 413
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_3b
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    const/16 v2, 0x27

    .line 415
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 416
    iget-object v2, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "405"

    .line 417
    invoke-static {v10, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "239"

    .line 418
    invoke-virtual {v15, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    const/16 v2, 0x64

    .line 421
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "250"

    .line 423
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Centaurus;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    const-string v2, ""

    :cond_3d
    move-object v4, v2

    const/16 v7, 0x1e

    move-object v2, v15

    .line 425
    invoke-static/range {v2 .. v7}, Lcom/tencent/turingfd/sdk/ams/ad/Gooseberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_3e
    const/16 v2, 0x65

    .line 429
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 431
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Pear;->b(Landroid/content/Context;)I

    move-result v4

    const-string v5, "251"

    if-lez v4, :cond_3f

    const-string v6, "1"

    goto :goto_1d

    :cond_3f
    const-string v6, "0"

    .line 432
    :goto_1d
    invoke-virtual {v15, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "288"

    invoke-virtual {v15, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const/16 v2, 0x1f

    invoke-static {v2, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->a(IJ)V

    :cond_40
    const/16 v2, 0x66

    .line 437
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "252"

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mock_location"

    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_41

    const/4 v6, 0x1

    goto :goto_1e

    :cond_41
    move v6, v8

    :goto_1e
    if-eqz v6, :cond_42

    const-string v3, "1"

    goto :goto_1f

    :cond_42
    const-string v3, "0"

    .line 440
    :goto_1f
    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_43
    const/4 v8, 0x0

    :goto_20
    const/16 v2, 0x67

    .line 443
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, ""

    .line 444
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "253"

    invoke-virtual {v15, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    const/16 v2, 0x68

    .line 447
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, ""

    .line 448
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "254"

    invoke-virtual {v15, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    const/16 v2, 0x69

    .line 451
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, ""

    .line 452
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/goto;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "255"

    invoke-virtual {v15, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    const/16 v2, 0x6a

    .line 455
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "256"

    .line 457
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_47

    const-string v2, ""

    :cond_47
    move-object v4, v2

    const/16 v7, 0x20

    move-object v2, v15

    .line 459
    invoke-static/range {v2 .. v7}, Lcom/tencent/turingfd/sdk/ams/ad/Gooseberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_48
    const/16 v2, 0x6b

    .line 463
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "257"

    .line 464
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_49

    const-string v3, ""

    .line 466
    :cond_49
    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    const/16 v2, 0x71

    .line 469
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "258"

    .line 471
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Vulpecula;->a()Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "1"

    goto :goto_21

    :cond_4b
    const-string v2, "0"

    :goto_21
    move-object v4, v2

    const/16 v7, 0x28

    move-object v2, v15

    invoke-static/range {v2 .. v7}, Lcom/tencent/turingfd/sdk/ams/ad/Gooseberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_4c
    const/16 v2, 0x72

    .line 475
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "259"

    .line 478
    :try_start_b
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Vulpecula;->a(Landroid/content/Context;)Z

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_22

    :catchall_7
    move v4, v8

    :goto_22
    if-eqz v4, :cond_4d

    const-string v2, "1"

    goto :goto_23

    :cond_4d
    const-string v2, "0"

    :goto_23
    move-object v4, v2

    const/16 v7, 0x29

    move-object v2, v15

    .line 479
    invoke-static/range {v2 .. v7}, Lcom/tencent/turingfd/sdk/ams/ad/Gooseberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_4e
    const/16 v2, 0x2c

    .line 483
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 485
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Filbert;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "240"

    invoke-virtual {v15, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const/16 v2, 0x2a

    invoke-static {v2, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->a(IJ)V

    :cond_4f
    const/16 v2, 0x8a

    .line 490
    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 491
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "282"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    const-string v1, ""

    .line 492
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 493
    iget v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->n:I

    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "403"

    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 496
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->l:Ljava/lang/String;

    const-string v2, "402"

    .line 497
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 499
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->m:Ljava/lang/String;

    const-string v2, "404"

    .line 500
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 502
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->o:Ljava/lang/String;

    const-string v2, "401"

    .line 503
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "405"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "406"

    .line 505
    iget-object v3, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 506
    iget-object v3, v3, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->p:Ljava/util/Map;

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 509
    :cond_51
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 510
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 512
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    .line 513
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "_"

    const-string v12, "%5F"

    .line 515
    invoke-static {v7, v12, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    const-string v12, "%54"

    .line 516
    invoke-static {v7, v12, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 517
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, ","

    .line 519
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 523
    :cond_52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 524
    invoke-virtual {v15, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "201"

    .line 526
    invoke-static {v10, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "302"

    .line 527
    invoke-virtual {v15, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "202"

    .line 529
    invoke-static {v10, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "303"

    .line 530
    invoke-virtual {v15, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "203"

    .line 532
    invoke-static {v10, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "305"

    .line 533
    invoke-virtual {v15, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->a(Landroid/content/Context;)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "308"

    invoke-virtual {v15, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "404"

    .line 536
    invoke-static {v10, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "309"

    .line 537
    invoke-virtual {v15, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "205"

    .line 539
    invoke-static {v10, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "310"

    .line 540
    invoke-virtual {v15, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 542
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->e:Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;

    if-nez v1, :cond_53

    goto :goto_25

    .line 543
    :cond_53
    invoke-interface {v1, v10}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;->getFeatures(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_54

    .line 544
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    :cond_54
    :goto_25
    move-object v7, v2

    .line 545
    :cond_55
    :try_start_c
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 546
    invoke-static {v1, v10, v15, v7, v0}, Lcom/tencent/turingfd/sdk/ams/ad/TNative$aa;->a90_9F87DFDD2CC93068(Landroid/util/SparseArray;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 547
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "201"

    .line 548
    invoke-virtual {v1, v10, v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->b(Landroid/util/SparseArray;)I

    move-result v1

    .line 550
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;)[B

    move-result-object v2

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v0, v5, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v4, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a:I

    if-nez v0, :cond_56

    const-string v0, ""

    .line 555
    :cond_56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/continue;->a:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, ","

    .line 558
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    .line 561
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/continue;->a:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 565
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object v3, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v4, "205"

    .line 570
    invoke-virtual {v3, v10, v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    array-length v3, v2

    int-to-long v3, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "203"

    invoke-virtual {v0, v10, v4, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_58

    .line 573
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;

    move-result-object v0

    goto :goto_27

    .line 576
    :cond_58
    array-length v0, v2

    if-nez v0, :cond_59

    const/16 v0, -0x2713

    .line 577
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;

    move-result-object v0

    goto :goto_27

    .line 578
    :cond_59
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;

    invoke-direct {v0, v8, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;-><init>(I[B)V

    goto :goto_27

    :catchall_8
    const/4 v5, 0x2

    const/16 v0, -0x2716

    .line 579
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;

    move-result-object v0

    :goto_27
    move-object v1, v0

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v24

    .line 581
    iget v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->a:I

    if-eqz v0, :cond_5a

    .line 582
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v0

    return-object v0

    .line 586
    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 587
    sget-object v12, Lcom/tencent/turingfd/sdk/ams/ad/Longan;->b:Lcom/tencent/turingfd/sdk/ams/ad/Longan;

    .line 588
    iget-object v14, v1, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->b:[B

    const/4 v13, 0x1

    const/16 v15, 0x1fb5

    const/16 v16, 0x46c5

    const/16 v17, 0x0

    .line 589
    invoke-virtual/range {v12 .. v17}, Lcom/tencent/turingfd/sdk/ams/ad/Longan;->a(I[BIILcom/tencent/turingfd/sdk/ams/ad/CanisMajor;)Lcom/tencent/turingfd/sdk/ams/ad/Mango;

    move-result-object v4

    :try_start_d
    const-string v0, "connectivity"

    .line 591
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 592
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 594
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v12, v13, :cond_5b

    .line 595
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v12, v13, :cond_5b

    goto :goto_2b

    .line 599
    :cond_5b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5c

    goto :goto_2a

    .line 601
    :cond_5c
    :try_start_e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_5e

    .line 602
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 603
    invoke-static/range {p1 .. p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v0, :cond_61

    :cond_5d
    move v13, v5

    goto :goto_2c

    :cond_5e
    move/from16 v13, v19

    goto :goto_2c

    :catchall_9
    move-exception v0

    goto :goto_28

    :catchall_a
    move-exception v0

    const/4 v13, 0x1

    .line 612
    :goto_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    const-string v5, "ACCESS_NETWORK_STATE"

    .line 615
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_29

    :cond_5f
    move v13, v8

    :goto_29
    if-eqz v13, :cond_60

    :goto_2a
    move v13, v8

    goto :goto_2c

    :cond_60
    :goto_2b
    const/4 v0, -0x1

    move v13, v0

    .line 616
    :cond_61
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->b:[B

    .line 621
    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    iget-object v1, v9, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    const-string v2, "202"

    .line 626
    invoke-virtual {v1, v10, v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget v0, v4, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->a:I

    if-eqz v0, :cond_62

    .line 628
    iget v1, v4, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->b:I

    .line 629
    iget v2, v4, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->c:I

    .line 630
    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->j:[B

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;-><init>(I[BII)V

    return-object v3

    .line 631
    :cond_62
    iget-object v0, v4, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->d:[B

    .line 632
    sget v1, Lcom/tencent/turingfd/sdk/ams/ad/Foxnut;->g:I

    invoke-virtual {v9, v10, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;[BI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v0

    return-object v0

    :catchall_b
    move-exception v0

    .line 633
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    throw v0
.end method
