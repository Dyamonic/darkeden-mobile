.class public final Lcom/logic/proto/ChatProto$S2C_KeepAlive;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_KeepAliveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S2C_KeepAlive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_KeepAlive;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_KeepAlive;",
            ">;"
        }
    .end annotation
.end field

.field public static final TV_MSEC_FIELD_NUMBER:I = 0x3

.field public static final TV_SEC_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private code_:I

.field private memoizedIsInitialized:B

.field private tvMsec_:J

.field private tvSec_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6287
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    .line 6295
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5685
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5806
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 5686
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    const-wide/16 v0, 0x0

    .line 5687
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvSec_:J

    .line 5688
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvMsec_:J

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

    .line 5700
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;-><init>()V

    .line 5702
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5706
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 5710
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x11

    if-eq v2, v4, :cond_2

    const/16 v4, 0x19

    if-eq v2, v4, :cond_1

    .line 5732
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5728
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvMsec_:J

    goto :goto_0

    .line 5723
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvSec_:J

    goto :goto_0

    .line 5716
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 5718
    iput v2, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I
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

    .line 5743
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5744
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5741
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5746
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5747
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->makeExtensionsImmutable()V

    .line 5748
    throw p1

    .line 5746
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5747
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5676
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5683
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5806
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 5676
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$7800()Z
    .locals 1

    .line 5676
    sget-boolean v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)I
    .locals 0

    .line 5676
    iget p0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    return p0
.end method

.method static synthetic access$8002(Lcom/logic/proto/ChatProto$S2C_KeepAlive;I)I
    .locals 0

    .line 5676
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    return p1
.end method

.method static synthetic access$8102(Lcom/logic/proto/ChatProto$S2C_KeepAlive;J)J
    .locals 0

    .line 5676
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvSec_:J

    return-wide p1
.end method

.method static synthetic access$8202(Lcom/logic/proto/ChatProto$S2C_KeepAlive;J)J
    .locals 0

    .line 5676
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvMsec_:J

    return-wide p1
.end method

.method static synthetic access$8300(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 5676
    iget-object p0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$8400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 5676
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_KeepAlive;
    .locals 1

    .line 6291
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5752
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$7400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 1

    .line 5968
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->toBuilder()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5971
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->toBuilder()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5941
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5942
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5948
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5949
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5909
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5915
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5954
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5955
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5961
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5962
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5929
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5930
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5936
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    .line 5937
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5898
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5904
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5919
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive;
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

    .line 5925
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_KeepAlive;",
            ">;"
        }
    .end annotation

    .line 6306
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
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

    .line 5860
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    if-nez v1, :cond_1

    .line 5861
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5863
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    .line 5866
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    iget v2, p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 5867
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvSec()J

    move-result-wide v1

    .line 5868
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvSec()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 5869
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvMsec()J

    move-result-wide v1

    .line 5870
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvMsec()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    .line 5871
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    return v0
.end method

.method public getCode()Lcom/logic/proto/ChatProto$CODE;
    .locals 1

    .line 5776
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    invoke-static {v0}, Lcom/logic/proto/ChatProto$CODE;->valueOf(I)Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5777
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    :cond_0
    return-object v0
.end method

.method public getCodeValue()I
    .locals 1

    .line 5769
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5676
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5676
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive;
    .locals 1

    .line 6316
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_KeepAlive;",
            ">;"
        }
    .end annotation

    .line 6311
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 5834
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5838
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    sget-object v2, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    invoke-virtual {v2}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 5839
    iget v2, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    .line 5840
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5842
    :cond_1
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvSec_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 5844
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5846
    :cond_2
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvMsec_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 5848
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5850
    :cond_3
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5851
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedSize:I

    return v0
.end method

.method public getTvMsec()J
    .locals 2

    .line 5803
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvMsec_:J

    return-wide v0
.end method

.method public getTvSec()J
    .locals 2

    .line 5790
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvSec_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5694
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 5877
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 5878
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 5881
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 5883
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5886
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvSec()J

    move-result-wide v1

    .line 5885
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5889
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvMsec()J

    move-result-wide v1

    .line 5888
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 5890
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5891
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5758
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$7500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    .line 5759
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5809
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5813
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5676
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

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

    .line 5676
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5676
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 1

    .line 5966
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->newBuilder()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 5982
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5676
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->toBuilder()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5676
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->toBuilder()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 2

    .line 5975
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 5976
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

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

    .line 5820
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    sget-object v1, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    invoke-virtual {v1}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 5821
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->code_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5823
    :cond_0
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvSec_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 5824
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 5826
    :cond_1
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->tvMsec_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 5827
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 5829
    :cond_2
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
