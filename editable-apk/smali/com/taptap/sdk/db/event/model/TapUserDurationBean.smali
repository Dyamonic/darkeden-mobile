.class public final Lcom/taptap/sdk/db/event/model/TapUserDurationBean;
.super Ljava/lang/Object;
.source "TapPlayGameDurationBean.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/db/event/model/TapUserDurationBean$Companion;,
        Lcom/taptap/sdk/db/event/model/TapUserDurationBean$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0081\u0008\u0018\u0000 \'2\u00020\u0001:\u0002&\'B/\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\u001d\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001J!\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u00c7\u0001R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
        "",
        "seen1",
        "",
        "userId",
        "",
        "duration",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;JLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;J)V",
        "getDuration$annotations",
        "()V",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "getUserId$annotations",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
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
        "tap-db_release"
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
.field public static final Companion:Lcom/taptap/sdk/db/event/model/TapUserDurationBean$Companion;


# instance fields
.field private duration:J

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->Companion:Lcom/taptap/sdk/db/event/model/TapUserDurationBean$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "userId"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "duration"
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

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p5, :cond_0

    .line 14
    sget-object p5, Lcom/taptap/sdk/db/event/model/TapUserDurationBean$$serializer;->INSTANCE:Lcom/taptap/sdk/db/event/model/TapUserDurationBean$$serializer;

    invoke-virtual {p5}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    goto :goto_0

    :cond_1
    iput-wide p3, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/db/event/model/TapUserDurationBean;Ljava/lang/String;JILjava/lang/Object;)Lcom/taptap/sdk/db/event/model/TapUserDurationBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->copy(Ljava/lang/String;J)Lcom/taptap/sdk/db/event/model/TapUserDurationBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDuration$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "duration"
    .end annotation

    return-void
.end method

.method public static synthetic getUserId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "userId"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/taptap/sdk/db/event/model/TapUserDurationBean;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Lcom/taptap/sdk/db/event/model/TapUserDurationBean;
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;

    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    iget-wide v5, p1, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    return-wide v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    invoke-static {v1, v2}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean-$$ExternalSynthetic0;->m0(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDuration(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapUserDurationBean(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
