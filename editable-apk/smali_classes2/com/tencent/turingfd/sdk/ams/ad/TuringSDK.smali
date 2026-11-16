.class public final Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;
.super Lcom/tencent/turingfd/sdk/ams/ad/Flat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->a(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->a(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->b(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->g:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->m(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->w:J

    .line 5
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->t(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->x:J

    .line 6
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->u(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->y:I

    .line 7
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->v(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->m:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->w(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->l:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->x(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->n:I

    .line 10
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->y(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->o:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->z(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->p:Ljava/util/Map;

    .line 12
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->c(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->f:I

    .line 13
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->d(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->h:Z

    .line 14
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->e(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->q:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->f(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->k:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->g(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->t:Z

    .line 17
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->h(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->r:Z

    .line 18
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->i(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->s:Z

    .line 19
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->j(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->u:Z

    .line 20
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->k(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->b:Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;

    .line 21
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->l(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    .line 22
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->n(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->d:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;

    .line 23
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->o(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->e:Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;

    .line 24
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->p(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->v:Z

    .line 25
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->q(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->A:Z

    .line 26
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->r(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->B:Z

    .line 27
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->s(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->C:Z

    .line 31
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->a()V

    return-void
.end method

.method public static createConf(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;-><init>(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;)V

    return-object v0
.end method

.method public static getVersionInfo()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init()I
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    goto/16 :goto_2

    .line 4
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    const-string v1, "M String fixed1"

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TuringFdJava"

    if-nez v1, :cond_1

    const-string v1, "M String fixed1 failed"

    .line 6
    :cond_1
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "M String fixed2"

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TuringFdJava"

    if-nez v1, :cond_2

    const-string v1, "M String fixed2 failed"

    .line 8
    :cond_2
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    iget v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->f:I

    if-lez v1, :cond_4

    .line 10
    sput v1, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    .line 12
    :cond_4
    sget v1, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    if-nez v1, :cond_5

    const-string v1, "TuringFdJava"

    const-string v2, "please input valid channel!"

    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x2722

    .line 14
    monitor-exit v0

    goto :goto_2

    .line 18
    :cond_5
    iget-boolean v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->A:Z

    sput-boolean v1, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->b:Z

    .line 21
    const-class v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    :try_start_1
    sput-object p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->D:Lcom/tencent/turingfd/sdk/ams/ad/Flat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    const-string v1, "TuringFdJava"

    .line 23
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/default;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 31
    :cond_6
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/default;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 32
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 33
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b(Lcom/tencent/turingfd/sdk/ams/ad/Flat;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 39
    monitor-exit v0

    :goto_1
    move v2, v1

    goto :goto_2

    .line 43
    :cond_7
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->c(Lcom/tencent/turingfd/sdk/ams/ad/Flat;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 45
    monitor-exit v0

    goto :goto_1

    .line 46
    :cond_8
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Longan;->b:Lcom/tencent/turingfd/sdk/ams/ad/Longan;

    .line 47
    iput-object p0, v1, Lcom/tencent/turingfd/sdk/ams/ad/Longan;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 48
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->a(Lcom/tencent/turingfd/sdk/ams/ad/Flat;)V

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_2
    return v2

    :catchall_0
    move-exception v2

    .line 53
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2

    :catchall_2
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
