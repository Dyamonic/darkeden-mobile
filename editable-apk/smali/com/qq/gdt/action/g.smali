.class public Lcom/qq/gdt/action/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:I

.field private b:I

.field private final c:Lcom/qq/gdt/action/e;

.field private d:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/qq/gdt/action/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/gdt/action/g;->a:I

    iput v0, p0, Lcom/qq/gdt/action/g;->b:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/g;->d:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/qq/gdt/action/g;->c:Lcom/qq/gdt/action/e;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "App Enter Background"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/g;->c:Lcom/qq/gdt/action/e;

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->m()V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "App Enter Foreground"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/g;->c:Lcom/qq/gdt/action/e;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/e;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acitivity == null, can\'t log "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/qq/gdt/action/g;->d:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "page_name"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PAUSE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qq/gdt/action/g;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :cond_1
    :try_start_1
    const-string p1, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {p2, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "PAUSE"

    invoke-direct {p0, p1, v0}, Lcom/qq/gdt/action/g;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "RESUME"

    invoke-direct {p0, p1, v0}, Lcom/qq/gdt/action/g;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/g;->a:I

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/g;->a(Landroid/app/Activity;)V

    :cond_0
    iget p1, p0, Lcom/qq/gdt/action/g;->b:I

    if-gez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qq/gdt/action/g;->b:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/qq/gdt/action/g;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qq/gdt/action/g;->a:I

    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/qq/gdt/action/g;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/qq/gdt/action/g;->b:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/qq/gdt/action/g;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/qq/gdt/action/g;->a:I

    if-gtz p1, :cond_1

    invoke-direct {p0}, Lcom/qq/gdt/action/g;->a()V

    :cond_1
    :goto_0
    return-void
.end method
