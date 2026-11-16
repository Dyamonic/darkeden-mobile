.class public final Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;",
        "",
        "()V",
        "getAction",
        "",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;-><init>()V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAction(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)Ljava/lang/String;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getRegionType()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.taptap.sdk.action"

    goto :goto_0

    :cond_0
    const-string p1, "com.taptap.global.sdk.action"

    :goto_0
    return-object p1
.end method
