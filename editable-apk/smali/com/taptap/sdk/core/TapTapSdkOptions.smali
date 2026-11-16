.class public final Lcom/taptap/sdk/core/TapTapSdkOptions;
.super Ljava/lang/Object;
.source "TapTapSdk.kt"

# interfaces
.implements Lcom/taptap/sdk/core/TapTapSdkBaseOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/core/TapTapSdkOptions$Companion;,
        Lcom/taptap/sdk/core/TapTapSdkOptions$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u00088\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 X2\u00020\u0001:\u0002WXB\u0095\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000b\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u000b\u0012\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015Bw\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0016J\t\u0010?\u001a\u00020\u0005H\u00c6\u0003J\t\u0010@\u001a\u00020\u000bH\u00c6\u0003J\t\u0010A\u001a\u00020\u0012H\u00c6\u0003J\t\u0010B\u001a\u00020\u0005H\u00c6\u0003J\t\u0010C\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010F\u001a\u00020\u000bH\u00c6\u0003J\t\u0010G\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u007f\u0010J\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u00c6\u0001J\u0013\u0010K\u001a\u00020\u000b2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u00d6\u0003J\t\u0010N\u001a\u00020\u0003H\u00d6\u0001J\t\u0010O\u001a\u00020\u0005H\u00d6\u0001J!\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u00002\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020VH\u00c7\u0001R$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR&\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\"\u0010\u0018\u001a\u0004\u0008#\u0010\u001fR\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008$\u0010\u0018\u001a\u0004\u0008%\u0010\u001fR$\u0010\u0010\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008&\u0010\u0018\u001a\u0004\u0008\'\u0010\u001a\"\u0004\u0008(\u0010\u001cR&\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008)\u0010\u0018\u001a\u0004\u0008*\u0010\u001f\"\u0004\u0008+\u0010!R&\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008,\u0010\u0018\u001a\u0004\u0008-\u0010\u001f\"\u0004\u0008.\u0010!R$\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008/\u0010\u0018\u001a\u0004\u00080\u0010\u001a\"\u0004\u00081\u0010\u001cR$\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00082\u0010\u0018\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R&\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00087\u0010\u0018\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001c\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008<\u0010\u0018\u001a\u0004\u0008=\u0010>\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/taptap/sdk/core/TapTapSdkOptions;",
        "Lcom/taptap/sdk/core/TapTapSdkBaseOptions;",
        "seen1",
        "",
        "clientId",
        "",
        "clientToken",
        "region",
        "channel",
        "gameVersion",
        "autoIAPEventEnabled",
        "",
        "overrideBuiltInParameters",
        "properties",
        "Lorg/json/JSONObject;",
        "oaidCert",
        "enableLog",
        "preferredLanguage",
        "Lcom/taptap/sdk/core/TapTapLanguage;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;)V",
        "getAutoIAPEventEnabled$annotations",
        "()V",
        "getAutoIAPEventEnabled",
        "()Z",
        "setAutoIAPEventEnabled",
        "(Z)V",
        "getChannel$annotations",
        "getChannel",
        "()Ljava/lang/String;",
        "setChannel",
        "(Ljava/lang/String;)V",
        "getClientId$annotations",
        "getClientId",
        "getClientToken$annotations",
        "getClientToken",
        "getEnableLog$annotations",
        "getEnableLog",
        "setEnableLog",
        "getGameVersion$annotations",
        "getGameVersion",
        "setGameVersion",
        "getOaidCert$annotations",
        "getOaidCert",
        "setOaidCert",
        "getOverrideBuiltInParameters$annotations",
        "getOverrideBuiltInParameters",
        "setOverrideBuiltInParameters",
        "getPreferredLanguage$annotations",
        "getPreferredLanguage",
        "()Lcom/taptap/sdk/core/TapTapLanguage;",
        "setPreferredLanguage",
        "(Lcom/taptap/sdk/core/TapTapLanguage;)V",
        "getProperties$annotations",
        "getProperties",
        "()Lorg/json/JSONObject;",
        "setProperties",
        "(Lorg/json/JSONObject;)V",
        "getRegion$annotations",
        "getRegion",
        "()I",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
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
        "tap-core_release"
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
.field public static final Companion:Lcom/taptap/sdk/core/TapTapSdkOptions$Companion;


# instance fields
.field private autoIAPEventEnabled:Z

