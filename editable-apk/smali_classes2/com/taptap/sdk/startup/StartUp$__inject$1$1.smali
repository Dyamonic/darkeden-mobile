.class final Lcom/taptap/sdk/startup/StartUp$__inject$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StartUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/startup/StartUp;->__inject()V
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
        "Lcom/taptap/sdk/startup/task/Task;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/taptap/sdk/startup/task/Task;",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/startup/StartUp$__inject$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/startup/StartUp$__inject$1$1;

    invoke-direct {v0}, Lcom/taptap/sdk/startup/StartUp$__inject$1$1;-><init>()V

    sput-object v0, Lcom/taptap/sdk/startup/StartUp$__inject$1$1;->INSTANCE:Lcom/taptap/sdk/startup/StartUp$__inject$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/Task;
    .locals 11

    const-string v0, "$this$reduce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/taptap/sdk/startup/StartUp$__inject$1$1$1;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/startup/StartUp$__inject$1$1$1;-><init>(Lcom/taptap/sdk/startup/task/Task;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x5f

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/taptap/sdk/startup/task/Task;->copy$default(Lcom/taptap/sdk/startup/task/Task;Ljava/lang/String;Ljava/lang/Class;ZILjava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lcom/taptap/sdk/startup/task/Task;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/startup/StartUp$__inject$1$1;->invoke(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object p1

    return-object p1
.end method
