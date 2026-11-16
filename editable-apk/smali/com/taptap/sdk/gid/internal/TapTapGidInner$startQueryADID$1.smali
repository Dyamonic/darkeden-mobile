.class final Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TapTapGidInner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/gid/internal/TapTapGidInner;->startQueryADID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$1;

    invoke-direct {v0}, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$1;-><init>()V

    sput-object v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$1;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 5

    .line 104
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 105
    sget-object v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-static {v0, p1}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$isStringMadeOfZeroAndDash(Lcom/taptap/sdk/gid/internal/TapTapGidInner;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "O:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 111
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryOAID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$getStartTime$p()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapTapGid"

    .line 109
    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;

    const-string v1, "oaid"

    .line 116
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 115
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "query_oaid"

    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    sget-object v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-static {v0, p1}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$startQueryThemisData(Lcom/taptap/sdk/gid/internal/TapTapGidInner;Ljava/lang/String;)V

    return-void
.end method
