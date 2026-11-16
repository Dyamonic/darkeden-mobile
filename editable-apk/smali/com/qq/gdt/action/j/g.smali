.class public Lcom/qq/gdt/action/j/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/j/g$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/qq/gdt/action/j/g;


# instance fields
.field public volatile a:Lcom/qq/gdt/action/j/g$a;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/gdt/action/j/g;->c:Z

    iput-boolean v0, p0, Lcom/qq/gdt/action/j/g;->d:Z

    sget-object v0, Lcom/qq/gdt/action/j/g$a;->c:Lcom/qq/gdt/action/j/g$a;

    iput-object v0, p0, Lcom/qq/gdt/action/j/g;->a:Lcom/qq/gdt/action/j/g$a;

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/j/g;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/j/g;->b:Lcom/qq/gdt/action/j/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/j/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/j/g;->b:Lcom/qq/gdt/action/j/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/j/g;

    invoke-direct {v1}, Lcom/qq/gdt/action/j/g;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/j/g;->b:Lcom/qq/gdt/action/j/g;

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
    sget-object v0, Lcom/qq/gdt/action/j/g;->b:Lcom/qq/gdt/action/j/g;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/qq/gdt/action/j/g;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qq/gdt/action/j/g;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qq/gdt/action/j/g;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCpProcess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qq/gdt/action/j/g;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/qq/gdt/action/j/g;->d:Z

    if-nez v1, :cond_3

    const-string v1, "isCpProcess false, need check"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "providerInfo name ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v6, "GDTInitProvider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    iput-boolean v0, p0, Lcom/qq/gdt/action/j/g;->d:Z

    sget-object v1, Lcom/qq/gdt/action/j/g$a;->a:Lcom/qq/gdt/action/j/g$a;

    iput-object v1, p0, Lcom/qq/gdt/action/j/g;->a:Lcom/qq/gdt/action/j/g$a;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/qq/gdt/action/j/g;->c:Z

    iget-boolean v0, p0, Lcom/qq/gdt/action/j/g;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
