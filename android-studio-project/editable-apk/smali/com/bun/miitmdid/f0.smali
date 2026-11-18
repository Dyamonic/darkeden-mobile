.class public Lcom/bun/miitmdid/f0;
.super Lcom/bun/miitmdid/m;


# instance fields
.field public n:Landroid/content/Context;

.field public o:Ljava/lang/String;

.field public p:Lcom/bun/miitmdid/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Constructor: getPackageInfo is null"

    invoke-direct {p0}, Lcom/bun/miitmdid/m;-><init>()V

    const-string v1, "ZteProvider"

    const-string v2, "ZteProvider(Context)"

    invoke-static {v1, v2}, Lcom/bun/miitmdid/h0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bun/miitmdid/f0;->n:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bun/miitmdid/f0;->o:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "com.mdid.msa"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/bun/miitmdid/h0;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "Constructor: MsaService not found"

    invoke-static {v1, p1}, Lcom/bun/miitmdid/h0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/bun/miitmdid/f0;->n:Landroid/content/Context;

    iget-object v0, p0, Lcom/bun/miitmdid/f0;->o:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bun/miitmdid/c0;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "Constructor: MsaService start success"

    invoke-static {v1, p1}, Lcom/bun/miitmdid/h0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: MsaService start Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bun/miitmdid/h0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/bun/miitmdid/f0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/m;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/bun/miitmdid/f0;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/bun/miitmdid/m;->g()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/bun/miitmdid/f0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bun/miitmdid/m;->i:Z

    return p1
.end method

.method public static synthetic b(Lcom/bun/miitmdid/f0;)Lcom/bun/miitmdid/c0;
    .locals 0

    iget-object p0, p0, Lcom/bun/miitmdid/f0;->p:Lcom/bun/miitmdid/c0;

    return-object p0
.end method

.method public static synthetic b(Lcom/bun/miitmdid/f0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/m;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/bun/miitmdid/f0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/m;->h:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public doStart()V
    .locals 4

    const-string v0, "ZteProvider"

    const-string v1, "doStart()"

    invoke-static {v0, v1}, Lcom/bun/miitmdid/h0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/bun/miitmdid/f0;->n:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/bun/miitmdid/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/bun/miitmdid/f0;->n:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bun/miitmdid/m;->f()V

    new-instance v1, Lcom/bun/miitmdid/c0;

    iget-object v2, p0, Lcom/bun/miitmdid/f0;->n:Landroid/content/Context;

    new-instance v3, Lcom/bun/miitmdid/f0$a;

    invoke-direct {v3, p0}, Lcom/bun/miitmdid/f0$a;-><init>(Lcom/bun/miitmdid/f0;)V

    invoke-direct {v1, v2, v3}, Lcom/bun/miitmdid/c0;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/d0;)V

    iput-object v1, p0, Lcom/bun/miitmdid/f0;->p:Lcom/bun/miitmdid/c0;

    iget-object v2, p0, Lcom/bun/miitmdid/f0;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bun/miitmdid/c0;->a(Ljava/lang/String;)V

    const-string v1, "doStart: BindService success"

    invoke-static {v0, v1}, Lcom/bun/miitmdid/h0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bun/miitmdid/m;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStart: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bun/miitmdid/h0;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bun/miitmdid/m;->d()V

    invoke-virtual {p0}, Lcom/bun/miitmdid/m;->h()V

    :goto_0
    return-void
.end method

.method public shutDown()V
    .locals 1

    iget-object v0, p0, Lcom/bun/miitmdid/f0;->p:Lcom/bun/miitmdid/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bun/miitmdid/c0;->e()V

    :cond_0
    return-void
.end method
