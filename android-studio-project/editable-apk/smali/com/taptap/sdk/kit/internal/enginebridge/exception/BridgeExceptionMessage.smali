.class public final enum Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;
.super Ljava/lang/Enum;
.source "EngineBridgeException.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;",
        "",
        "message",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "getExtraMessage",
        "extraMessage",
        "COMMAND_PARSE_ERROR",
        "COMMAND_SERVICE_ERROR",
        "COMMAND_METHOD_ERROR",
        "COMMAND_ARGS_ERROR",
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
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

.field public static final enum COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

.field public static final enum COMMAND_METHOD_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

.field public static final enum COMMAND_PARSE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

.field public static final enum COMMAND_SERVICE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    sget-object v1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_PARSE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_SERVICE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_METHOD_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const-string v1, "COMMAND_PARSE_ERROR"

    const/4 v2, 0x0

    const-string v3, "json\u89e3\u6790\u9519\u8bef\uff0c\u68c0\u67e5Command\u662f\u5426\u7b26\u5408\u89c4\u5219"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_PARSE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    .line 10
    new-instance v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const-string v1, "COMMAND_SERVICE_ERROR"

    const/4 v2, 0x1

    const-string v3, "Service\u5f02\u5e38\uff0c\u68c0\u67e5Service\u662f\u5426\u6ce8\u518c\u6216\u8005\u7b26\u5408\u89c4\u5219"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_SERVICE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    .line 11
    new-instance v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const-string v1, "COMMAND_METHOD_ERROR"

    const/4 v2, 0x2

    const-string v3, "Method\u5f02\u5e38\uff0c\u68c0\u67e5Method\u547d\u540d\u662f\u5426\u6b63\u786e"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_METHOD_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    .line 12
    new-instance v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const-string v1, "COMMAND_ARGS_ERROR"

    const/4 v2, 0x3

    const-string v3, "\u53c2\u6570\u5339\u914d\u9519\u8bef\u6216\u8005\u6267\u884c\u65b9\u6cd5\u9519\u8bef\uff0c\u68c0\u67e5\u53c2\u6570\u4ee5\u53ca\u6865\u63a5\u65b9\u6cd5\u6267\u884c\u662f\u5426\u6b63\u786e"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-static {}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->$values()[Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->$VALUES:[Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getExtraMessage$default(Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getExtraMessage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;
    .locals 1

    const-class v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;
    .locals 1

    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->$VALUES:[Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    return-object v0
.end method


# virtual methods
.method public final getExtraMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->message:Ljava/lang/String;

    return-object v0
.end method
