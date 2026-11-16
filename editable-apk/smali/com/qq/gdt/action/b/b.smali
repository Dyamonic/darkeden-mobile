.class public Lcom/qq/gdt/action/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qq/gdt/action/b/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qq/gdt/action/b/b;->c(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/qq/gdt/action/b/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qq/gdt/action/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qq/gdt/action/b/b;->c(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/qq/gdt/action/b/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/b/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qq/gdt/action/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/qq/gdt/action/b/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const p0, -0x77eeaa10

    invoke-static {v0, p0}, Lcom/qq/gdt/action/b/c;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/qq/gdt/action/b/b;->b:Ljava/lang/String;

    const p0, -0x77eeaa01

    invoke-static {v0, p0}, Lcom/qq/gdt/action/b/c;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/qq/gdt/action/b/b;->a:Ljava/lang/String;

    const-string v1, ""

    if-ne p0, v1, :cond_1

    invoke-static {v0}, Lcom/qq/gdt/action/b/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/qq/gdt/action/b/b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method
