.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$BillingClientStateListenerWrapper;,
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchasesUpdatedListenerWrapper;,
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;,
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseHistoryResponseListenerWrapper;,
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$SkuDetailsResponseListenerWrapper;,
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;,
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppPurchaseBillingClientWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppPurchaseBillingClientWrapper.kt\ncom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,648:1\n1549#2:649\n1620#2,3:650\n*S KotlinDebug\n*F\n+ 1 InAppPurchaseBillingClientWrapper.kt\ncom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper\n*L\n166#1:649\n166#1:650,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 :2\u00020\u0001:\u00079:;<=>?B\u00b9\u0002\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u0012\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u000c\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u0012\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u0012\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0016\u001a\u00020\u0012\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0012\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u001f\u001a\u00020 \u0012\u0008\u0010!\u001a\u0004\u0018\u00010\"\u0012\u0008\u0010#\u001a\u0004\u0018\u00010$\u00a2\u0006\u0002\u0010%J(\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020(2\u000e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010(0-2\u0006\u0010.\u001a\u00020/H\u0002J\u0016\u00100\u001a\u00020*2\u0006\u0010+\u001a\u00020(2\u0006\u00101\u001a\u00020/J.\u00102\u001a\u00020*2\u0006\u0010+\u001a\u00020(2\u001c\u0008\u0002\u00103\u001a\u0016\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010-\u0012\u0004\u0012\u00020*\u0018\u000104H\u0002J\u0016\u00105\u001a\u00020*2\u0006\u0010+\u001a\u00020(2\u0006\u00106\u001a\u00020/J\u0018\u00107\u001a\u00020*2\u0006\u0010+\u001a\u00020(2\u0006\u0010.\u001a\u00020/H\u0002J\u0008\u00108\u001a\u00020*H\u0002R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010(0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;",
        "",
        "context",
        "Landroid/content/Context;",
        "billingClient",
        "billingClientClazz",
        "Ljava/lang/Class;",
        "purchaseResultClazz",
        "purchaseClazz",
        "purchaseResponseListenerClazz",
        "skuDetailsClazz",
        "productDetailsClazz",
        "productDetailsOneTimePurchaseOfferDetailsClazz",
        "purchaseHistoryRecordClazz",
        "skuDetailsResponseListenerClazz",
        "productDetailsResponseListenerClazz",
        "purchaseHistoryResponseListenerClazz",
        "queryPurchasesMethod",
        "Ljava/lang/reflect/Method;",
        "queryPurchasesStringAsyncMethod",
        "queryPurchasesParamsAsyncMethod",
        "getPurchaseListMethod",
        "getOriginalJsonMethod",
        "getOriginalJsonSkuMethod",
        "productDetailMethodsWrapper",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;",
        "getOriginalJsonPurchaseHistoryMethod",
        "querySkuDetailsAsyncMethod",
        "queryProductDetailsAsyncMethod",
        "queryPurchaseHistoryStringAsyncMethod",
        "queryPurchaseHistoryParamsAsyncMethod",
        "inAppPurchaseQueryDetailsWrapper",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;",
        "queryPurchaseParamsWrapper",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;",
        "queryPurchaseHistoryParamsWrapper",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;",
        "(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;)V",
        "historyPurchaseSet",
        "",
        "",
        "queryDetailsAsync",
        "",
        "skuType",
        "skuIDs",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
        "queryPurchase",
        "querySkuRunnable",
        "queryPurchaseAsync",
        "callback",
        "Lkotlin/Function1;",
        "queryPurchaseHistory",
        "queryPurchaseHistoryRunnable",
        "queryPurchaseHistoryAsync",
        "startConnection",
        "BillingClientStateListenerWrapper",
        "Companion",
        "ProductDetailsResponseListenerWrapper",
        "PurchaseHistoryResponseListenerWrapper",
        "PurchaseResponseListenerWrapper",
        "PurchasesUpdatedListenerWrapper",
        "SkuDetailsResponseListenerWrapper",
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


