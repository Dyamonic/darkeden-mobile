.class public final Lcom/logic/proto/ChatProto$S2C_NotifyChat;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_NotifyChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S2C_NotifyChat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    }
.end annotation


# static fields
.field public static final CHAT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_NotifyChat;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_NotifyChat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private chat_:Lcom/logic/proto/ChatProto$Chat;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10429
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    .line 10437
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9885
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 9978
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedIsInitialized:B

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

    .line 9897
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;-><init>()V

    .line 9899
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9903
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 9907
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 9926
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9914
    iget-object v3, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v3, :cond_2

    .line 9915
    invoke-virtual {v3}, Lcom/logic/proto/ChatProto$Chat;->toBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v2

    .line 9917
    :cond_2
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/logic/proto/ChatProto$Chat;

    iput-object v3, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v2, :cond_0

    .line 9919
    invoke-virtual {v2, v3}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 9920
    invoke-virtual {v2}, Lcom/logic/proto/ChatProto$Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v2

    iput-object v2, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->chat_:Lcom/logic/proto/ChatProto$Chat;
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

    .line 9937
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 9938
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 9935
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9940
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9941
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->makeExtensionsImmutable()V

    .line 9942
    throw p1

    .line 9940
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9941
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9876
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 9883
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 9978
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 9876
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$15100()Z
    .locals 1

    .line 9876
    sget-boolean v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15302(Lcom/logic/proto/ChatProto$S2C_NotifyChat;Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat;
    .locals 0

    .line 9876
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    return-object p1
.end method

.method static synthetic access$15400(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 9876
    iget-object p0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$15500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 9876
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_NotifyChat;
    .locals 1

    .line 10433
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9946
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$14700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1

    .line 10122
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10125
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10095
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 10096
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10102
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 10103
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10063
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10069
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10108
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 10109
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10115
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 10116
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10083
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 10084
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10090
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 10091
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10052
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10058
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10073
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat;
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

    .line 10079
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_NotifyChat;",
            ">;"
        }
    .end annotation

    .line 10448
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

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

    .line 10018
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    if-nez v1, :cond_1

    .line 10019
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 10021
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    .line 10024
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->hasChat()Z

    move-result v1

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->hasChat()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 10025
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->hasChat()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 10026
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    .line 10027
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/logic/proto/ChatProto$Chat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 10029
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0
.end method

.method public getChat()Lcom/logic/proto/ChatProto$Chat;
    .locals 1

    .line 9969
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChatOrBuilder()Lcom/logic/proto/ChatProto$ChatOrBuilder;
    .locals 1

    .line 9975
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9876
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9876
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat;
    .locals 1

    .line 10458
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_NotifyChat;",
            ">;"
        }
    .end annotation

    .line 10453
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 10000
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 10004
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 10006
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10008
    :cond_1
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 10009
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 9891
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasChat()Z
    .locals 1

    .line 9963
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->chat_:Lcom/logic/proto/ChatProto$Chat;

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

    .line 10035
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 10036
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 10039
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10040
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->hasChat()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 10042
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logic/proto/ChatProto$Chat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 10044
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10045
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 9952
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$14800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    .line 9953
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 9981
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 9985
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9876
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 9876
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9876
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1

    .line 10120
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->newBuilder()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 10136
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9876
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9876
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 2

    .line 10129
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 10130
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 9992
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 9993
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9995
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
