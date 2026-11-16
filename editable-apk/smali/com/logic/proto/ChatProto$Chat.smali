.class public final Lcom/logic/proto/ChatProto$Chat;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$ChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$Chat$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x4

.field public static final CREATE_TIME_FIELD_NUMBER:I = 0xd

.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$Chat;

.field public static final GAME_ID_FIELD_NUMBER:I = 0xc

.field public static final IMG_URL_FIELD_NUMBER:I = 0xb

.field public static final IS_SUPPORTER_FIELD_NUMBER:I = 0x10

.field public static final MSG_ID_FIELD_NUMBER:I = 0xf

.field public static final MSG_TYPE_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIC_FIELD_NUMBER:I = 0x5

.field public static final RECEIVER_ID_FIELD_NUMBER:I = 0x2

.field public static final ROLE_ID_FIELD_NUMBER:I = 0x8

.field public static final ROLE_NAME_FIELD_NUMBER:I = 0x9

.field public static final SENDER_ID_FIELD_NUMBER:I = 0x1

.field public static final SENDER_NAME_FIELD_NUMBER:I = 0xe

.field public static final SERVER_ID_FIELD_NUMBER:I = 0x6

.field public static final SERVER_NAME_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile content_:Ljava/lang/Object;

.field private createTime_:J

.field private gameId_:I

.field private volatile imgUrl_:Ljava/lang/Object;

.field private isSupporter_:I

.field private memoizedIsInitialized:B

.field private msgId_:J

.field private msgType_:I

.field private pic_:Lcom/google/protobuf/ByteString;

.field private receiverId_:J

.field private volatile roleId_:Ljava/lang/Object;

.field private volatile roleName_:Ljava/lang/Object;

.field private senderId_:J

.field private volatile senderName_:Ljava/lang/Object;

.field private volatile serverId_:Ljava/lang/Object;

.field private volatile serverName_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5184
    new-instance v0, Lcom/logic/proto/ChatProto$Chat;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$Chat;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$Chat;

    .line 5192
    new-instance v0, Lcom/logic/proto/ChatProto$Chat$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$Chat$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 3063
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3636
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedIsInitialized:B

    const-wide/16 v0, 0x0

    .line 3064
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->senderId_:J

    .line 3065
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->receiverId_:J

    const/4 v2, 0x0

    .line 3066
    iput v2, p0, Lcom/logic/proto/ChatProto$Chat;->type_:I

    const-string v3, ""

    .line 3067
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    .line 3068
    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v4, p0, Lcom/logic/proto/ChatProto$Chat;->pic_:Lcom/google/protobuf/ByteString;

    .line 3069
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    .line 3070
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    .line 3071
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    .line 3072
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    .line 3073
    iput v2, p0, Lcom/logic/proto/ChatProto$Chat;->msgType_:I

    .line 3074
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    .line 3075
    iput v2, p0, Lcom/logic/proto/ChatProto$Chat;->gameId_:I

    .line 3076
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->createTime_:J

    .line 3077
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    .line 3078
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->msgId_:J

    .line 3079
    iput v2, p0, Lcom/logic/proto/ChatProto$Chat;->isSupporter_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3091
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$Chat;-><init>()V

    .line 3093
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 3101
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 3194
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$Chat;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 3190
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$Chat;->isSupporter_:I

    goto :goto_0

    .line 3185
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/logic/proto/ChatProto$Chat;->msgId_:J

    goto :goto_0

    .line 3178
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3180
    iput-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    goto :goto_0

    .line 3174
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/logic/proto/ChatProto$Chat;->createTime_:J

    goto :goto_0

    .line 3169
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$Chat;->gameId_:I

    goto :goto_0

    .line 3162
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3164
    iput-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 3158
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$Chat;->msgType_:I

    goto :goto_0

    .line 3151
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3153
    iput-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    goto :goto_0

    .line 3145
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3147
    iput-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    goto :goto_0

    .line 3139
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3141
    iput-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    goto :goto_0

    .line 3133
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3135
    iput-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    goto :goto_0

    .line 3129
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->pic_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 3122
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3124
    iput-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    goto :goto_0

    .line 3118
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$Chat;->type_:I

    goto :goto_0

    .line 3113
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/logic/proto/ChatProto$Chat;->receiverId_:J

    goto :goto_0

    .line 3108
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/logic/proto/ChatProto$Chat;->senderId_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_10
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3205
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3206
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3203
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3208
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3209
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->makeExtensionsImmutable()V

    .line 3210
    throw p1

    .line 3208
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3209
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x9 -> :sswitch_f
        0x11 -> :sswitch_e
        0x18 -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x42 -> :sswitch_8
        0x4a -> :sswitch_7
        0x50 -> :sswitch_6
        0x5a -> :sswitch_5
        0x60 -> :sswitch_4
        0x69 -> :sswitch_3
        0x72 -> :sswitch_2
        0x79 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3054
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3061
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3636
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 3054
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$Chat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3700()Z
    .locals 1

    .line 3054
    sget-boolean v0, Lcom/logic/proto/ChatProto$Chat;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/logic/proto/ChatProto$Chat;J)J
    .locals 0

    .line 3054
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$Chat;->senderId_:J

    return-wide p1
