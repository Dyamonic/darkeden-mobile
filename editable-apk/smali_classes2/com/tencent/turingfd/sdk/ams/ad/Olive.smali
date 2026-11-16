.class public Lcom/tencent/turingfd/sdk/ams/ad/Olive;
.super Lcom/tencent/turingfd/sdk/ams/ad/if;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/tencent/turingfd/sdk/ams/ad/Dew;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Ljava/lang/String;Lcom/tencent/turingfd/sdk/ams/ad/Dew;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/if;-><init>(Landroid/view/Window$Callback;)V

    .line 2
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Olive;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Olive;->c:Lcom/tencent/turingfd/sdk/ams/ad/Dew;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Olive;->c:Lcom/tencent/turingfd/sdk/ams/ad/Dew;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Olive;->b:Ljava/lang/String;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;

    .line 2
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->k:Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    invoke-direct {v3}, Lcom/tencent/turingfd/sdk/ams/ad/Orion;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->a:Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    sput-object v4, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->k:Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 9
    sget v4, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->j:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->j:I

    .line 10
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 11
    iput-object v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->a:Lcom/tencent/turingfd/sdk/ams/ad/Orion;

    .line 12
    :goto_0
    iput-object v1, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->c:I

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iput v1, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->d:I

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    iput v1, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->e:I

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    iput v1, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->f:F

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    iput v1, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->g:F

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/tencent/turingfd/sdk/ams/ad/Orion;->h:J

    .line 19
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;->b:Lcom/tencent/turingfd/sdk/ams/ad/const;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    :goto_1
    invoke-super {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/if;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
