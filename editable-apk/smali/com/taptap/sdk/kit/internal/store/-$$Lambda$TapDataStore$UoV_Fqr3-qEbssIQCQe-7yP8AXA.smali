.class public final synthetic Lcom/taptap/sdk/kit/internal/store/-$$Lambda$TapDataStore$UoV_Fqr3-qEbssIQCQe-7yP8AXA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/store/-$$Lambda$TapDataStore$UoV_Fqr3-qEbssIQCQe-7yP8AXA;->f$0:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/store/-$$Lambda$TapDataStore$UoV_Fqr3-qEbssIQCQe-7yP8AXA;->f$0:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p2}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->lambda$UoV_Fqr3-qEbssIQCQe-7yP8AXA(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