.end method

.method static synthetic access$4002(Lcom/logic/proto/ChatProto$Chat;J)J
    .locals 0

    .line 3054
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$Chat;->receiverId_:J

    return-wide p1
.end method

.method static synthetic access$4102(Lcom/logic/proto/ChatProto$Chat;I)I
    .locals 0

    .line 3054
    iput p1, p0, Lcom/logic/proto/ChatProto$Chat;->type_:I

    return p1
.end method

.method static synthetic access$4200(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/logic/proto/ChatProto$Chat;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 3054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->pic_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/logic/proto/ChatProto$Chat;I)I
    .locals 0

    .line 3054
    iput p1, p0, Lcom/logic/proto/ChatProto$Chat;->msgType_:I

    return p1
.end method

.method static synthetic access$4900(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/logic/proto/ChatProto$Chat;I)I
    .locals 0

    .line 3054
    iput p1, p0, Lcom/logic/proto/ChatProto$Chat;->gameId_:I

    return p1
.end method

.method static synthetic access$5102(Lcom/logic/proto/ChatProto$Chat;J)J
    .locals 0

    .line 3054
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$Chat;->createTime_:J

    return-wide p1
.end method

.method static synthetic access$5200(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/logic/proto/ChatProto$Chat;J)J
    .locals 0

    .line 3054
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$Chat;->msgId_:J

    return-wide p1
.end method

.method static synthetic access$5402(Lcom/logic/proto/ChatProto$Chat;I)I
    .locals 0

    .line 3054
    iput p1, p0, Lcom/logic/proto/ChatProto$Chat;->isSupporter_:I

    return p1
.end method

