.class public Lcom/bytedance/bdtracker/x1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/x1;->b(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Lcom/bytedance/bdtracker/x1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/x1;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/x1$b;->b:Lcom/bytedance/bdtracker/x1;

    iput-object p2, p0, Lcom/bytedance/bdtracker/x1$b;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/bdtracker/x1$b;->a:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/bytedance/bdtracker/k0;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v1, "appId"

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/x1$b;->b:Lcom/bytedance/bdtracker/x1;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/x1;->i:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method
