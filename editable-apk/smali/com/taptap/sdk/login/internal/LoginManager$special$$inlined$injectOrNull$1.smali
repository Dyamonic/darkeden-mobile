.class public final Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ServiceManagerComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/LoginManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/taptap/sdk/compliance/api/ComplianceService;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceManagerComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent$injectOrNull$1\n*L\n1#1,20:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "invoke",
        "()Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "com/taptap/sdk/servicemanager/utils/ServiceManagerComponent$injectOrNull$1"
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
.field public static final INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;-><init>()V

    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/taptap/sdk/servicemanager/ServiceManager$Service;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/compliance/api/ComplianceService;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/taptap/sdk/servicemanager/ServiceManager;->Companion:Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;

    const-class v1, Lcom/taptap/sdk/compliance/api/ComplianceService;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;->getService(Ljava/lang/Class;)Lcom/taptap/sdk/servicemanager/ServiceManager$Service;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;->invoke()Lcom/taptap/sdk/servicemanager/ServiceManager$Service;

    move-result-object v0

    return-object v0
.end method
