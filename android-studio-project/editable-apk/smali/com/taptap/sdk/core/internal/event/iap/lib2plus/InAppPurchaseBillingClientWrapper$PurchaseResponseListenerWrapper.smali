.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapper.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PurchaseResponseListenerWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00020\u0001B#\u0012\u001c\u0008\u0002\u0010\u0002\u001a\u0016\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J0\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000fH\u0096\u0002\u00a2\u0006\u0002\u0010\u0010R%\u0010\u0002\u001a\u0016\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;",
        "Ljava/lang/reflect/InvocationHandler;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "",
        "(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Lkotlin/jvm/functions/Function1;)V",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "invoke",
        "",
        "proxy",
        "method",
        "Ljava/lang/reflect/Method;",
        "args",
        "",
        "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 268
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;-><init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;->callback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "method"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PurchaseResponseListenerWrapper, method.name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppPurchaseBillingClientWrapper"

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onQueryPurchasesResponse"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 273
    aget-object p1, p3, p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 274
    instance-of p3, p1, Ljava/util/List;

    if-eqz p3, :cond_1

    .line 275
    iget-object p3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz p3, :cond_2

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object p2
.end method
