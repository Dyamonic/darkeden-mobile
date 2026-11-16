.class public final enum Lcom/logic/proto/ChatProto$CODE;
.super Ljava/lang/Enum;
.source "ChatProto.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/logic/proto/ChatProto$CODE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/logic/proto/ChatProto$CODE;

.field public static final enum CODE_ERROR:Lcom/logic/proto/ChatProto$CODE;

.field public static final CODE_ERROR_VALUE:I = 0x1

.field public static final enum CODE_OK:Lcom/logic/proto/ChatProto$CODE;

.field public static final CODE_OK_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

.field private static final VALUES:[Lcom/logic/proto/ChatProto$CODE;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/logic/proto/ChatProto$CODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    new-instance v0, Lcom/logic/proto/ChatProto$CODE;

    const-string v1, "CODE_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/logic/proto/ChatProto$CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    .line 37
    new-instance v1, Lcom/logic/proto/ChatProto$CODE;

    const-string v3, "CODE_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/logic/proto/ChatProto$CODE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/logic/proto/ChatProto$CODE;->CODE_ERROR:Lcom/logic/proto/ChatProto$CODE;

    .line 38
    new-instance v3, Lcom/logic/proto/ChatProto$CODE;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/logic/proto/ChatProto$CODE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/logic/proto/ChatProto$CODE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 20
    sput-object v5, Lcom/logic/proto/ChatProto$CODE;->$VALUES:[Lcom/logic/proto/ChatProto$CODE;

    .line 88
    new-instance v0, Lcom/logic/proto/ChatProto$CODE$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$CODE$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$CODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 108
    invoke-static {}, Lcom/logic/proto/ChatProto$CODE;->values()[Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    sput-object v0, Lcom/logic/proto/ChatProto$CODE;->VALUES:[Lcom/logic/proto/ChatProto$CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput p3, p0, Lcom/logic/proto/ChatProto$CODE;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/logic/proto/ChatProto$CODE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    sget-object p0, Lcom/logic/proto/ChatProto$CODE;->CODE_ERROR:Lcom/logic/proto/ChatProto$CODE;

    return-object p0

    .line 77
    :cond_1
    sget-object p0, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 105
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/logic/proto/ChatProto$CODE;",
            ">;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/logic/proto/ChatProto$CODE;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/logic/proto/ChatProto$CODE;->forNumber(I)Lcom/logic/proto/ChatProto$CODE;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/logic/proto/ChatProto$CODE;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/logic/proto/ChatProto$CODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    sget-object p0, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    return-object p0

    .line 119
    :cond_0
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->VALUES:[Lcom/logic/proto/ChatProto$CODE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/logic/proto/ChatProto$CODE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 20
    const-class v0, Lcom/logic/proto/ChatProto$CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$CODE;

    return-object p0
.end method

.method public static values()[Lcom/logic/proto/ChatProto$CODE;
    .locals 1

    .line 20
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->$VALUES:[Lcom/logic/proto/ChatProto$CODE;

    invoke-virtual {v0}, [Lcom/logic/proto/ChatProto$CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/logic/proto/ChatProto$CODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 101
    invoke-static {}, Lcom/logic/proto/ChatProto$CODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 60
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    if-eq p0, v0, :cond_0

    .line 64
    iget v0, p0, Lcom/logic/proto/ChatProto$CODE;->value:I

    return v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 97
    invoke-static {}, Lcom/logic/proto/ChatProto$CODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$CODE;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
