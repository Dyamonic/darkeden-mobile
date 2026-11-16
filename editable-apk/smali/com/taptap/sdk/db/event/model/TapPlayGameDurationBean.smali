.class public final Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;
.super Ljava/lang/Object;
.source "TapPlayGameDurationBean.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$Companion;,
        Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0081\u0008\u0018\u0000 )2\u00020\u0001:\u0002()B5\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0010\u0008\u0001\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB\u001f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J#\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J!\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u00c7\u0001R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R*\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006*"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;",
        "",
        "seen1",
        "",
        "deviceDuration",
        "",
        "userDuration",
        "",
        "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(JLjava/util/List;)V",
        "getDeviceDuration$annotations",
        "()V",
        "getDeviceDuration",
        "()J",
        "setDeviceDuration",
        "(J)V",
        "getUserDuration$annotations",
        "getUserDuration",
        "()Ljava/util/List;",
        "setUserDuration",
        "(Ljava/util/List;)V",
        "component1",
        "component2",
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
.field public static final Companion:Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$Companion;


# instance fields
.field private deviceDuration:J

.field private userDuration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->Companion:Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;-><init>(JLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # J
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "deviceDuration"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "userDuration"
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

    and-int/lit8 p5, p1, 0x0

    if-eqz p5, :cond_0

    .line 6
    sget-object p5, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$$serializer;->INSTANCE:Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$$serializer;

    invoke-virtual {p5}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    const/4 v0, 0x0

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_1

    const-wide/16 p2, -0x1

    :cond_1
    iput-wide p2, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    goto :goto_0

    :cond_2
    iput-object p4, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userDuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    .line 10
    iput-object p3, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;-><init>(JLjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;JLjava/util/List;ILjava/lang/Object;)Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->copy(JLjava/util/List;)Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDeviceDuration$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "deviceDuration"
    .end annotation

    return-void
.end method

.method public static synthetic getUserDuration$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "userDuration"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 7
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

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_2
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 6
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/taptap/sdk/db/event/model/TapUserDurationBean$$serializer;->INSTANCE:Lcom/taptap/sdk/db/event/model/TapUserDurationBean$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    invoke-interface {p1, p2, v2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    return-wide v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    return-object v0
.end method

.method public final copy(JLjava/util/List;)Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
            ">;)",
            "Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;"
        }
    .end annotation

    const-string v0, "userDuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;-><init>(JLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    iget-wide v3, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    iget-wide v5, p1, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    iget-object p1, p1, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDeviceDuration()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    return-wide v0
.end method

.method public final getUserDuration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    invoke-static {v0, v1}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean-$$ExternalSynthetic0;->m0(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDeviceDuration(J)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    return-void
.end method

.method public final setUserDuration(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapPlayGameDurationBean(deviceDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->deviceDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->userDuration:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
