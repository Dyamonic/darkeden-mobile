.class public final Lcom/taptap/sdk/startup/task/TaskNode$Virtual;
.super Ljava/lang/Object;
.source "TaskNode.kt"

# interfaces
.implements Lcom/taptap/sdk/startup/task/TaskNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/startup/task/TaskNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Virtual"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/startup/task/TaskNode$Virtual;",
        "Lcom/taptap/sdk/startup/task/TaskNode;",
        "task",
        "Lcom/taptap/sdk/startup/task/Task;",
        "(Lcom/taptap/sdk/startup/task/Task;)V",
        "getTask",
        "()Lcom/taptap/sdk/startup/task/Task;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "tap-initializer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final task:Lcom/taptap/sdk/startup/task/Task;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;-><init>(Lcom/taptap/sdk/startup/task/Task;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/startup/task/Task;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->task:Lcom/taptap/sdk/startup/task/Task;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/startup/task/Task;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;-><init>(Lcom/taptap/sdk/startup/task/Task;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/startup/task/TaskNode$Virtual;Lcom/taptap/sdk/startup/task/Task;ILjava/lang/Object;)Lcom/taptap/sdk/startup/task/TaskNode$Virtual;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->copy(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/TaskNode$Virtual;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/taptap/sdk/startup/task/Task;
    .locals 1

    invoke-virtual {p0}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/TaskNode$Virtual;
    .locals 1

    new-instance v0, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;-><init>(Lcom/taptap/sdk/startup/task/Task;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;

    invoke-virtual {p0}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getTask()Lcom/taptap/sdk/startup/task/Task;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->task:Lcom/taptap/sdk/startup/task/Task;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/startup/task/Task;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual(task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