.field private channel:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private final clientToken:Ljava/lang/String;

.field private enableLog:Z

.field private gameVersion:Ljava/lang/String;

.field private oaidCert:Ljava/lang/String;

.field private overrideBuiltInParameters:Z

.field private preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

.field private properties:Lorg/json/JSONObject;

.field private final region:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/core/TapTapSdkOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/core/TapTapSdkOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->Companion:Lcom/taptap/sdk/core/TapTapSdkOptions$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "clientToken"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "region"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "channel"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "gameVersion"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "autoIAPEventEnabled"
        .end annotation
    .end param
    .param p8    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "overrideBuiltInParameters"
        .end annotation
    .end param
    .param p9    # Lorg/json/JSONObject;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "properties"
        .end annotation

        .annotation runtime Lkotlinx/serialization/Serializable;
            with = Lcom/taptap/sdk/core/serialize/JSONObjectSerializer;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "oaidCert"
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "enableLog"
        .end annotation
    .end param
    .param p12    # Lcom/taptap/sdk/core/TapTapLanguage;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "preferredLanguage"
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

    and-int/lit8 p13, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p13, :cond_0

    .line 83
    sget-object p13, Lcom/taptap/sdk/core/TapTapSdkOptions$$serializer;->INSTANCE:Lcom/taptap/sdk/core/TapTapSdkOptions$$serializer;

    invoke-virtual {p13}, Lcom/taptap/sdk/core/TapTapSdkOptions$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p13

    invoke-static {p1, v0, p13}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    iput p4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput-object p3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p5, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_2

    iput-object p3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p6, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x20

    const/4 p4, 0x0

    if-nez p2, :cond_3

    iput-boolean p4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    goto :goto_2

    :cond_3
    iput-boolean p7, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    :goto_2
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_4

    iput-boolean p4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    goto :goto_3

    :cond_4
    iput-boolean p8, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    :goto_3
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_5

    iput-object p3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    goto :goto_4

    :cond_5
    iput-object p9, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    :goto_4
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_6

    iput-object p3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iput-object p10, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    :goto_5
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_7

    iput-boolean p4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    goto :goto_6

    :cond_7
    iput-boolean p11, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    :goto_6
    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_8

    .line 142
    sget-object p1, Lcom/taptap/sdk/core/TapTapLanguage;->AUTO:Lcom/taptap/sdk/core/TapTapLanguage;

    .line 83
    iput-object p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    goto :goto_7

    :cond_8
    iput-object p12, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    :goto_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    const-string v0, "clientId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7f8

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    invoke-direct/range {v1 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 15

    const-string v0, "clientId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7f0

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    const-string v0, "clientId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7e0

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    const-string v0, "clientId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7c0

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 15

    const-string v0, "clientId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x780

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;)V
    .locals 15

    const-string v0, "clientId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x700

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 15

    const-string v0, "clientId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x600

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 15

    const-string v0, "clientId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0x400

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;)V
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredLanguage"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    .line 99
    iput p3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    .line 105
    iput-object p4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    .line 115
    iput-boolean p6, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    .line 120
    iput-boolean p7, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    .line 125
    iput-object p8, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    .line 131
    iput-object p9, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    .line 136
    iput-boolean p10, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    .line 141
    iput-object p11, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-object v12, v2

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v13, v3

    goto :goto_6

    :cond_6
    move/from16 v13, p10

    :goto_6
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    .line 142
    sget-object v0, Lcom/taptap/sdk/core/TapTapLanguage;->AUTO:Lcom/taptap/sdk/core/TapTapLanguage;

    move-object v14, v0

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    .line 85
    invoke-direct/range {v3 .. v14}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/core/TapTapSdkOptions;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;ILjava/lang/Object;)Lcom/taptap/sdk/core/TapTapSdkOptions;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/taptap/sdk/core/TapTapSdkOptions;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;)Lcom/taptap/sdk/core/TapTapSdkOptions;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAutoIAPEventEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "autoIAPEventEnabled"
    .end annotation

    return-void
.end method

.method public static synthetic getChannel$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "channel"
    .end annotation

    return-void
.end method

.method public static synthetic getClientId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "clientId"
    .end annotation

    return-void
.end method

.method public static synthetic getClientToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "clientToken"
    .end annotation

    return-void
.end method

.method public static synthetic getEnableLog$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "enableLog"
    .end annotation

    return-void
