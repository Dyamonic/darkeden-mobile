.class public Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/Berry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/turingfd/sdk/ams/ad/final;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/final;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/final;->c:Lcom/tencent/turingfd/sdk/ams/ad/Durian;

    if-eqz v0, :cond_2

    .line 3
    iget-wide v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->a:J

    .line 4
    sget-wide v2, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->d:J

    sub-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 12
    sput-wide v2, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->d:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 13
    :cond_1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->a:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    .line 14
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->a(Ljava/lang/Object;)V

    .line 17
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void

    .line 18
    :cond_3
    :goto_0
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->b:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    .line 19
    monitor-enter v0

    .line 21
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->a(Ljava/lang/Object;)V

    .line 22
    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method
