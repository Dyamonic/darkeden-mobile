.class public final Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;
.super Ljava/lang/Object;
.source "ServiceManagerComponent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\n\u0008\u0000\u0010\u0005\u0018\u0001*\u00020\u0006H\u0086\u0008J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\u0004\"\n\u0008\u0000\u0010\u0005\u0018\u0001*\u00020\u0006H\u0086\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;",
        "",
        "()V",
        "inject",
        "Lkotlin/Lazy;",
        "T",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "injectOrNull",
        "tap-servicemanager_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    invoke-direct {v0}, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;-><init>()V

    sput-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic inject()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">()",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 11
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent$inject$1;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent$inject$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic injectOrNull()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">()",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent$injectOrNull$1;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent$injectOrNull$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method
