.class public final Lcom/logic/proto/ChatProto$S2C_EnterChat;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_EnterChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S2C_EnterChat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_EnterChat;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_EnterChat;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private code_:I

.field private memoizedIsInitialized:B

.field private user_:Lcom/logic/proto/ChatProto$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7595
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_EnterChat;

    .line 7603
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_EnterChat$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6966
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7083
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 6967
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
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

    .line 6979
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;-><init>()V

    .line 6981
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6985
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 6989
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 7014
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7002
    iget-object v3, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->user_:Lcom/logic/proto/ChatProto$User;

    if-eqz v3, :cond_2

    .line 7003
    invoke-virtual {v3}, Lcom/logic/proto/ChatProto$User;->toBuilder()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v2

    .line 7005
    :cond_2
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/logic/proto/ChatProto$User;

    iput-object v3, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->user_:Lcom/logic/proto/ChatProto$User;

    if-eqz v2, :cond_0

    .line 7007
    invoke-virtual {v2, v3}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 7008
    invoke-virtual {v2}, Lcom/logic/proto/ChatProto$User$Builder;->buildPartial()Lcom/logic/proto/ChatProto$User;

    move-result-object v2

    iput-object v2, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->user_:Lcom/logic/proto/ChatProto$User;

    goto :goto_0

    .line 6995
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 6997
    iput v2, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7025
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 7026
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7023
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7028
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7029
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->makeExtensionsImmutable()V

    .line 7030
    throw p1

    .line 7028
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7029
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6957
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 6964
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7083
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 6957
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10000()Z
    .locals 1

    .line 6957
    sget-boolean v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10200(Lcom/logic/proto/ChatProto$S2C_EnterChat;)I
    .locals 0

    .line 6957
    iget p0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    return p0
.end method

.method static synthetic access$10202(Lcom/logic/proto/ChatProto$S2C_EnterChat;I)I
    .locals 0

    .line 6957
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    return p1
.end method

.method static synthetic access$10302(Lcom/logic/proto/ChatProto$S2C_EnterChat;Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User;
    .locals 0

    .line 6957
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->user_:Lcom/logic/proto/ChatProto$User;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 6957
    iget-object p0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$10500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 6957
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_EnterChat;
    .locals 1

    .line 7599
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7034
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$9600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1

    .line 7237
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_EnterChat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7240
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_EnterChat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7210
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7211
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7217
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7218
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7178
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7184
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7223
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7224
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7230
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7231
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7198
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7199
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7205
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7206
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7167
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7173
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7188
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat;
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

    .line 7194
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_EnterChat;",
            ">;"
        }
    .end annotation

    .line 7614
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
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

    .line 7130
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    if-nez v1, :cond_1

    .line 7131
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7133
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    .line 7136
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    iget v2, p1, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 7137
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->hasUser()Z

    move-result v1

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->hasUser()Z

    move-result v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    .line 7138
    :goto_1
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->hasUser()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 7139
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getUser()Lcom/logic/proto/ChatProto$User;

    move-result-object v1

    .line 7140
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getUser()Lcom/logic/proto/ChatProto$User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/logic/proto/ChatProto$User;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 7142
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    return v0
.end method

.method public getCode()Lcom/logic/proto/ChatProto$CODE;
    .locals 1

    .line 7058
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    invoke-static {v0}, Lcom/logic/proto/ChatProto$CODE;->valueOf(I)Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7059
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    :cond_0
    return-object v0
.end method

.method public getCodeValue()I
    .locals 1

    .line 7051
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_EnterChat;
    .locals 1

    .line 7624
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_EnterChat;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_EnterChat;",
            ">;"
        }
    .end annotation

    .line 7619
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 7108
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 7112
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    sget-object v2, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    invoke-virtual {v2}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 7113
    iget v2, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    .line 7114
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7116
    :cond_1
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->user_:Lcom/logic/proto/ChatProto$User;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 7118
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getUser()Lcom/logic/proto/ChatProto$User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7120
    :cond_2
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7121
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 6973
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUser()Lcom/logic/proto/ChatProto$User;
    .locals 1

    .line 7074
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->user_:Lcom/logic/proto/ChatProto$User;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserOrBuilder()Lcom/logic/proto/ChatProto$UserOrBuilder;
    .locals 1

    .line 7080
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getUser()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public hasUser()Z
    .locals 1

    .line 7068
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->user_:Lcom/logic/proto/ChatProto$User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 7148
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 7149
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 7152
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 7154
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    add-int/2addr v0, v1

    .line 7155
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->hasUser()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 7157
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getUser()Lcom/logic/proto/ChatProto$User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logic/proto/ChatProto$User;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 7159
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7160
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 7040
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$9700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    .line 7041
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7086
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7090
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 6957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1

    .line 7235
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->newBuilder()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 7251
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 2

    .line 7244
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_EnterChat;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 7245
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
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

    .line 7097
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    sget-object v1, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    invoke-virtual {v1}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 7098
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->code_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7100
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->user_:Lcom/logic/proto/ChatProto$User;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 7101
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getUser()Lcom/logic/proto/ChatProto$User;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7103
    :cond_1
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
