.class public Lcom/bytedance/bdtracker/d0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/d0;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/d0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0$a;->a:Lcom/bytedance/bdtracker/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appId"

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d0$a;->a:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "isMainProcess"

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/d0$a;->a:Lcom/bytedance/bdtracker/d0;

    .line 4
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 5
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/v1;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method
