.class public Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public a:Lrich/l0;

.field public b:Z

.field public final synthetic c:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;


# direct methods
.method public constructor <init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Lrich/l0;)V
    .locals 0

    iput-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->c:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->a:Lrich/l0;

    return-void
.end method

.method public static synthetic a(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->a(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->b:Z

    iput-boolean p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, v0, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 9

    const-string v0, "\u8bf7\u6c42\u8d85\u65f6"

    const-string v1, "102507"

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "resultCode"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "resultString"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->c:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Z)Z

    const-string v4, "authClickFailed"

    invoke-static {v4}, Lrich/w1;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->c:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 1
    iget-object v4, v4, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->t:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$l;

    .line 2
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->a:Lrich/l0;

    const-string v4, "loginTime"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lrich/l0;->b(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->a:Lrich/l0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v7

    invoke-virtual {v2, v4, v5, v6}, Lrich/l0;->a(Ljava/lang/String;J)V

    :cond_0
    iget-object v2, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->c:Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    iget-object v4, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->a:Lrich/l0;

    .line 3
    invoke-virtual {v2, v1, v0, v4, v3}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method
