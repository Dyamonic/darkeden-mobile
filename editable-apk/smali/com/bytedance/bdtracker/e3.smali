.class public final Lcom/bytedance/bdtracker/e3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/f3;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/bdtracker/e3;->a:J

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/bdtracker/k0;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/k0;->a(Lcom/bytedance/bdtracker/f3;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "sdk_init"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bytedance/bdtracker/u2$a;->a(Lcom/bytedance/bdtracker/u2;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "sdk_usage"

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/bdtracker/k0;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e3;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/bdtracker/e3;->a:J

    return-wide v0
.end method
