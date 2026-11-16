.class public final Lcom/taptap/sdk/startup/StartUp$Builder;
.super Ljava/lang/Object;
.source "StartUp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/startup/StartUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR \u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/taptap/sdk/startup/StartUp$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext$tap_initializer_release",
        "()Landroid/content/Context;",
        "options",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "getOptions$tap_initializer_release",
        "()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "setOptions$tap_initializer_release",
        "(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V",
        "tasks",
        "",
        "Lcom/taptap/sdk/startup/task/Task;",
        "getTasks$tap_initializer_release",
        "()Ljava/util/List;",
        "setTasks$tap_initializer_release",
        "(Ljava/util/List;)V",
        "build",
        "Lcom/taptap/sdk/startup/StartUp;",
        "setOptions",
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
.field private final context:Landroid/content/Context;

.field private options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$Builder;->context:Landroid/content/Context;

    .line 201
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$Builder;->tasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/taptap/sdk/startup/StartUp;
    .locals 2

    .line 219
    new-instance v0, Lcom/taptap/sdk/startup/StartUp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taptap/sdk/startup/StartUp;-><init>(Lcom/taptap/sdk/startup/StartUp$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getContext$tap_initializer_release()Landroid/content/Context;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getOptions$tap_initializer_release()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp$Builder;->options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    return-object v0
.end method

.method public final getTasks$tap_initializer_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp$Builder;->tasks:Ljava/util/List;

    return-object v0
.end method

.method public final setOptions(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lcom/taptap/sdk/startup/StartUp$Builder;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/startup/StartUp$Builder;

    .line 212
    iput-object p1, v0, Lcom/taptap/sdk/startup/StartUp$Builder;->options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    return-object v0
.end method

.method public final setOptions$tap_initializer_release(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$Builder;->options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    return-void
.end method

.method public final setTasks$tap_initializer_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$Builder;->tasks:Ljava/util/List;

    return-void
.end method
