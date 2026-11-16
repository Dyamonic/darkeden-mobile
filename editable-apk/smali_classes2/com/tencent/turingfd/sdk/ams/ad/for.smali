.class public Lcom/tencent/turingfd/sdk/ams/ad/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final a:Landroid/os/Handler$Callback;

.field public final b:Lcom/tencent/turingfd/sdk/ams/ad/new;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler$Callback;Lcom/tencent/turingfd/sdk/ams/ad/new;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/for;->a:Landroid/os/Handler$Callback;

    .line 3
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/for;->b:Lcom/tencent/turingfd/sdk/ams/ad/new;

    .line 4
    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/for;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "argi3"

    invoke-static {v0, v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1

    return v1

    .line 8
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "arg1"

    invoke-static {v2, v3, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPerformAccessibilityActionResult"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    .line 13
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v1

    aput-object v0, v4, v7

    .line 14
    :try_start_0
    invoke-static {v2, v3, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v7
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/for;->b:Lcom/tencent/turingfd/sdk/ams/ad/new;

    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/for;->c:Ljava/lang/String;

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;

    .line 3
    iget-object v4, v1, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;->b:Lcom/tencent/turingfd/sdk/ams/ad/const;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 7
    :goto_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/interface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/interface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    move v1, v2

    goto :goto_1

    .line 12
    :cond_1
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/interface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    return v2

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/for;->a:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_4

    .line 19
    invoke-interface {v1, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_4
    return v0
.end method
