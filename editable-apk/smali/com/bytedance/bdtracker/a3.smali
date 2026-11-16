.class public final Lcom/bytedance/bdtracker/a3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/v2;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/bdtracker/a3;->c:I

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
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    const-string v1, "api_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/bytedance/bdtracker/a3;->b:J

    const-string v2, "api_time"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "api_call"

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

    const-string v0, "data_statistics"

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/bdtracker/a3;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
