.class public final enum Lcom/logic/proto/ChatProto$ID;
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
    name = "ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/logic/proto/ChatProto$ID;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/logic/proto/ChatProto$ID;

.field public static final enum ID_C2S_CHAT:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_C2S_CHAT_VALUE:I = 0x15f96

.field public static final enum ID_C2S_ENTER_CHAT:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_C2S_ENTER_CHAT_VALUE:I = 0x15f92

.field public static final enum ID_C2S_GET_CHAT_LIST:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_C2S_GET_CHAT_LIST_VALUE:I = 0x15f99

.field public static final enum ID_C2S_KEEP_ALIVE:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_C2S_KEEP_ALIVE_VALUE:I = 0x15f90

.field public static final enum ID_C2S_LEAVE_CHAT:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_C2S_LEAVE_CHAT_VALUE:I = 0x15f94

.field public static final enum ID_S2C_CHAT:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_S2C_CHAT_VALUE:I = 0x15f97

.field public static final enum ID_S2C_ENTER_CHAT:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_S2C_ENTER_CHAT_VALUE:I = 0x15f93

.field public static final enum ID_S2C_GET_CHAT_LIST:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_S2C_GET_CHAT_LIST_VALUE:I = 0x15f9a

.field public static final enum ID_S2C_KEEP_ALIVE:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_S2C_KEEP_ALIVE_VALUE:I = 0x15f91

.field public static final enum ID_S2C_LEAVE_CHAT:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_S2C_LEAVE_CHAT_VALUE:I = 0x15f95

.field public static final enum ID_S2C_NOTIFY_CHAT:Lcom/logic/proto/ChatProto$ID;

.field public static final ID_S2C_NOTIFY_CHAT_VALUE:I = 0x15f98

.field public static final enum UNKNOWN:Lcom/logic/proto/ChatProto$ID;

.field public static final UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/logic/proto/ChatProto$ID;

