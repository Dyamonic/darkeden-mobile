.class final Lcom/taptap/sdk/startup/StartUp$validate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StartUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/startup/StartUp;->validate(Lcom/taptap/sdk/startup/task/TaskNode;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/taptap/sdk/startup/task/Task;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "element",
        "Lcom/taptap/sdk/startup/task/Task;",
        "invoke",
        "(Lcom/taptap/sdk/startup/task/Task;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $taskNode:Lcom/taptap/sdk/startup/task/TaskNode;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/startup/task/TaskNode;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$validate$1;->$taskNode:Lcom/taptap/sdk/startup/task/TaskNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/taptap/sdk/startup/task/Task;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/taptap/sdk/startup/task/Task;->getClazz()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/taptap/sdk/startup/StartUp$validate$1;->$taskNode:Lcom/taptap/sdk/startup/task/TaskNode;

    invoke-interface {v1}, Lcom/taptap/sdk/startup/task/TaskNode;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taptap/sdk/startup/task/Task;->getClazz()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, Lcom/taptap/sdk/startup/task/Task;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/startup/StartUp$validate$1;->invoke(Lcom/taptap/sdk/startup/task/Task;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