.end method

.method public static synthetic getGameVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "gameVersion"
    .end annotation

    return-void
.end method

.method public static synthetic getOaidCert$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "oaidCert"
    .end annotation

    return-void
.end method

.method public static synthetic getOverrideBuiltInParameters$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "overrideBuiltInParameters"
    .end annotation

    return-void
.end method

.method public static synthetic getPreferredLanguage$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "preferredLanguage"
    .end annotation

    return-void
.end method

.method public static synthetic getProperties$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "properties"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/taptap/sdk/core/serialize/JSONObjectSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getRegion$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "region"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/taptap/sdk/core/TapTapSdkOptions;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_3
    if-eqz v3, :cond_5

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_6
    iget-boolean v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_5
    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_8
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    move v3, v2

    goto :goto_7

    :cond_9
    iget-boolean v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_7
    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_b
    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_8
    move v3, v2

    goto :goto_9

    :cond_c
    iget-object v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v3, v1

    :goto_9
    if-eqz v3, :cond_e

    sget-object v3, Lcom/taptap/sdk/core/serialize/JSONObjectSerializer;->INSTANCE:Lcom/taptap/sdk/core/serialize/JSONObjectSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_e
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_a
    move v3, v2

    goto :goto_b

    :cond_f
    iget-object v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    move v3, v1

    :goto_b
    if-eqz v3, :cond_11

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_c
    move v3, v2

    goto :goto_d

    :cond_12
    iget-boolean v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    if-eqz v3, :cond_13

    goto :goto_c

    :cond_13
    move v3, v1

    :goto_d
    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    invoke-interface {p1, p2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_14
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_15

    :goto_e
    move v1, v2

    goto :goto_f

    :cond_15
    iget-object v3, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    .line 142
    sget-object v4, Lcom/taptap/sdk/core/TapTapLanguage;->AUTO:Lcom/taptap/sdk/core/TapTapLanguage;

    if-eq v3, v4, :cond_16

    goto :goto_e

    :cond_16
    :goto_f
    if-eqz v1, :cond_17

    .line 83
    sget-object v1, Lcom/taptap/sdk/core/TapTapLanguage;->Companion:Lcom/taptap/sdk/core/TapTapLanguage$Companion;

    invoke-virtual {v1}, Lcom/taptap/sdk/core/TapTapLanguage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    return v0
.end method

.method public final component11()Lcom/taptap/sdk/core/TapTapLanguage;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    return v0
.end method

.method public final component8()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;)Lcom/taptap/sdk/core/TapTapSdkOptions;
    .locals 13

    const-string v0, "clientId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredLanguage"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/taptap/sdk/core/TapTapSdkOptions;

    move-object v1, v0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/taptap/sdk/core/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/core/TapTapLanguage;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/core/TapTapSdkOptions;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    iget v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    iget-boolean v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    iget-boolean v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    iget-boolean v3, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    iget-object p1, p1, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAutoIAPEventEnabled()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    return v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientToken()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableLog()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    return v0
.end method

.method public final getGameVersion()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getOaidCert()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    return-object v0
.end method

.method public final getOverrideBuiltInParameters()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    return v0
.end method

.method public final getPreferredLanguage()Lcom/taptap/sdk/core/TapTapLanguage;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    return-object v0
.end method

.method public final getProperties()Lorg/json/JSONObject;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getRegion()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    if-eqz v1, :cond_3

    move v1, v3

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    invoke-virtual {v1}, Lcom/taptap/sdk/core/TapTapLanguage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAutoIAPEventEnabled(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setEnableLog(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    return-void
.end method

.method public final setGameVersion(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    return-void
.end method

.method public final setOaidCert(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    return-void
.end method

.method public final setOverrideBuiltInParameters(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    return-void
.end method

.method public final setPreferredLanguage(Lcom/taptap/sdk/core/TapTapLanguage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    return-void
.end method

.method public final setProperties(Lorg/json/JSONObject;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapTapSdkOptions(clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->clientToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->region:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->gameVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autoIAPEventEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->autoIAPEventEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overrideBuiltInParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->overrideBuiltInParameters:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->properties:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oaidCert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->oaidCert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enableLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->enableLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preferredLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapSdkOptions;->preferredLanguage:Lcom/taptap/sdk/core/TapTapLanguage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
