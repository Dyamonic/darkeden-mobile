.class public Lcom/qq/gdt/action/j/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/j/c;


# instance fields
.field private volatile b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/gdt/action/j/c;->b:Z

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/j/c;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/j/c;->a:Lcom/qq/gdt/action/j/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/j/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/j/c;->a:Lcom/qq/gdt/action/j/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/j/c;

    invoke-direct {v1}, Lcom/qq/gdt/action/j/c;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/j/c;->a:Lcom/qq/gdt/action/j/c;

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
    sget-object v0, Lcom/qq/gdt/action/j/c;->a:Lcom/qq/gdt/action/j/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerApplicationLifeCallback register = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qq/gdt/action/j/c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3ee

    invoke-static {v0}, Lcom/qq/gdt/action/h/a;->a(I)V

    iget-boolean v0, p0, Lcom/qq/gdt/action/j/c;->b:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x3ef

    invoke-static {p1}, Lcom/qq/gdt/action/h/a;->a(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "\u4f20\u5165\u7684Context\u5bf9\u8c61\u4e3a\u7a7a\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    const-string v0, "registerApplicationLifeCallback begin register"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/qq/gdt/action/g;

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/gdt/action/g;-><init>(Lcom/qq/gdt/action/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/gdt/action/j/c;->b:Z

    const/16 p1, 0x3f1

    invoke-static {p1}, Lcom/qq/gdt/action/h/a;->a(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x3f0

    invoke-static {p1}, Lcom/qq/gdt/action/h/a;->a(I)V

    const-string p1, "\u4f20\u5165\u7684Context\u5bf9\u8c61\u4e0d\u662fApplication\u7c7b\u7684\u5b9e\u4f8b\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "registerApplicationLifeCallback"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
