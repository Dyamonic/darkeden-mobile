.class public Lcom/tencent/turingfd/sdk/ams/ad/Flat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static D:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

.field public static final E:Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public a:Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor;

.field public b:Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;

.field public c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

.field public d:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;

.field public e:Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:[Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:J

.field public x:J

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Flat$do;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Flat$do;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->E:Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->f:I

    const-string v1, ""

    .line 26
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->g:Ljava/lang/String;

    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->h:Z

    const/4 v3, 0x0

    .line 29
    iput-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    const/16 v3, 0x2710

    .line 30
    iput v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->j:I

    .line 31
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->k:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->l:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->m:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->n:I

    .line 35
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->o:Ljava/lang/String;

    .line 37
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->p:Ljava/util/Map;

    .line 41
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->q:Ljava/lang/String;

    .line 43
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->r:Z

    .line 44
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->s:Z

    .line 46
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->t:Z

    .line 47
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->u:Z

    .line 48
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->v:Z

    const-wide/16 v1, 0x1388

    .line 50
    iput-wide v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->w:J

    const-wide/32 v1, 0xea60

    .line 51
    iput-wide v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->x:J

    const/4 v1, 0x3

    .line 52
    iput v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->y:I

    .line 56
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->z:Z

    .line 57
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->A:Z

    .line 60
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->B:Z

    .line 64
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->C:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2
    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    goto :goto_2

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    .line 16
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "https://tdid.m.qq.com?mc=2"

    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->a:Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor;

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 24
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->j:I

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_6

    const/16 v0, 0x2710

    .line 25
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->j:I

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->j:I

    .line 28
    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;

    invoke-direct {v3, v0}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;-><init>([Ljava/lang/String;)V

    .line 29
    array-length v0, v0

    if-gt v0, v1, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/package;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;

    invoke-direct {v1, v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 33
    :goto_3
    iput-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->a:Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor;

    goto :goto_4

    .line 35
    :cond_8
    iput-boolean v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->z:Z

    :goto_4
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/case;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public c()Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->b:Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->E:Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;

    :cond_0
    return-object v0
.end method
