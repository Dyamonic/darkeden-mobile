.class public final Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;
.super Ljava/lang/Object;
.source "CloudGameInitializeFinish.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;,
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$Companion;,
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0003\u001d\u001e\u001fB%\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J!\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u00c7\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006 "
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;",
        "",
        "seen1",
        "",
        "cgpn",
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;)V",
        "getCgpn$annotations",
        "()V",
        "getCgpn",
        "()Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "CPGNData",
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
.field public static final Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$Companion;


# instance fields
.field private final cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;-><init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "CGPN"
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

    .line 6
    sget-object p3, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$$serializer;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$$serializer;

    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    and-int/2addr p1, p3

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;)V
    .locals 1

    const-string v0, "cgpn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 8
    new-instance p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;-><init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;ILjava/lang/Object;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->copy(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCgpn$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "CGPN"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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

    .line 6
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    .line 8
    new-instance v3, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v4}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    sget-object v1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$$serializer;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final component1()Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    return-object v0
.end method

.method public final copy(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;)Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;
    .locals 1

    const-string v0, "cgpn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;-><init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    iget-object p1, p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCgpn()Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudGameInitializeFinish(cgpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->cgpn:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