.method static synthetic access$5500(Lcom/logic/proto/ChatProto$Chat;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$5600()Lcom/google/protobuf/Parser;
    .locals 1

    .line 3054
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3054
    invoke-static {p0}, Lcom/logic/proto/ChatProto$Chat;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3054
    invoke-static {p0}, Lcom/logic/proto/ChatProto$Chat;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3054
    invoke-static {p0}, Lcom/logic/proto/ChatProto$Chat;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3054
    invoke-static {p0}, Lcom/logic/proto/ChatProto$Chat;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3054
    invoke-static {p0}, Lcom/logic/proto/ChatProto$Chat;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3054
    invoke-static {p0}, Lcom/logic/proto/ChatProto$Chat;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3054
    invoke-static {p0}, Lcom/logic/proto/ChatProto$Chat;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;
    .locals 1

    .line 5188
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$Chat;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3214
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 3937
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$Chat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->toBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3940
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$Chat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->toBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3910
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 3911
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3917
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 3918
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3878
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3884
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3923
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 3924
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3930
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 3931
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3898
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 3899
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3905
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 3906
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3867
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3873
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3888
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3894
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$Chat;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;"
        }
    .end annotation

    .line 5203
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3774
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$Chat;

    if-nez v1, :cond_1

    .line 3775
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3777
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$Chat;

    .line 3780
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getSenderId()J

    move-result-wide v1

    .line 3781
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getSenderId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 3782
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getReceiverId()J

    move-result-wide v3

    .line 3783
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getReceiverId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 3784
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getType()I

    move-result v1

    .line 3785
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getType()I

    move-result v3

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 3786
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 3787
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 3788
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3789
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 3790
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 3791
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    .line 3792
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getServerName()Ljava/lang/String;

    move-result-object v1

    .line 3793
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    .line 3794
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getRoleId()Ljava/lang/String;

    move-result-object v1

    .line 3795
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    .line 3796
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getRoleName()Ljava/lang/String;

    move-result-object v1

    .line 3797
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    if-eqz v1, :cond_b

    .line 3798
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getMsgType()I

    move-result v1

    .line 3799
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getMsgType()I

    move-result v3

    if-ne v1, v3, :cond_b

    move v1, v0

    goto :goto_9

    :cond_b
    move v1, v2

    :goto_9
    if-eqz v1, :cond_c

    .line 3800
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    .line 3801
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    if-eqz v1, :cond_d

    .line 3802
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getGameId()I

    move-result v1

    .line 3803
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getGameId()I

    move-result v3

    if-ne v1, v3, :cond_d

    move v1, v0

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    if-eqz v1, :cond_e

    .line 3804
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getCreateTime()J

    move-result-wide v3

    .line 3805
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getCreateTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_e

    move v1, v0

    goto :goto_c

    :cond_e
    move v1, v2

    :goto_c
    if-eqz v1, :cond_f

    .line 3806
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getSenderName()Ljava/lang/String;

    move-result-object v1

    .line 3807
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_d

    :cond_f
    move v1, v2

    :goto_d
    if-eqz v1, :cond_10

    .line 3808
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getMsgId()J

    move-result-wide v3

    .line 3809
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getMsgId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_10

    move v1, v0

    goto :goto_e

    :cond_10
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    .line 3810
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getIsSupporter()I

    move-result v1

    .line 3811
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getIsSupporter()I

    move-result v3

    if-ne v1, v3, :cond_11

    move v1, v0

    goto :goto_f

    :cond_11
    move v1, v2

    :goto_f
    if-eqz v1, :cond_12

    .line 3812
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_10

    :cond_12
    move v0, v2

    :goto_10
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 3274
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    .line 3275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3276
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3278
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3280
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3281
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3294
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    .line 3295
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3296
    check-cast v0, Ljava/lang/String;

    .line 3297
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3299
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    return-object v0

    .line 3302
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 3565
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->createTime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3054
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3054
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$Chat;
    .locals 1

    .line 5213
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$Chat;

    return-object v0
.end method

.method public getGameId()I
    .locals 1

    .line 3552
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->gameId_:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 2

    .line 3510
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    .line 3511
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3512
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3514
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3516
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3517
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getImgUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3530
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    .line 3531
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3532
    check-cast v0, Ljava/lang/String;

    .line 3533
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3535
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    return-object v0

    .line 3538
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsSupporter()I
    .locals 1

    .line 3633
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->isSupporter_:I

    return v0
.end method

