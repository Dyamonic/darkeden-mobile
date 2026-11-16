.class public final Lcom/logic/proto/ChatProto$C2S_LeaveChat;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$C2S_LeaveChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C2S_LeaveChat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_LeaveChat;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_LeaveChat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8007
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    .line 8015
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7645
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7703
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedIsInitialized:B

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

    .line 7657
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;-><init>()V

    .line 7659
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7662
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 7666
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 7672
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7683
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 7684
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7681
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7686
    :goto_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7687
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->makeExtensionsImmutable()V

    .line 7688
    throw p1

    .line 7686
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7687
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7636
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 7643
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7703
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 7636
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$11100()Z
    .locals 1

    .line 7636
    sget-boolean v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11300(Lcom/logic/proto/ChatProto$C2S_LeaveChat;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 7636
    iget-object p0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$11400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 7636
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_LeaveChat;
    .locals 1

    .line 8011
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7692
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$10700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;
    .locals 1

    .line 7831
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->toBuilder()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$C2S_LeaveChat;)Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7834
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->toBuilder()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_LeaveChat;)Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7804
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7805
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7811
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7812
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7772
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7778
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7817
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7818
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7824
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7825
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7792
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7793
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7799
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    .line 7800
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7761
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7767
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7782
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_LeaveChat;
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

    .line 7788
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_LeaveChat;",
            ">;"
        }
    .end annotation

    .line 8026
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
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

    .line 7736
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    if-nez v1, :cond_1

    .line 7737
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7739
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    .line 7742
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7636
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7636
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_LeaveChat;
    .locals 1

    .line 8036
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_LeaveChat;",
            ">;"
        }
    .end annotation

    .line 8031
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .line 7722
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7726
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7727
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 7651
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 7748
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 7749
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 7752
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 7753
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7754
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 7698
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$10800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    const-class v2, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    .line 7699
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7706
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7710
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7636
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->newBuilderForType()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

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

    .line 7636
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7636
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->newBuilderForType()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;
    .locals 1

    .line 7829
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->newBuilder()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 7845
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7636
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->toBuilder()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7636
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->toBuilder()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;
    .locals 2

    .line 7838
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 7839
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_LeaveChat;)Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
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

    .line 7717
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