# static fields
.field public static final Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "InAppPurchaseBillingClientWrapper"

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static instance:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

.field private static final isServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final purchaseDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final skuDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final billingClient:Ljava/lang/Object;

.field private final billingClientClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final getOriginalJsonMethod:Ljava/lang/reflect/Method;

.field private final getOriginalJsonPurchaseHistoryMethod:Ljava/lang/reflect/Method;

.field private final getOriginalJsonSkuMethod:Ljava/lang/reflect/Method;

.field private final getPurchaseListMethod:Ljava/lang/reflect/Method;

.field private final historyPurchaseSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppPurchaseQueryDetailsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

.field private final productDetailMethodsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

.field private final productDetailsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final productDetailsOneTimePurchaseOfferDetailsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final productDetailsResponseListenerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final purchaseClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final purchaseHistoryRecordClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final purchaseHistoryResponseListenerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final purchaseResponseListenerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final purchaseResultClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final queryProductDetailsAsyncMethod:Ljava/lang/reflect/Method;

.field private final queryPurchaseHistoryParamsAsyncMethod:Ljava/lang/reflect/Method;

.field private final queryPurchaseHistoryParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;

.field private final queryPurchaseHistoryStringAsyncMethod:Ljava/lang/reflect/Method;

.field private final queryPurchaseParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;

.field private final queryPurchasesMethod:Ljava/lang/reflect/Method;

.field private final queryPurchasesParamsAsyncMethod:Ljava/lang/reflect/Method;

.field private final queryPurchasesStringAsyncMethod:Ljava/lang/reflect/Method;

.field private final querySkuDetailsAsyncMethod:Ljava/lang/reflect/Method;

.field private final skuDetailsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final skuDetailsResponseListenerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    .line 437
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 439
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->isServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 442
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseDetailsMap:Ljava/util/Map;

    .line 443
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->skuDetailsMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;",
            "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;",
            "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 56
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->context:Landroid/content/Context;

    move-object v1, p2

    .line 57
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    move-object v1, p3

    .line 58
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    move-object v1, p4

    .line 59
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseResultClazz:Ljava/lang/Class;

    move-object v1, p5

    .line 60
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseClazz:Ljava/lang/Class;

    move-object v1, p6

    .line 61
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseResponseListenerClazz:Ljava/lang/Class;

    move-object v1, p7

    .line 62
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->skuDetailsClazz:Ljava/lang/Class;

    move-object v1, p8

    .line 63
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailsClazz:Ljava/lang/Class;

    move-object v1, p9

    .line 64
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailsOneTimePurchaseOfferDetailsClazz:Ljava/lang/Class;

    move-object v1, p10

    .line 65
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseHistoryRecordClazz:Ljava/lang/Class;

    move-object v1, p11

    .line 66
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->skuDetailsResponseListenerClazz:Ljava/lang/Class;

    move-object v1, p12

    .line 67
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailsResponseListenerClazz:Ljava/lang/Class;

    move-object v1, p13

    .line 68
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseHistoryResponseListenerClazz:Ljava/lang/Class;

    move-object/from16 v1, p14

    .line 69
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchasesMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p15

    .line 70
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchasesStringAsyncMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p16

    .line 71
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchasesParamsAsyncMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p17

    .line 72
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getPurchaseListMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p18

    .line 73
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getOriginalJsonMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p19

    .line 74
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getOriginalJsonSkuMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p20

    .line 75
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailMethodsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-object/from16 v1, p21

    .line 76
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getOriginalJsonPurchaseHistoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p22

    .line 77
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->querySkuDetailsAsyncMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p23

    .line 78
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryProductDetailsAsyncMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p24

    .line 79
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryStringAsyncMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p25

    .line 80
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryParamsAsyncMethod:Ljava/lang/reflect/Method;

    move-object/from16 v1, p26

    .line 81
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->inAppPurchaseQueryDetailsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    move-object/from16 v1, p27

    .line 82
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;

    move-object/from16 v1, p28

    .line 83
    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;

    .line 85
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    check-cast v1, Ljava/util/Set;

    iput-object v1, v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->historyPurchaseSet:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p28}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getGetOriginalJsonMethod$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/reflect/Method;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getOriginalJsonMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static final synthetic access$getGetOriginalJsonPurchaseHistoryMethod$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/reflect/Method;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getOriginalJsonPurchaseHistoryMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static final synthetic access$getGetOriginalJsonSkuMethod$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/reflect/Method;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getOriginalJsonSkuMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static final synthetic access$getHistoryPurchaseSet$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/util/Set;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->historyPurchaseSet:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getInitialized$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 54
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;
    .locals 1

    .line 54
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->instance:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    return-object v0
.end method

