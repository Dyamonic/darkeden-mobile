.class final Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1;
.super Ljava/lang/Object;
.source "TapTapMoment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/TapTapMoment$Companion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "emit",
        "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field public static final INSTANCE:Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1;->INSTANCE:Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1;->emit(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p2, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;

    iget v0, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p2, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;->label:I

    sub-int/2addr p2, v1

    iput p2, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;

    invoke-direct {p1, p0, p2}, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;-><init>(Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget v1, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-wide v0, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;->J$0:J

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 76
    invoke-static {}, Lcom/taptap/sdk/moment/TapTapMoment;->access$getLastTime$cp()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/32 v7, 0xea60

    cmp-long p2, v5, v7

    if-gez p2, :cond_5

    .line 77
    invoke-static {}, Lcom/taptap/sdk/moment/TapTapMoment;->access$getLastSuccess$cp()Z

    move-result p1

    xor-int/2addr p1, v2

    if-ne p1, v2, :cond_3

    .line 79
    sget-object p1, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->getTapMomentCallback$tap_moment_release()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    const/16 p2, 0x4e84

    const-string v0, "no data"

    invoke-interface {p1, p2, v0}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto :goto_3

    .line 85
    :cond_3
    sget-object p1, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->getTapMomentCallback$tap_moment_release()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    const/16 p2, 0x4e20

    .line 87
    invoke-static {}, Lcom/taptap/sdk/moment/TapTapMoment;->access$getNoticeInfo$cp()Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;->getUnreadCount()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-interface {p1, p2, v0}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto :goto_3

    .line 92
    :cond_5
    sget-object p2, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    iput-wide v3, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;->J$0:J

    iput v2, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1$1$emit$1;->label:I

    invoke-static {p2, p1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->access$_fetchNotification(Lcom/taptap/sdk/moment/TapTapMoment$Companion;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-wide v0, v3

    .line 93
    :goto_2
    sget-object p1, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/TapTapMoment;->access$setLastTime$cp(J)V

    .line 96
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
