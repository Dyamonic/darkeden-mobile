.class public final Lcom/taptap/sdk/login/internal/bean/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;,
        Lcom/taptap/sdk/login/internal/bean/LoginResponse$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 42\u00020\u0001:\u000234B_\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fBI\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003JM\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010(\u001a\u00020\u000b2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010*\u001a\u00020\u0003H\u00d6\u0001J\t\u0010+\u001a\u00020\u0005H\u00d6\u0001J!\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u00c7\u0001R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0012\u001a\u0004\u0008\u0019\u0010\u0017R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0012\u001a\u0004\u0008\u001b\u0010\u0017R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0012\u001a\u0004\u0008\u001d\u0010\u0017R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001e\u0010\u0012\u001a\u0004\u0008\u001f\u0010 \u00a8\u00065"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/bean/LoginResponse;",
        "",
        "seen1",
        "",
        "id",
        "",
        "token",
        "Lcom/taptap/sdk/login/AccessToken;",
        "code",
        "errorMessage",
        "cancel",
        "",
        "serverUri",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
        "getCancel$annotations",
        "()V",
        "getCancel",
        "()Z",
        "getCode$annotations",
        "getCode",
        "()Ljava/lang/String;",
        "getErrorMessage$annotations",
        "getErrorMessage",
        "getId$annotations",
        "getId",
        "getServerUri$annotations",
        "getServerUri",
        "getToken$annotations",
        "getToken",
        "()Lcom/taptap/sdk/login/AccessToken;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
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
.field public static final Companion:Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;

.field public static final RES_KEY_CANCEL:Ljava/lang/String; = "com.taptap.sdk.response.cancel"

.field public static final RES_KEY_CODE:Ljava/lang/String; = "com.taptap.sdk.response.code"

.field public static final RES_KEY_ERROR:Ljava/lang/String; = "com.taptap.sdk.response.error"

.field public static final RES_KEY_SERVER_URI:Ljava/lang/String; = "com.taptap.sdk.response.server_uri"

.field public static final RES_KEY_STATE:Ljava/lang/String; = "com.taptap.sdk.response.state"

.field public static final RES_KEY_TOKEN:Ljava/lang/String; = "com.taptap.sdk.response.token"

.field public static final RES_KEY_TOKEN_PARCELABLE:Ljava/lang/String; = "com.taptap.sdk.response.token.parcel"


# instance fields
.field private final cancel:Z

.field private final code:Ljava/lang/String;

.field private final errorMessage:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final serverUri:Ljava/lang/String;

.field private final token:Lcom/taptap/sdk/login/AccessToken;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->Companion:Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;-><init>(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "state"
        .end annotation
    .end param
    .param p3    # Lcom/taptap/sdk/login/AccessToken;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "token"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "code"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "error_message"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "cancel"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "server_uri"
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

    and-int/lit8 p8, p1, 0x0

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 9
    sget-object p8, Lcom/taptap/sdk/login/internal/bean/LoginResponse$$serializer;->INSTANCE:Lcom/taptap/sdk/login/internal/bean/LoginResponse$$serializer;

    invoke-virtual {p8}, Lcom/taptap/sdk/login/internal/bean/LoginResponse$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    if-nez p8, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const/4 p8, 0x0

    if-nez p2, :cond_2

    iput-object p8, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    goto :goto_0

    :cond_2
    iput-object p3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_3

    iput-object p8, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object p4, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_4

    iput-object p8, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iput-object p5, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_5

    iput-boolean v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    goto :goto_3

    :cond_5
    iput-boolean p6, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    :goto_3
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_6

    iput-object p8, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iput-object p7, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    :goto_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    .line 13
    iput-object p3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    .line 15
    iput-boolean p5, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    .line 16
    iput-object p6, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move-object p8, v0

    goto :goto_0

    :cond_1
    move-object p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v2, p4

    :goto_2
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    const/4 p5, 0x0

    :cond_4
    move v3, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, p6

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v1

    move-object p6, v2

    move p7, v3

    move-object p8, v0

    .line 10
    invoke-direct/range {p2 .. p8}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;-><init>(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/login/internal/bean/LoginResponse;Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/taptap/sdk/login/internal/bean/LoginResponse;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->copy(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCancel$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "cancel"
    .end annotation

    return-void
.end method

.method public static synthetic getCode$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "code"
    .end annotation

    return-void
.end method

.method public static synthetic getErrorMessage$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "error_message"
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

.method public static synthetic getServerUri$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "server_uri"
    .end annotation

    return-void
.end method

.method public static synthetic getToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "token"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/taptap/sdk/login/internal/bean/LoginResponse;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    const-string v3, ""

    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_2
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_5

    sget-object v1, Lcom/taptap/sdk/login/AccessToken$$serializer;->INSTANCE:Lcom/taptap/sdk/login/AccessToken$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    invoke-interface {p1, p2, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v0

    :goto_5
    if-eqz v3, :cond_8

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    move v3, v2

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v0

    :goto_7
    if-eqz v3, :cond_b

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_8
    move v3, v2

    goto :goto_9

    :cond_c
    iget-boolean v3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v3, v0

    :goto_9
    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_e
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_a
    move v0, v2

    goto :goto_b

    :cond_f
    iget-object v3, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    :goto_b
    if-eqz v0, :cond_11

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/taptap/sdk/login/AccessToken;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/taptap/sdk/login/internal/bean/LoginResponse;
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;-><init>(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    iget-boolean v3, p1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    iget-object p1, p1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCancel()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    return v0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerUri()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Lcom/taptap/sdk/login/AccessToken;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/taptap/sdk/login/AccessToken;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginResponse(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->token:Lcom/taptap/sdk/login/AccessToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->cancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serverUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->serverUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
