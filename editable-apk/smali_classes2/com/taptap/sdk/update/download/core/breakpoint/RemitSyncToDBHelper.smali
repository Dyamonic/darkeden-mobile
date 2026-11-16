.class Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;
.super Ljava/lang/Object;
.source "RemitSyncToDBHelper.java"


# instance fields
.field delayMillis:J

.field private final executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;-><init>(Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;)V

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;-><init>(Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;)V

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    const-wide/16 v0, 0x5dc

    .line 34
    iput-wide v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->delayMillis:J

    return-void
.end method


# virtual methods
.method discard(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->removePostWithId(I)V

    .line 69
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->postRemoveInfo(I)V

    return-void
.end method

.method endAndEnsureToDB(I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->removePostWithId(I)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->isFreeToDatabase(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->postRemoveFreeId(I)V

    return-void

    .line 60
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->postSync(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->postRemoveFreeId(I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->postRemoveFreeId(I)V

    .line 64
    throw v0
.end method

.method isNotFreeToDatabase(I)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->isFreeToDatabase(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method onTaskStart(I)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->removePostWithId(I)V

    .line 49
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    iget-wide v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->delayMillis:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->postSyncInfoDelay(IJ)V

    return-void
.end method

.method shutdown()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->executor:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->shutdown()V

    return-void
.end method
