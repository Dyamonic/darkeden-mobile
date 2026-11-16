.class public final Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$Companion;
.super Ljava/lang/Object;
.source "CloudLoginMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;",
        "tap-login_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$$serializer;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
