.class final Lcom/taptap/sdk/db/event/TapEventQueue$store$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TapEventQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/db/event/TapEventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/taptap/sdk/kit/internal/store/TapDataStore<",
        "Lcom/taptap/sdk/db/event/model/TapEventBean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/taptap/sdk/kit/internal/store/TapDataStore;",
        "Lcom/taptap/sdk/db/event/model/TapEventBean;",
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
.field public static final INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue$store$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/db/event/TapEventQueue$store$2;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/TapEventQueue$store$2;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/TapEventQueue$store$2;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue$store$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/taptap/sdk/kit/internal/store/TapDataStore;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/kit/internal/store/TapDataStore<",
            "Lcom/taptap/sdk/db/event/model/TapEventBean;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v6, Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    .line 64
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TapEvent_persistedData"

    const/16 v3, 0x3e8

    const-wide/32 v4, 0xa00000

    move-object v0, v6

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/TapEventQueue$store$2;->invoke()Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    move-result-object v0

    return-object v0
.end method
