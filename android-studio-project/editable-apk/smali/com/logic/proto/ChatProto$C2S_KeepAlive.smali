.class public final Lcom/logic/proto/ChatProto$C2S_KeepAlive;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$C2S_KeepAliveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C2S_KeepAlive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_KeepAlive;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_KeepAlive;",
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

    .line 5604
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    .line 5612
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5238
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5296
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedIsInitialized:B

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

    .line 5250
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;-><init>()V

    .line 5252
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5255
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 5259
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5265
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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

    .line 5276
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5277
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5274
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5279
    :goto_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5280
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->makeExtensionsImmutable()V

    .line 5281
    throw p1

    .line 5279
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5280
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5229
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5236
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5296
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 5229
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$6900()Z
    .locals 1

    .line 5229
    sget-boolean v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 5229
    iget-object p0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$7200()Lcom/google/protobuf/Parser;
    .locals 1

    .line 5229
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_KeepAlive;
    .locals 1

    .line 5608
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5285
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$6500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 1

    .line 5424
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->toBuilder()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5427
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->toBuilder()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5397
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5398
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5404
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5405
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5365
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5371
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5410
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5411
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5417
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5418
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5385
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5386
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5392
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5393
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5354
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5360
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5375
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive;
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

    .line 5381
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_KeepAlive;",
            ">;"
        }
    .end annotation

    .line 5623
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

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

    .line 5329
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    if-nez v1, :cond_1

    .line 5330
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5332
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    .line 5335
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

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

    .line 5229
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5229
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive;
    .locals 1

    .line 5633
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$C2S_KeepAlive;",
            ">;"
        }
    .end annotation

    .line 5628
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .line 5315
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5319
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5320
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5244
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 5341
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 5342
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 5345
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 5346
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5347
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5291
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$6600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    const-class v2, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    .line 5292
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5299
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5303
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5229
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->newBuilderForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5229
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5229
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->newBuilderForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 1

    .line 5422
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->newBuilder()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 5438
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5229
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->toBuilder()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5229
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->toBuilder()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 2

    .line 5431
    sget-object v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 5432
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5310
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
