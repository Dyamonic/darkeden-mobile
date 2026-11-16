.class public Lcom/tencent/turingfd/sdk/ams/ad/Cascara;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/Cascara$if;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/turingfd/sdk/ams/ad/Cascara$if;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Cascara;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Cascara;->b:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method public static a(JLjava/lang/String;)V
    .locals 22

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Cascara$if;

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Cascara$if;-><init>(JLjava/lang/String;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 9
    array-length v1, v1

    const-wide v3, -0x395b586ca42e166bL    # -2.0946245025644615E32

    int-to-long v6, v1

    mul-long/2addr v6, v3

    const-wide/16 v8, 0x0

    xor-long/2addr v6, v8

    shr-int/lit8 v8, v1, 0x3

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/16 v11, 0x30

    const/16 v12, 0x28

    const/16 v13, 0x20

    const/16 v14, 0x18

    const/16 v15, 0x10

    const/16 v16, 0x8

    if-ge v10, v8, :cond_1

    shl-int/lit8 v17, v10, 0x3

    add-int v17, v9, v17

    add-int/lit8 v9, v17, 0x0

    .line 10
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    move-wide/from16 v18, v6

    int-to-long v5, v9

    const-wide/16 v20, 0xff

    and-long v5, v5, v20

    add-int/lit8 v7, v17, 0x1

    .line 11
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    int-to-long v3, v7

    and-long v3, v3, v20

    shl-long v3, v3, v16

    add-long/2addr v5, v3

    add-int/lit8 v3, v17, 0x2

    .line 12
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-long v3, v3

    and-long v3, v3, v20

    shl-long/2addr v3, v15

    add-long/2addr v5, v3

    add-int/lit8 v3, v17, 0x3

    .line 13
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-long v3, v3

    and-long v3, v3, v20

    shl-long/2addr v3, v14

    add-long/2addr v5, v3

    add-int/lit8 v3, v17, 0x4

    .line 14
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-long v3, v3

    and-long v3, v3, v20

    shl-long/2addr v3, v13

    add-long/2addr v5, v3

    add-int/lit8 v3, v17, 0x5

    .line 15
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-long v3, v3

    and-long v3, v3, v20

    shl-long/2addr v3, v12

    add-long/2addr v5, v3

    add-int/lit8 v3, v17, 0x6

    .line 16
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-long v3, v3

    and-long v3, v3, v20

    shl-long/2addr v3, v11

    add-long/2addr v5, v3

    add-int/lit8 v3, v17, 0x7

    .line 17
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-long v3, v3

    and-long v3, v3, v20

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    add-long/2addr v5, v3

    const-wide v3, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v5, v3

    const/16 v7, 0x2f

    ushr-long v11, v5, v7

    xor-long/2addr v5, v11

    mul-long/2addr v5, v3

    xor-long v5, v18, v5

    mul-long v6, v5, v3

    add-int/lit8 v10, v10, 0x1

    const-wide v3, -0x395b586ca42e166bL    # -2.0946245025644615E32

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1
    move-wide/from16 v18, v6

    and-int/lit8 v3, v1, 0x7

    packed-switch v3, :pswitch_data_0

    const-wide v3, -0x395b586ca42e166bL    # -2.0946245025644615E32

    move-wide/from16 v6, v18

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v4, v1, 0x0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x6

    .line 33
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v11

    xor-long v6, v18, v4

    goto :goto_1

    :pswitch_1
    move-wide/from16 v6, v18

    :goto_1
    const/4 v4, 0x0

    add-int v9, v4, v1

    sub-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x5

    .line 35
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v8, v5

    shl-long/2addr v8, v12

    xor-long/2addr v6, v8

    goto :goto_2

    :pswitch_2
    const/4 v4, 0x0

    move-wide/from16 v6, v18

    :goto_2
    add-int v9, v4, v1

    sub-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x4

    .line 37
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v8, v5

    shl-long/2addr v8, v13

    xor-long/2addr v6, v8

    goto :goto_3

    :pswitch_3
    const/4 v4, 0x0

    move-wide/from16 v6, v18

    :goto_3
    add-int v9, v4, v1

    sub-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x3

    .line 39
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v8, v5

    shl-long/2addr v8, v14

    xor-long/2addr v6, v8

    goto :goto_4

    :pswitch_4
    const/4 v4, 0x0

    move-wide/from16 v6, v18

    :goto_4
    add-int v9, v4, v1

    sub-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x2

    .line 41
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v8, v5

    shl-long/2addr v8, v15

    xor-long/2addr v6, v8

    goto :goto_5

    :pswitch_5
    const/4 v4, 0x0

    move-wide/from16 v6, v18

    :goto_5
    add-int v9, v4, v1

    sub-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    .line 43
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    int-to-long v8, v5

    shl-long v8, v8, v16

    xor-long/2addr v6, v8

    goto :goto_6

    :pswitch_6
    const/4 v4, 0x0

    move-wide/from16 v6, v18

    :goto_6
    add-int v9, v4, v1

    sub-int/2addr v9, v3

    .line 45
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-long v1, v1

    xor-long/2addr v1, v6

    const-wide v3, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long v6, v1, v3

    :goto_7
    const/16 v1, 0x2f

    ushr-long v8, v6, v1

    xor-long v5, v6, v8

    mul-long/2addr v5, v3

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    .line 46
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 47
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Cascara;->a:Ljava/util/HashMap;

    monitor-enter v2

    .line 48
    :try_start_0
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/package;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Cascara$do;

    invoke-direct {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Cascara$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Cascara$if;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception v0

    .line 53
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
