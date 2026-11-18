.class final Lcom/taptap/sdk/initializer/TapTapSdkInitializer$_initialize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TapTapSdkInitializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->_initialize(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/taptap/sdk/initializer/TapTapSdkInitializer;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/initializer/TapTapSdkInitializer;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$_initialize$1;->this$0:Lcom/taptap/sdk/initializer/TapTapSdkInitializer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$_initialize$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$_initialize$1;->this$0:Lcom/taptap/sdk/initializer/TapTapSdkInitializer;

    invoke-static {v0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->access$getDbService(Lcom/taptap/sdk/initializer/TapTapSdkInitializer;)Lcom/taptap/sdk/core/DBService;

    move-result-object v0

    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isAutoEventEnable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/core/DBService;->setAutoEventEnable(Z)V

    .line 166
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$_initialize$1;->this$0:Lcom/taptap/sdk/initializer/TapTapSdkInitializer;

    invoke-static {v0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->access$getOpenLogService(Lcom/taptap/sdk/initializer/TapTapSdkInitializer;)Lcom/taptap/sdk/common/services/OpenLogService;

    move-result-object v0

    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isHeartbeatEnable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/common/services/OpenLogService;->enableHeartbeat(Z)V

    return-void
.end method
