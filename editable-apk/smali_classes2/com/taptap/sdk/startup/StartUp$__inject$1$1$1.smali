.class final Lcom/taptap/sdk/startup/StartUp$__inject$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StartUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/startup/StartUp$__inject$1$1;->invoke(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/content/Context;",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "context",
        "Landroid/content/Context;",
        "options",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "invoke"
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
.field final synthetic $this_reduce:Lcom/taptap/sdk/startup/task/Task;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/startup/task/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$__inject$1$1$1;->$this_reduce:Lcom/taptap/sdk/startup/task/Task;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/startup/StartUp$__inject$1$1$1;->invoke(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp$__inject$1$1$1;->$this_reduce:Lcom/taptap/sdk/startup/task/Task;

    invoke-virtual {v0}, Lcom/taptap/sdk/startup/task/Task;->getClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/startup/task/InitializeTask;

    invoke-interface {v0, p1, p2}, Lcom/taptap/sdk/startup/task/InitializeTask;->execute(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    return-void
.end method
