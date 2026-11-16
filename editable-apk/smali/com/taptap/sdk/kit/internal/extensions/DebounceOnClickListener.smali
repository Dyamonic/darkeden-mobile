.class public final Lcom/taptap/sdk/kit/internal/extensions/DebounceOnClickListener;
.super Ljava/lang/Object;
.source "UIExt.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/extensions/DebounceOnClickListener;",
        "Landroid/view/View$OnClickListener;",
        "interval",
        "",
        "listenerBlock",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "(JLkotlin/jvm/functions/Function1;)V",
        "lastClickTime",
        "onClick",
        "v",
        "tap-kit_release"
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
.field private final interval:J

.field private lastClickTime:J

.field private final listenerBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listenerBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/taptap/sdk/kit/internal/extensions/DebounceOnClickListener;->interval:J

    .line 38
    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/extensions/DebounceOnClickListener;->listenerBlock:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcom/taptap/sdk/kit/internal/extensions/DebounceOnClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/taptap/sdk/kit/internal/extensions/DebounceOnClickListener;->interval:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 45
    iput-wide v0, p0, Lcom/taptap/sdk/kit/internal/extensions/DebounceOnClickListener;->lastClickTime:J

    .line 46
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/extensions/DebounceOnClickListener;->listenerBlock:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
