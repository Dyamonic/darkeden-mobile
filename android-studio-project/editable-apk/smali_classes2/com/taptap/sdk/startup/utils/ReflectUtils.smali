.class public final Lcom/taptap/sdk/startup/utils/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/taptap/sdk/startup/utils/ReflectUtils;",
        "",
        "()V",
        "create",
        "",
        "Lcom/taptap/sdk/startup/task/Task;",
        "clazz",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/startup/utils/ReflectUtils;

    invoke-direct {v0}, Lcom/taptap/sdk/startup/utils/ReflectUtils;-><init>()V

    sput-object v0, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    invoke-static {p1}, Lorg/joor/Reflect;->onClass(Ljava/lang/String;)Lorg/joor/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joor/Reflect;->create()Lorg/joor/Reflect;

    move-result-object p1

    const-string v0, "create"

    .line 14
    invoke-virtual {p1, v0}, Lorg/joor/Reflect;->call(Ljava/lang/String;)Lorg/joor/Reflect;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/joor/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "{\n            Reflect.on\u2026         .get()\n        }"

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 17
    :catchall_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
