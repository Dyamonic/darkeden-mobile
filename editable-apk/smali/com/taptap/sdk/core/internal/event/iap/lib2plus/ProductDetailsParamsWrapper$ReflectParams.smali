.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;
.super Ljava/lang/Object;
.source "ProductDetailsParamsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectParams"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B=\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bR\u0014\u0010\n\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0007\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;",
        "",
        "productDetailsParamsClazz",
        "Ljava/lang/Class;",
        "builderClazz",
        "newBuilderMethod",
        "Ljava/lang/reflect/Method;",
        "setProductListMethod",
        "productItemWrapper",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;",
        "buildMethod",
        "(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;Ljava/lang/reflect/Method;)V",
        "getBuildMethod$tap_db_release",
        "()Ljava/lang/reflect/Method;",
        "getBuilderClazz$tap_db_release",
        "()Ljava/lang/Class;",
        "getNewBuilderMethod$tap_db_release",
        "getProductDetailsParamsClazz$tap_db_release",
        "getProductItemWrapper$tap_db_release",
        "()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;",
        "getSetProductListMethod$tap_db_release",
        "tap-db_release"
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
.field private final buildMethod:Ljava/lang/reflect/Method;

.field private final builderClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final newBuilderMethod:Ljava/lang/reflect/Method;

.field private final productDetailsParamsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final productItemWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;

.field private final setProductListMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    const-string v0, "productDetailsParamsClazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderClazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newBuilderMethod"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setProductListMethod"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productItemWrapper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildMethod"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->productDetailsParamsClazz:Ljava/lang/Class;

    .line 91
    iput-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->builderClazz:Ljava/lang/Class;

    .line 92
    iput-object p3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->newBuilderMethod:Ljava/lang/reflect/Method;

    .line 93
    iput-object p4, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->setProductListMethod:Ljava/lang/reflect/Method;

    .line 94
    iput-object p5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->productItemWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;

    .line 95
    iput-object p6, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->buildMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final getBuildMethod$tap_db_release()Ljava/lang/reflect/Method;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->buildMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public final getBuilderClazz$tap_db_release()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->builderClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public final getNewBuilderMethod$tap_db_release()Ljava/lang/reflect/Method;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->newBuilderMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public final getProductDetailsParamsClazz$tap_db_release()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->productDetailsParamsClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public final getProductItemWrapper$tap_db_release()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->productItemWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;

    return-object v0
.end method

.method public final getSetProductListMethod$tap_db_release()Ljava/lang/reflect/Method;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->setProductListMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
