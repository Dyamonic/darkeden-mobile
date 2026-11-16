.class final Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$2;
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
        "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;",
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
.field public static final INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$2;

    invoke-direct {v0}, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$2;-><init>()V

    sput-object v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$2;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$2;

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

    .line 124
    check-cast p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryADID$2;->invoke(Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;->getAndroidAdvertiserIdValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 128
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    .line 129
    sget-object v2, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-static {v2, v1}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$isStringMadeOfZeroAndDash(Lcom/taptap/sdk/gid/internal/TapTapGidInner;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "G:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryGAID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cost: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$getStartTime$p()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TapTapGid"

    .line 133
    invoke-static {v1, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object p1, Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;

    const-string v1, "gaid"

    .line 140
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "query_gaid"

    .line 137
    invoke-virtual {p1, v2, v1}, Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    sget-object p1, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-static {p1, v0}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$startQueryThemisData(Lcom/taptap/sdk/gid/internal/TapTapGidInner;Ljava/lang/String;)V

    return-void
.end method