.method public getMsgId()J
    .locals 2

    .line 3620
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->msgId_:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .line 3497
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->msgType_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;"
        }
    .end annotation

    .line 5208
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPic()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3316
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->pic_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReceiverId()J
    .locals 2

    .line 3248
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->receiverId_:J

    return-wide v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 2

    .line 3413
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    .line 3414
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3415
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3417
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3419
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3420
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRoleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3433
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    .line 3434
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3435
    check-cast v0, Ljava/lang/String;

    .line 3436
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3438
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    return-object v0

    .line 3441
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 2

    .line 3455
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    .line 3456
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3457
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3459
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3461
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3462
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRoleNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3475
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    .line 3476
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3477
    check-cast v0, Ljava/lang/String;

    .line 3478
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3480
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    return-object v0

    .line 3483
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSenderId()J
    .locals 2

    .line 3235
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->senderId_:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 2

    .line 3578
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    .line 3579
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3580
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3582
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3584
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3585
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSenderNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3598
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    .line 3599
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3600
    check-cast v0, Ljava/lang/String;

    .line 3601
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3603
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    return-object v0

    .line 3606
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 3703
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3707
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$Chat;->senderId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 3709
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3711
    :cond_1
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$Chat;->receiverId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 3713
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3715
    :cond_2
    iget v1, p0, Lcom/logic/proto/ChatProto$Chat;->type_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 3717
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3719
    :cond_3
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 3720
    iget-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3722
    :cond_4
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->pic_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 3723
    iget-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->pic_:Lcom/google/protobuf/ByteString;

    .line 3724
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3726
    :cond_5
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getServerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 3727
    iget-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3729
    :cond_6
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getServerNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 3730
    iget-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3732
    :cond_7
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getRoleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 3733
    iget-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3735
    :cond_8
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getRoleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 3736
    iget-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3738
    :cond_9
    iget v1, p0, Lcom/logic/proto/ChatProto$Chat;->msgType_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 3740
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3742
    :cond_a
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getImgUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 3743
    iget-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3745
    :cond_b
    iget v1, p0, Lcom/logic/proto/ChatProto$Chat;->gameId_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 3747
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3749
    :cond_c
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$Chat;->createTime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    const/16 v5, 0xd

    .line 3751
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3753
    :cond_d
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getSenderNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 3754
    iget-object v2, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3756
    :cond_e
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$Chat;->msgId_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_f

    const/16 v3, 0xf

    .line 3758
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3760
    :cond_f
    iget v1, p0, Lcom/logic/proto/ChatProto$Chat;->isSupporter_:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 3762
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3764
    :cond_10
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3765
    iput v0, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedSize:I

    return v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 2

    .line 3329
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    .line 3330
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3331
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3333
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3335
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3336
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getServerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3349
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    .line 3350
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3351
    check-cast v0, Ljava/lang/String;

    .line 3352
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3354
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    return-object v0

    .line 3357
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 2

    .line 3371
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    .line 3372
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3373
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3375
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3377
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3378
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getServerNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3391
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    .line 3392
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3393
    check-cast v0, Ljava/lang/String;

    .line 3394
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3396
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    return-object v0

    .line 3399
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 3261
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->type_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3085
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 3818
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3819
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 3822
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3825
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getSenderId()J

    move-result-wide v1

    .line 3824
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3828
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getReceiverId()J

    move-result-wide v1

    .line 3827
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 3830
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getType()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 3832
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 3834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 3836
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 3838
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 3840
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 3842
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 3844
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getMsgType()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 3846
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 3848
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getGameId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 3851
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getCreateTime()J

    move-result-wide v1

    .line 3850
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 3853
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 3856
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getMsgId()J

    move-result-wide v1

    .line 3855
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 3858
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getIsSupporter()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 3859
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3860
    iput v0, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3220
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$3400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$Chat;

    const-class v2, Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 3221
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3639
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3643
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$Chat;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3054
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->newBuilderForType()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 3054
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3054
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->newBuilderForType()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 3935
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->newBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 3951
    new-instance v0, Lcom/logic/proto/ChatProto$Chat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3054
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->toBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3054
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->toBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 2

    .line 3944
    sget-object v0, Lcom/logic/proto/ChatProto$Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$Chat;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$Chat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$Chat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 3945
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3650
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->senderId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 3651
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 3653
    :cond_0
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->receiverId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 3654
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 3656
    :cond_1
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->type_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 3657
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3659
    :cond_2
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 3660
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->content_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3662
    :cond_3
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->pic_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 3663
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->pic_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3665
    :cond_4
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getServerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 3666
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->serverId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3668
    :cond_5
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getServerNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 3669
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->serverName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3671
    :cond_6
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getRoleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 3672
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->roleId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3674
    :cond_7
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getRoleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 3675
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->roleName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3677
    :cond_8
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->msgType_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 3678
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3680
    :cond_9
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getImgUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 3681
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->imgUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3683
    :cond_a
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->gameId_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 3684
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3686
    :cond_b
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->createTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    .line 3687
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 3689
    :cond_c
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat;->getSenderNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 3690
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat;->senderName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3692
    :cond_d
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat;->msgId_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    .line 3693
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 3695
    :cond_e
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat;->isSupporter_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 3696
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3698
    :cond_f
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
