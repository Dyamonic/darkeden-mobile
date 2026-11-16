.class public Lcom/qq/gdt/action/multioprocess/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/multioprocess/d$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/qq/gdt/action/multioprocess/d;


# instance fields
.field public a:Lcom/qq/gdt/action/multioprocess/b;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/multioprocess/d;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/multioprocess/d;->b:Lcom/qq/gdt/action/multioprocess/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/multioprocess/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/multioprocess/d;->b:Lcom/qq/gdt/action/multioprocess/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/d;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/d;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/multioprocess/d;->b:Lcom/qq/gdt/action/multioprocess/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/qq/gdt/action/multioprocess/d;->b:Lcom/qq/gdt/action/multioprocess/d;

    return-object v0
.end method

.method private a(Lcom/qq/gdt/action/multioprocess/b;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAllProcess BroadSendRunnable, userMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "send HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->d:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->d:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/multioprocess/d$a;

    invoke-direct {v1, p0, p1}, Lcom/qq/gdt/action/multioprocess/d$a;-><init>(Lcom/qq/gdt/action/multioprocess/d;Lcom/qq/gdt/action/multioprocess/b;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/d;->b()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qq/gdt/action/multioprocess/b;

    invoke-direct {v0}, Lcom/qq/gdt/action/multioprocess/b;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Lcom/qq/gdt/action/multioprocess/b/a;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/b;->o()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->o()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 2

    monitor-enter p0

    const/16 v0, 0x8fc

    :try_start_0
    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    if-eqz v0, :cond_0

    const/16 v1, 0x8fd

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8ff

    goto :goto_0

    :cond_1
    const/16 v0, 0x8fe

    :goto_0
    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    :goto_1
    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x904

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x901

    goto :goto_3

    :cond_3
    const/16 v0, 0x900

    :goto_3
    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_4

    :cond_4
    const/16 v0, 0x905

    invoke-static {v0}, Lcom/qq/gdt/action/h/a;->a(I)V

    :goto_4
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x903

    goto :goto_5

    :cond_5
    const/16 v0, 0x902

    :goto_5
    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    :goto_6
    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_7

    :cond_6
    const/16 v0, 0x906

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Ljava/lang/String;Z)Lcom/qq/gdt/action/multioprocess/b;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "updateRemoteMessage enter"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/qq/gdt/action/multioprocess/d;->g()V

    if-nez p3, :cond_0

    sget-object p3, Lcom/qq/gdt/action/ChannelType;->CHANNEL_TENCENT:Lcom/qq/gdt/action/ChannelType;

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/multioprocess/b;->e(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qq/gdt/action/multioprocess/b;->f(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/qq/gdt/action/multioprocess/b;->b(Lcom/qq/gdt/action/ChannelType;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/qq/gdt/action/multioprocess/b;->g(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/qq/gdt/action/multioprocess/b;->h(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    if-eqz p6, :cond_1

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object p1

    iget-object p2, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {p1, p2}, Lcom/qq/gdt/action/multioprocess/a;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    :cond_1
    invoke-direct {p0}, Lcom/qq/gdt/action/multioprocess/d;->i()V

    iget-object p1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/multioprocess/d;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    iget-object p1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Z)Lcom/qq/gdt/action/multioprocess/b;
    .locals 1

    invoke-direct {p0}, Lcom/qq/gdt/action/multioprocess/d;->g()V

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/multioprocess/b;->a(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qq/gdt/action/multioprocess/b;->b(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/qq/gdt/action/multioprocess/b;->a(Lcom/qq/gdt/action/ChannelType;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/qq/gdt/action/multioprocess/b;->c(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateUserSetMessage needSaveUserSetInfo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_0

    const/16 p1, 0xc80

    goto :goto_0

    :cond_0
    const/16 p1, 0xc81

    :goto_0
    iget-object p3, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-static {p1, p3}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    if-eqz p5, :cond_1

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object p1

    iget-object p3, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {p1, p3}, Lcom/qq/gdt/action/multioprocess/a;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    :cond_1
    const/16 p1, 0xd50

    iget-object p3, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-static {p1, p3}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update UserMessage-> updateUserSetMessage = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/qq/gdt/action/multioprocess/d;->i()V

    iget-object p1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/multioprocess/d;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    iget-object p1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    return-object p1
.end method

.method public declared-synchronized a(Lcom/qq/gdt/action/multioprocess/b/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/multioprocess/d;->g()V

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;)Lcom/qq/gdt/action/multioprocess/b;

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object p1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/multioprocess/a;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update UserMessage-> updateDeviceMessage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/multioprocess/d;->a(Lcom/qq/gdt/action/multioprocess/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/multioprocess/d;->g()V

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/multioprocess/b;->d(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object p1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/multioprocess/a;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update UserMessage-> updateUniqueIdMessage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/multioprocess/d;->a(Lcom/qq/gdt/action/multioprocess/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Lcom/qq/gdt/action/multioprocess/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/d;->c()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/a;->b()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/qq/gdt/action/multioprocess/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qq/gdt/action/j/g;->a()Lcom/qq/gdt/action/j/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/j/g;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/a;->b()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/d;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "getUserUniqueId context is null\uff0cno allow ipc getUserUniqueId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/qq/gdt/action/multioprocess/b/a;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/multioprocess/d;->h()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v0

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/qq/gdt/action/j/g;->a()Lcom/qq/gdt/action/j/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/j/g;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/a;->b()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-direct {p0}, Lcom/qq/gdt/action/multioprocess/d;->h()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "getPrivacyStatus context is null\uff0cno allow ipc getPrivacyStatus"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
