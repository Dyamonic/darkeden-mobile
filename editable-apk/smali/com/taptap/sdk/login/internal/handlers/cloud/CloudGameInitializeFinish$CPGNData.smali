.class public final Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;
.super Ljava/lang/Object;
.source "CloudGameInitializeFinish.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CPGNData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$Companion;,
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001c\u001dB%\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001J!\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u00c7\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;",
        "",
        "seen1",
        "",
        "version",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;)V",
        "getVersion$annotations",
        "()V",
        "getVersion",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
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
.field public static final Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$Companion;


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "login"
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

    and-int/lit8 p3, p1, 0x0

    if-eqz p3, :cond_0

    .line 10
    sget-object p3, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$$serializer;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$$serializer;

    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    const-string p1, ""

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;Ljava/lang/String;ILjava/lang/Object;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->copy(Ljava/lang/String;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "login"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    const-string v3, ""

    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 10
    iget-object p0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPGNData(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
