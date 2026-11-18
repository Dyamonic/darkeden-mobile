.class public final Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign;
.super Ljava/lang/Object;
.source "TapHttpSign.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Companion;,
        Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;,
        Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$None;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00032\u00020\u0001:\u0003\u0003\u0004\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign;",
        "",
        "()V",
        "Companion",
        "Default",
        "None",
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


# static fields
.field public static final Companion:Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Companion;

.field private static final QUERY_CLIENT_ID:Ljava/lang/String; = "client_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign;->Companion:Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