.field private static final VALUES:[Lcom/logic/proto/ChatProto$ID;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/logic/proto/ChatProto$ID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 147
    new-instance v0, Lcom/logic/proto/ChatProto$ID;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logic/proto/ChatProto$ID;->UNKNOWN:Lcom/logic/proto/ChatProto$ID;

    .line 155
    new-instance v1, Lcom/logic/proto/ChatProto$ID;

    const-string v3, "ID_C2S_KEEP_ALIVE"

    const/4 v4, 0x1

    const v5, 0x15f90

    invoke-direct {v1, v3, v4, v5}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/logic/proto/ChatProto$ID;->ID_C2S_KEEP_ALIVE:Lcom/logic/proto/ChatProto$ID;

    .line 159
    new-instance v3, Lcom/logic/proto/ChatProto$ID;

    const-string v5, "ID_S2C_KEEP_ALIVE"

    const/4 v6, 0x2

    const v7, 0x15f91

    invoke-direct {v3, v5, v6, v7}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/logic/proto/ChatProto$ID;->ID_S2C_KEEP_ALIVE:Lcom/logic/proto/ChatProto$ID;

    .line 167
    new-instance v5, Lcom/logic/proto/ChatProto$ID;

    const-string v7, "ID_C2S_ENTER_CHAT"

    const/4 v8, 0x3

    const v9, 0x15f92

    invoke-direct {v5, v7, v8, v9}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/logic/proto/ChatProto$ID;->ID_C2S_ENTER_CHAT:Lcom/logic/proto/ChatProto$ID;

    .line 171
    new-instance v7, Lcom/logic/proto/ChatProto$ID;

    const-string v9, "ID_S2C_ENTER_CHAT"

    const/4 v10, 0x4

    const v11, 0x15f93

    invoke-direct {v7, v9, v10, v11}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/logic/proto/ChatProto$ID;->ID_S2C_ENTER_CHAT:Lcom/logic/proto/ChatProto$ID;

    .line 179
    new-instance v9, Lcom/logic/proto/ChatProto$ID;

    const-string v11, "ID_C2S_LEAVE_CHAT"

    const/4 v12, 0x5

    const v13, 0x15f94

    invoke-direct {v9, v11, v12, v13}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/logic/proto/ChatProto$ID;->ID_C2S_LEAVE_CHAT:Lcom/logic/proto/ChatProto$ID;

    .line 183
    new-instance v11, Lcom/logic/proto/ChatProto$ID;

    const-string v13, "ID_S2C_LEAVE_CHAT"

    const/4 v14, 0x6

    const v15, 0x15f95

    invoke-direct {v11, v13, v14, v15}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/logic/proto/ChatProto$ID;->ID_S2C_LEAVE_CHAT:Lcom/logic/proto/ChatProto$ID;

    .line 191
    new-instance v13, Lcom/logic/proto/ChatProto$ID;

    const-string v15, "ID_C2S_CHAT"

    const/4 v14, 0x7

    const v12, 0x15f96

    invoke-direct {v13, v15, v14, v12}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/logic/proto/ChatProto$ID;->ID_C2S_CHAT:Lcom/logic/proto/ChatProto$ID;

    .line 195
    new-instance v12, Lcom/logic/proto/ChatProto$ID;

    const-string v15, "ID_S2C_CHAT"

    const/16 v14, 0x8

    const v10, 0x15f97

    invoke-direct {v12, v15, v14, v10}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/logic/proto/ChatProto$ID;->ID_S2C_CHAT:Lcom/logic/proto/ChatProto$ID;

    .line 199
    new-instance v10, Lcom/logic/proto/ChatProto$ID;

    const-string v15, "ID_S2C_NOTIFY_CHAT"

    const/16 v14, 0x9

    const v8, 0x15f98

    invoke-direct {v10, v15, v14, v8}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/logic/proto/ChatProto$ID;->ID_S2C_NOTIFY_CHAT:Lcom/logic/proto/ChatProto$ID;

    .line 207
    new-instance v8, Lcom/logic/proto/ChatProto$ID;

    const-string v15, "ID_C2S_GET_CHAT_LIST"

    const/16 v14, 0xa

    const v6, 0x15f99

    invoke-direct {v8, v15, v14, v6}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/logic/proto/ChatProto$ID;->ID_C2S_GET_CHAT_LIST:Lcom/logic/proto/ChatProto$ID;

    .line 211
    new-instance v6, Lcom/logic/proto/ChatProto$ID;

    const-string v15, "ID_S2C_GET_CHAT_LIST"

    const/16 v14, 0xb

    const v4, 0x15f9a

    invoke-direct {v6, v15, v14, v4}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/logic/proto/ChatProto$ID;->ID_S2C_GET_CHAT_LIST:Lcom/logic/proto/ChatProto$ID;

    .line 212
    new-instance v4, Lcom/logic/proto/ChatProto$ID;

    const-string v15, "UNRECOGNIZED"

    const/16 v14, 0xc

    const/4 v2, -0x1

    invoke-direct {v4, v15, v14, v2}, Lcom/logic/proto/ChatProto$ID;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/logic/proto/ChatProto$ID;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$ID;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/logic/proto/ChatProto$ID;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    .line 138
    sput-object v2, Lcom/logic/proto/ChatProto$ID;->$VALUES:[Lcom/logic/proto/ChatProto$ID;

    .line 328
    new-instance v0, Lcom/logic/proto/ChatProto$ID$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$ID$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$ID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 348
    invoke-static {}, Lcom/logic/proto/ChatProto$ID;->values()[Lcom/logic/proto/ChatProto$ID;

    move-result-object v0

    sput-object v0, Lcom/logic/proto/ChatProto$ID;->VALUES:[Lcom/logic/proto/ChatProto$ID;

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

    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 365
    iput p3, p0, Lcom/logic/proto/ChatProto$ID;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/logic/proto/ChatProto$ID;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 318
    :pswitch_0
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_S2C_GET_CHAT_LIST:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 317
    :pswitch_1
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_C2S_GET_CHAT_LIST:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 316
    :pswitch_2
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_S2C_NOTIFY_CHAT:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 315
    :pswitch_3
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_S2C_CHAT:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 314
    :pswitch_4
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_C2S_CHAT:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 313
    :pswitch_5
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_S2C_LEAVE_CHAT:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 312
    :pswitch_6
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_C2S_LEAVE_CHAT:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 311
    :pswitch_7
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_S2C_ENTER_CHAT:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 310
    :pswitch_8
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_C2S_ENTER_CHAT:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 309
    :pswitch_9
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_S2C_KEEP_ALIVE:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 308
    :pswitch_a
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->ID_C2S_KEEP_ALIVE:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 307
    :cond_0
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->UNKNOWN:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15f90
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 345
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/logic/proto/ChatProto$ID;",
            ">;"
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/logic/proto/ChatProto$ID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/logic/proto/ChatProto$ID;
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

    .line 302
    invoke-static {p0}, Lcom/logic/proto/ChatProto$ID;->forNumber(I)Lcom/logic/proto/ChatProto$ID;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/logic/proto/ChatProto$ID;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/logic/proto/ChatProto$ID;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 357
    sget-object p0, Lcom/logic/proto/ChatProto$ID;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$ID;

    return-object p0

    .line 359
    :cond_0
    sget-object v0, Lcom/logic/proto/ChatProto$ID;->VALUES:[Lcom/logic/proto/ChatProto$ID;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 353
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/logic/proto/ChatProto$ID;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 138
    const-class v0, Lcom/logic/proto/ChatProto$ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$ID;

    return-object p0
.end method

.method public static values()[Lcom/logic/proto/ChatProto$ID;
    .locals 1

    .line 138
    sget-object v0, Lcom/logic/proto/ChatProto$ID;->$VALUES:[Lcom/logic/proto/ChatProto$ID;

    invoke-virtual {v0}, [Lcom/logic/proto/ChatProto$ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/logic/proto/ChatProto$ID;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 341
    invoke-static {}, Lcom/logic/proto/ChatProto$ID;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 290
    sget-object v0, Lcom/logic/proto/ChatProto$ID;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$ID;

    if-eq p0, v0, :cond_0

    .line 294
    iget v0, p0, Lcom/logic/proto/ChatProto$ID;->value:I

    return v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 337
    invoke-static {}, Lcom/logic/proto/ChatProto$ID;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$ID;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
