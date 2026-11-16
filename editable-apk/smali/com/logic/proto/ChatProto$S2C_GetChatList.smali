.class public final Lcom/logic/proto/ChatProto$S2C_GetChatList;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_GetChatListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S2C_GetChatList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    }
.end annotation


# static fields
.field public static final CHAT_LIST_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_GetChatList;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_GetChatList;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private chatList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11707
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_GetChatList;

    .line 11715
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_GetChatList$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10999
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 11106
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedIsInitialized:B

    .line 11000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
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

    .line 11012
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;-><init>()V

    .line 11014
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11018
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 11022
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 11037
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_2

    .line 11029
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 11032
    :cond_2
    iget-object v4, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    .line 11033
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 11032
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11048
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 11049
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11046
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_4

    .line 11052
    iget-object p2, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    .line 11054
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11055
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->makeExtensionsImmutable()V

    .line 11056
    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_6

    .line 11052
    iget-object p1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    .line 11054
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11055
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10990
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 10997
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 11106
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 10990
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$17100()Z
    .locals 1

    .line 10990
    sget-boolean v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17300(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Ljava/util/List;
    .locals 0

    .line 10990
    iget-object p0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$17302(Lcom/logic/proto/ChatProto$S2C_GetChatList;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 10990
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17400()Z
    .locals 1

    .line 10990
    sget-boolean v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17500(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 10990
    iget-object p0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$17600()Lcom/google/protobuf/Parser;
    .locals 1

    .line 10990
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_GetChatList;
    .locals 1

    .line 11711
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11060
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$16700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1

    .line 11247
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_GetChatList;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->toBuilder()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 11250
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_GetChatList;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->toBuilder()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11220
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 11221
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11227
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 11228
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11188
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11194
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11233
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 11234
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11240
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 11241
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11208
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 11209
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11215
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 11216
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11177
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11183
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11198
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList;
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

    .line 11204
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_GetChatList;",
            ">;"
        }
    .end annotation

    .line 11726
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
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

    .line 11146
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    if-nez v1, :cond_1

    .line 11147
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 11149
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    .line 11152
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getChatListList()Ljava/util/List;

    move-result-object v1

    .line 11153
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getChatListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 11154
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getChatList(I)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11096
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat;

    return-object p1
.end method

.method public getChatListCount()I
    .locals 1

    .line 11090
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChatListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;"
        }
    .end annotation

    .line 11077
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    return-object v0
.end method

.method public getChatListOrBuilder(I)Lcom/logic/proto/ChatProto$ChatOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11103
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$ChatOrBuilder;

    return-object p1
.end method

.method public getChatListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/logic/proto/ChatProto$ChatOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11084
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 10990
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10990
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_GetChatList;
    .locals 1

    .line 11736
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_GetChatList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_GetChatList;",
            ">;"
        }
    .end annotation

    .line 11731
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 11128
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 11132
    :goto_0
    iget-object v2, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 11133
    iget-object v2, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    .line 11134
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11136
    :cond_1
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 11137
    iput v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 11006
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 11160
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 11161
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 11164
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11165
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getChatListCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 11167
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getChatListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 11169
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11170
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 11066
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$16800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    .line 11067
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 11109
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 11113
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10990
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 10990
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10990
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1

    .line 11245
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->newBuilder()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 11261
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10990
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->toBuilder()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10990
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->toBuilder()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 2

    .line 11254
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_GetChatList;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 11255
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
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

    const/4 v0, 0x0

    .line 11120
    :goto_0
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11121
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->chatList_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11123
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
