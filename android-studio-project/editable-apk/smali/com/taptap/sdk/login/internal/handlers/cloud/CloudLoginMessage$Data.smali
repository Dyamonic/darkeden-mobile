.class public final Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;
.super Ljava/lang/Object;
.source "CloudLoginMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$Companion;,
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 E2\u00020\u0001:\u0002DEB\u0095\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0001\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013B_\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0014J\t\u0010-\u001a\u00020\u0005H\u00c6\u0003J\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010%J\t\u00100\u001a\u00020\u0005H\u00c6\u0003J\t\u00101\u001a\u00020\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u000bH\u00c6\u0003J\t\u00103\u001a\u00020\u0005H\u00c6\u0003J\t\u00104\u001a\u00020\u0005H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003Jz\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u00108J\u0013\u00109\u001a\u00020\u000b2\u0008\u0010:\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010;\u001a\u00020\u0003H\u00d6\u0001J\t\u0010<\u001a\u00020\u0005H\u00d6\u0001J!\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u00002\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u00c7\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u0018R\u001c\u0010\u0008\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u0018R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u0016\u001a\u0004\u0008\n\u0010\u001eR\u001c\u0010\u0010\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0016\u001a\u0004\u0008 \u0010\u0018R\u001c\u0010\u000e\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008!\u0010\u0016\u001a\u0004\u0008\"\u0010\u0018R$\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010&\u0012\u0004\u0008#\u0010\u0016\u001a\u0004\u0008$\u0010%R\u001c\u0010\u000c\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\'\u0010\u0016\u001a\u0004\u0008(\u0010\u0018R\u001c\u0010\r\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008)\u0010\u0016\u001a\u0004\u0008*\u0010\u0018R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008+\u0010\u0016\u001a\u0004\u0008,\u0010\u0018\u00a8\u0006F"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;",
        "",
        "seen1",
        "",
        "clientId",
        "",
        "scopes",
        "",
        "id",
        "sdkVersion",
        "isPortrait",
        "",
        "sdkInfo",
        "sdkTrackInfo",
        "responseType",
        "codeChallenge",
        "method",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getClientId$annotations",
        "()V",
        "getClientId",
        "()Ljava/lang/String;",
        "getCodeChallenge$annotations",
        "getCodeChallenge",
        "getId$annotations",
        "getId",
        "isPortrait$annotations",
        "()Z",
        "getMethod$annotations",
        "getMethod",
        "getResponseType$annotations",
        "getResponseType",
        "getScopes$annotations",
        "getScopes",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getSdkInfo$annotations",
        "getSdkInfo",
        "getSdkTrackInfo$annotations",
        "getSdkTrackInfo",
        "getSdkVersion$annotations",
        "getSdkVersion",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$Companion;


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final codeChallenge:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final isPortrait:Z

.field private final method:Ljava/lang/String;

.field private final responseType:Ljava/lang/String;

.field private final scopes:[Ljava/lang/String;

.field private final sdkInfo:Ljava/lang/String;

.field private final sdkTrackInfo:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "client_id"
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "scopes"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "state"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "sdk_version"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "portrait"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "sdk_info"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "sdk_track_info"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "response_type"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "code_challenge"
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "code_challenge_method"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit16 p12, p1, 0x2ff

    const/16 v0, 0x2ff

    if-eq v0, p12, :cond_0

    .line 12
    sget-object p12, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$$serializer;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$$serializer;

    invoke-virtual {p12}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p12

    invoke-static {p1, v0, p12}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    iput-object p4, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    iput-object p5, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    iput-object p7, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    iput-object p8, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    iput-object p9, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p10, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    :goto_0
    iput-object p11, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInfo"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTrackInfo"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    .line 18
    iput-boolean p5, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    .line 19
    iput-object p6, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    .line 21
    iput-object p8, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    .line 22
    iput-object p9, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    .line 23
    iput-object p10, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    .line 13
    invoke-direct/range {v1 .. v11}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->copy(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getClientId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "client_id"
    .end annotation

    return-void
.end method

.method public static synthetic getCodeChallenge$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "code_challenge"
    .end annotation

    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "state"
    .end annotation

    return-void
.end method

.method public static synthetic getMethod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "code_challenge_method"
    .end annotation

    return-void
.end method

.method public static synthetic getResponseType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "response_type"
    .end annotation

    return-void
.end method

.method public static synthetic getScopes$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "scopes"
    .end annotation

    return-void
.end method

.method public static synthetic getSdkInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "sdk_info"
    .end annotation

    return-void
.end method

.method public static synthetic getSdkTrackInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "sdk_track_info"
    .end annotation

    return-void
.end method

.method public static synthetic getSdkVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "sdk_version"
    .end annotation

    return-void
.end method

.method public static synthetic isPortrait$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "portrait"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    const-class v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v2, v3}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    const/4 v2, 0x4

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    const/16 v0, 0x9

    iget-object p0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;
    .locals 12

    const-string v0, "clientId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInfo"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTrackInfo"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseType"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;

    move-object v1, v0

    move/from16 v6, p5

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    iget-boolean v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    iget-object p1, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodeChallenge()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    return-object v0
.end method

.method public final getScopes()[Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkInfo()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkTrackInfo()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isPortrait()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data(clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->scopes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPortrait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->isPortrait:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkTrackInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->sdkTrackInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->responseType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codeChallenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->codeChallenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