.method public static final synthetic access$getProductDetailMethodsWrapper$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailMethodsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    return-object p0
.end method

.method public static final synthetic access$getProductDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailsClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static final synthetic access$getProductDetailsOneTimePurchaseOfferDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailsOneTimePurchaseOfferDetailsClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static final synthetic access$getPurchaseClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static final synthetic access$getPurchaseDetailsMap$cp()Ljava/util/Map;
    .locals 1

    .line 54
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseDetailsMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getPurchaseHistoryRecordClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseHistoryRecordClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static final synthetic access$getSkuDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->skuDetailsClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static final synthetic access$getSkuDetailsMap$cp()Ljava/util/Map;
    .locals 1

    .line 54
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->skuDetailsMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$isServiceConnected$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 54
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->isServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$queryDetailsAsync(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryDetailsAsync(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->instance:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    return-void
.end method

.method public static final synthetic access$startConnection(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->startConnection()V

    return-void
.end method

.method public static final declared-synchronized getOrCreateInstance(Landroid/content/Context;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v1, p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->getOrCreateInstance(Landroid/content/Context;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$UdbSPelC49jYSdWR7l1fi7Dqyx8(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistory$lambda$0(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final queryDetailsAsync(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->inAppPurchaseQueryDetailsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->getSkuDetailParamsWrapper()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->skuDetailsResponseListenerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :cond_0
    new-array v0, v4, [Ljava/lang/Class;

    .line 145
    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->skuDetailsResponseListenerClazz:Ljava/lang/Class;

    aput-object v5, v0, v3

    .line 146
    new-instance v5, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$SkuDetailsResponseListenerWrapper;

    invoke-direct {v5, p0, p3}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$SkuDetailsResponseListenerWrapper;-><init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V

    check-cast v5, Ljava/lang/reflect/InvocationHandler;

    .line 143
    invoke-static {v2, v0, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p3

    .line 150
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->inAppPurchaseQueryDetailsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->getSkuDetailsParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    .line 153
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->querySkuDetailsAsyncMethod:Ljava/lang/reflect/Method;

    .line 154
    iget-object v2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p3, v1, v4

    .line 151
    invoke-static {p2, v0, v2, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->inAppPurchaseQueryDetailsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->getProductDetailParamsWrapper()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailsResponseListenerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :cond_2
    new-array v0, v4, [Ljava/lang/Class;

    .line 162
    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->productDetailsResponseListenerClazz:Ljava/lang/Class;

    aput-object v5, v0, v3

    .line 163
    new-instance v5, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;

    invoke-direct {v5, p0, p3}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;-><init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V

    check-cast v5, Ljava/lang/reflect/InvocationHandler;

    .line 160
    invoke-static {v2, v0, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p3

    .line 166
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 650
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 651
    check-cast v2, Ljava/lang/String;

    .line 166
    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 651
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 652
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 649
    check-cast v0, Ljava/lang/Iterable;

    .line 166
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 168
    iget-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->inAppPurchaseQueryDetailsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->getProductDetailsParams(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 170
    iget-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    .line 171
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryProductDetailsAsyncMethod:Ljava/lang/reflect/Method;

    .line 172
    iget-object v2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p3, v1, v4

    .line 169
    invoke-static {p2, v0, v2, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private final queryPurchaseAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPurchaseAsync, skuType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppPurchaseBillingClientWrapper"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseResponseListenerClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 187
    iget-object v3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseResponseListenerClazz:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 188
    new-instance v3, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;

    invoke-direct {v3, p0, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseResponseListenerWrapper;-><init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Ljava/lang/reflect/InvocationHandler;

    .line 185
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 191
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;->getQueryPurchasesParams(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 194
    iget-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    .line 195
    iget-object v3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchasesParamsAsyncMethod:Ljava/lang/reflect/Method;

    .line 196
    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p2, v2, v1

    .line 193
    invoke-static {p1, v3, v5, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchasesStringAsyncMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v1

    .line 201
    invoke-static {v0, v3, v5, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method static synthetic queryPurchaseAsync$default(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 179
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final queryPurchaseHistory$lambda$0(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$queryPurchaseHistoryRunnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->historyPurchaseSet:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/List;

    const-string v1, "inapp"

    .line 89
    invoke-direct {p0, v1, v0, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryDetailsAsync(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final queryPurchaseHistoryAsync(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseHistoryResponseListenerClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 212
    iget-object v3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseHistoryResponseListenerClazz:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 213
    new-instance v3, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseHistoryResponseListenerWrapper;

    invoke-direct {v3, p0, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchaseHistoryResponseListenerWrapper;-><init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V

    check-cast v3, Ljava/lang/reflect/InvocationHandler;

    .line 210
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 217
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;->getQueryPurchaseHistoryParams(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    const-string v3, "InAppPurchaseBillingClientWrapper"

    if-eqz v0, :cond_1

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryPurchaseHistoryAsync has purchaseHistoryParams, skuType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    .line 222
    iget-object v3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryParamsAsyncMethod:Ljava/lang/reflect/Method;

    .line 223
    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p2, v2, v1

    .line 220
    invoke-static {p1, v3, v5, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPurchaseHistoryAsync no purchaseHistoryParams, skuType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    .line 231
    iget-object v3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryStringAsyncMethod:Ljava/lang/reflect/Method;

    .line 232
    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v1

    .line 229
    invoke-static {v0, v3, v5, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private final startConnection()V
    .locals 6

    const-string v0, "com.android.billingclient.api.BillingClientStateListener"

    .line 241
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "startConnection"

    invoke-static {v1, v5, v3}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v0, v5, v4

    .line 247
    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$BillingClientStateListenerWrapper;

    invoke-direct {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$BillingClientStateListenerWrapper;-><init>()V

    check-cast v0, Ljava/lang/reflect/InvocationHandler;

    .line 244
    invoke-static {v3, v5, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    iget-object v3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v3, v1, v5, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final queryPurchase(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    const-string v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "querySkuRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPurchase, skuType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppPurchaseBillingClientWrapper"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;-><init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 125
    iget-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchasesMethod:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getPurchaseListMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    iget-object v1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "inapp"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2, v1, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->purchaseResultClazz:Ljava/lang/Class;

    iget-object v1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->getPurchaseListMethod:Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2, v1, p1, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 136
    :cond_2
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 126
    :cond_3
    :goto_1
    new-instance p2, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$1;

    invoke-direct {p2, v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :goto_2
    return-void
.end method

.method public final queryPurchaseHistory(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryPurchaseHistoryRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPurchaseHistory, skuType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppPurchaseBillingClientWrapper"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/-$$Lambda$InAppPurchaseBillingClientWrapper$UdbSPelC49jYSdWR7l1fi7Dqyx8;

    invoke-direct {v0, p0, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/-$$Lambda$InAppPurchaseBillingClientWrapper$UdbSPelC49jYSdWR7l1fi7Dqyx8;-><init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryAsync(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
