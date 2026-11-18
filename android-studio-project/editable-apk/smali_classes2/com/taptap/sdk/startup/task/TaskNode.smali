.class public interface abstract Lcom/taptap/sdk/startup/task/TaskNode;
.super Ljava/lang/Object;
.source "TaskNode.kt"

# interfaces
.implements Lcom/taptap/sdk/startup/grpah/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/startup/task/TaskNode$Virtual;,
        Lcom/taptap/sdk/startup/task/TaskNode$Real;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0002\u0006\u0007R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0001\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/taptap/sdk/startup/task/TaskNode;",
        "Lcom/taptap/sdk/startup/grpah/Node;",
        "task",
        "Lcom/taptap/sdk/startup/task/Task;",
        "getTask",
        "()Lcom/taptap/sdk/startup/task/Task;",
        "Real",
        "Virtual",
        "Lcom/taptap/sdk/startup/task/TaskNode$Real;",
        "Lcom/taptap/sdk/startup/task/TaskNode$Virtual;",
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


# virtual methods
.method public abstract getTask()Lcom/taptap/sdk/startup/task/Task;
.end method
