.class public Lcom/bytedance/bdtracker/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/w$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/bytedance/bdtracker/w$b;

.field public static final h:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bytedance/bdtracker/w;->b:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lcom/bytedance/bdtracker/w;->c:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    sput v4, Lcom/bytedance/bdtracker/w;->d:I

    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v5, v0, 0x1

    sput v5, Lcom/bytedance/bdtracker/w;->e:I

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v9, Lcom/bytedance/bdtracker/w;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v10, Lcom/bytedance/bdtracker/w$b;

    const-string v0, "TTDefaultExecutors"

    invoke-direct {v10, v0}, Lcom/bytedance/bdtracker/w$b;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/bytedance/bdtracker/w;->g:Lcom/bytedance/bdtracker/w$b;

    new-instance v11, Lcom/bytedance/bdtracker/w$a;

    invoke-direct {v11}, Lcom/bytedance/bdtracker/w$a;-><init>()V

    sput-object v11, Lcom/bytedance/bdtracker/w;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v0, Lcom/bytedance/bdtracker/x;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/bytedance/bdtracker/x;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/bytedance/bdtracker/w;->a:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/bytedance/bdtracker/x;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method
