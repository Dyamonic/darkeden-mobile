.class public final Lcom/logic/proto/ChatProto$C2S_GetChatList;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$C2S_GetChatListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C2S_GetChatList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_GetChatList;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_GetChatList;",
            ">;"
        }
    .end annotation
.end field

.field public static final READFLAG_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private readFlag_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10925
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_GetChatList;

    .line 10933
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_GetChatList$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10488
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 10566
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 10489
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->readFlag_:I

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

    .line 10501
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;-><init>()V

    .line 10503
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10507
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 10511
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 10522
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 10518
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->readFlag_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10533
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 10534
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 10531
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10536
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 10537
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->makeExtensionsImmutable()V

    .line 10538
    throw p1

    .line 10536
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 10537
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10479
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 10486
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 10566
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 10479
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$16100()Z
    .locals 1

    .line 10479
    sget-boolean v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$16302(Lcom/logic/proto/ChatProto$C2S_GetChatList;I)I
    .locals 0

    .line 10479
    iput p1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->readFlag_:I

    return p1
.end method

.method static synthetic access$16400(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 10479
    iget-object p0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$16500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 10479
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_GetChatList;
    .locals 1

    .line 10929
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10542
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$15700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 1

    .line 10705
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_GetChatList;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->toBuilder()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10708
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_GetChatList;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->toBuilder()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10678
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 10679
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10685
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 10686
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10646
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10652
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10691
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 10692
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10698
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 10699
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10666
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 10667
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10673
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    .line 10674
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10635
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10641
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10656
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList;
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

    .line 10662
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_GetChatList;",
            ">;"
        }
    .end annotation

    .line 10944
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

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

    .line 10606
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    if-nez v1, :cond_1

    .line 10607
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 10609
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    .line 10612
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getReadFlag()I

    move-result v1

    .line 10613
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getReadFlag()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 10614
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 10479
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10479
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_GetChatList;
    .locals 1

    .line 10954
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_GetChatList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_GetChatList;",
            ">;"
        }
    .end annotation

    .line 10949
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReadFlag()I
    .locals 1

    .line 10563
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->readFlag_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 10588
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 10592
    iget v1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->readFlag_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 10594
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10596
    :cond_1
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 10597
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 10495
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 10620
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 10621
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 10624
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 10626
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getReadFlag()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 10627
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10628
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 10548
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$15800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    const-class v2, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    .line 10549
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 10569
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 10573
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10479
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->newBuilderForType()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10479
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10479
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->newBuilderForType()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 1

    .line 10703
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->newBuilder()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 10719
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10479
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->toBuilder()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10479
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->toBuilder()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 2

    .line 10712
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_GetChatList;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 10713
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10580
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->readFlag_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 10581
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 10583
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
