.class public Lcom/bytedance/bdtracker/h5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/bytedance/bdtracker/g5;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/bdtracker/g5;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/g5;-><init>()V

    sput-object v0, Lcom/bytedance/bdtracker/h5;->a:Lcom/bytedance/bdtracker/g5;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/bdtracker/h5;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bytedance/bdtracker/h5;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/bytedance/bdtracker/h5;->a:Lcom/bytedance/bdtracker/g5;

    invoke-virtual {v1, p0}, Lcom/bytedance/bdtracker/g5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method
