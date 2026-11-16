.class public Lcom/tencent/turingfd/sdk/ams/ad/const;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Orion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->a:Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    sget v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->j:I

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 5
    sput v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->j:I

    .line 6
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->k:Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    iput-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->a:Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 7
    sput-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->k:Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 9
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_15

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto/16 :goto_6

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    if-nez v0, :cond_1

    return-void

    .line 13
    :cond_1
    check-cast p1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 14
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->b:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_6

    .line 20
    :cond_2
    iget-object v5, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 21
    iget-object v5, v5, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->b:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/const;->a()V

    .line 25
    :cond_3
    iget v5, p1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->c:I

    if-eqz v5, :cond_14

    if-eq v5, v3, :cond_6

    if-eq v5, v4, :cond_5

    if-eq v5, v2, :cond_4

    goto/16 :goto_6

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/const;->a()V

    goto/16 :goto_6

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 35
    :cond_6
    iget-object v5, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_6

    .line 41
    :cond_7
    iget-object v5, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v5, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x8

    if-gt v8, v9, :cond_8

    .line 46
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 48
    :cond_8
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 49
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 51
    invoke-interface {v5, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v5, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x6

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-double v10, v10

    .line 56
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 58
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v3

    .line 60
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_9

    .line 61
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v10

    goto :goto_0

    .line 64
    :cond_9
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_4

    .line 68
    :cond_a
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 69
    new-instance v5, Lcom/tencent/turingfd/sdk/ams/ad/Durian;

    invoke-direct {v5}, Lcom/tencent/turingfd/sdk/ams/ad/Durian;-><init>()V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 71
    iget-wide v10, v1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->h:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    .line 72
    iput v1, v5, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->b:I

    .line 73
    iput-wide v10, v5, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->a:J

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 78
    new-instance v9, Lcom/tencent/turingfd/sdk/ams/ad/Fig;

    invoke-direct {v9}, Lcom/tencent/turingfd/sdk/ams/ad/Fig;-><init>()V

    .line 79
    iget v10, v8, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->c:I

    if-eqz v10, :cond_e

    if-eq v10, v3, :cond_d

    if-eq v10, v4, :cond_c

    if-eq v10, v2, :cond_b

    .line 80
    iput v6, v9, Lcom/tencent/turingfd/sdk/ams/ad/Fig;->a:I

    goto :goto_3

    :cond_b
    const/4 v10, 0x4

    .line 81
    iput v10, v9, Lcom/tencent/turingfd/sdk/ams/ad/Fig;->a:I

    goto :goto_3

    .line 82
    :cond_c
    iput v4, v9, Lcom/tencent/turingfd/sdk/ams/ad/Fig;->a:I

    goto :goto_3

    .line 86
    :cond_d
    iput v2, v9, Lcom/tencent/turingfd/sdk/ams/ad/Fig;->a:I

    goto :goto_3

    .line 87
    :cond_e
    iput v3, v9, Lcom/tencent/turingfd/sdk/ams/ad/Fig;->a:I

    .line 88
    :goto_3
    iget v10, v8, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->f:F

    .line 89
    iput v10, v9, Lcom/tencent/turingfd/sdk/ams/ad/Fig;->d:F

    .line 90
    iget v8, v8, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->g:F

    .line 91
    iput v8, v9, Lcom/tencent/turingfd/sdk/ams/ad/Fig;->e:F

    .line 93
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 96
    :cond_f
    iput-object v1, v5, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->c:Ljava/util/ArrayList;

    move-object v1, v5

    :goto_4
    if-nez v1, :cond_10

    goto :goto_6

    .line 97
    :cond_10
    iget v2, p1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->d:I

    if-gtz v2, :cond_11

    .line 98
    iget v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->d:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->d:I

    .line 99
    :cond_11
    iget p1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->e:I

    if-nez p1, :cond_12

    .line 100
    iget p1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->d:I

    or-int/2addr p1, v4

    iput p1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->d:I

    .line 102
    :cond_12
    iget p1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->d:I

    if-eqz p1, :cond_13

    .line 103
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->a:Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;

    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/final;

    invoke-direct {v2, v0, v4, v1}, Lcom/tencent/turingfd/sdk/ams/ad/final;-><init>(Ljava/lang/String;ILcom/tencent/turingfd/sdk/ams/ad/Durian;)V

    check-cast p1, Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;

    invoke-virtual {p1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;->a(Lcom/tencent/turingfd/sdk/ams/ad/final;)V

    goto :goto_5

    .line 105
    :cond_13
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->a:Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;

    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/final;

    invoke-direct {v2, v0, v3, v1}, Lcom/tencent/turingfd/sdk/ams/ad/final;-><init>(Ljava/lang/String;ILcom/tencent/turingfd/sdk/ams/ad/Durian;)V

    check-cast p1, Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;

    invoke-virtual {p1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;->a(Lcom/tencent/turingfd/sdk/ams/ad/final;)V

    .line 107
    :goto_5
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/const;->a()V

    goto :goto_6

    .line 108
    :cond_14
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/const;->a()V

    .line 109
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 110
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_16

    return-void

    .line 113
    :cond_16
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/const;->a:Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;

    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/final;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v3, p1, v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/final;-><init>(Ljava/lang/String;ILcom/tencent/turingfd/sdk/ams/ad/Durian;)V

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;

    invoke-virtual {v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;->a(Lcom/tencent/turingfd/sdk/ams/ad/final;)V

    :goto_6
    return-void
.end method
