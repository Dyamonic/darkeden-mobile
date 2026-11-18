.class public final Lcom/logic/proto/ChatProto$S2C_Chat;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_ChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S2C_Chat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$S2C_Chat$Builder;
    }
.end annotation


# static fields
.field public static final CHAT_FIELD_NUMBER:I = 0x2

.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_Chat;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_Chat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private chat_:Lcom/logic/proto/ChatProto$Chat;

.field private code_:I

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9822
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_Chat;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_Chat;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_Chat;

    .line 9830
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_Chat$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$S2C_Chat$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 9310
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 9194
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

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

    .line 9206
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;-><init>()V

    .line 9208
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9212
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 9216
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 9241
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$S2C_Chat;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9229
    iget-object v3, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v3, :cond_2

    .line 9230
    invoke-virtual {v3}, Lcom/logic/proto/ChatProto$Chat;->toBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v2

    .line 9232
    :cond_2
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/logic/proto/ChatProto$Chat;

    iput-object v3, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v2, :cond_0

    .line 9234
    invoke-virtual {v2, v3}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 9235
    invoke-virtual {v2}, Lcom/logic/proto/ChatProto$Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v2

    iput-object v2, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    goto :goto_0

    .line 9222
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 9224
    iput v2, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I
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

    .line 9252
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 9253
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 9250
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9255
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9256
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->makeExtensionsImmutable()V

    .line 9257
    throw p1

    .line 9255
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9256
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9184
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_Chat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 9191
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 9310
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 9184
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_Chat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$14000()Z
    .locals 1

    .line 9184
    sget-boolean v0, Lcom/logic/proto/ChatProto$S2C_Chat;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$14200(Lcom/logic/proto/ChatProto$S2C_Chat;)I
    .locals 0

    .line 9184
    iget p0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    return p0
.end method

.method static synthetic access$14202(Lcom/logic/proto/ChatProto$S2C_Chat;I)I
    .locals 0

    .line 9184
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    return p1
.end method

.method static synthetic access$14302(Lcom/logic/proto/ChatProto$S2C_Chat;Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat;
    .locals 0

    .line 9184
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    return-object p1
.end method

.method static synthetic access$14400(Lcom/logic/proto/ChatProto$S2C_Chat;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 9184
    iget-object p0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$14500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 9184
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_Chat;
    .locals 1

    .line 9826
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9261
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$13600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;
    .locals 1

    .line 9464
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_Chat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_Chat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$S2C_Chat;)Lcom/logic/proto/ChatProto$S2C_Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 9467
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_Chat;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_Chat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_Chat;)Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9437
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 9438
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9444
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 9445
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9405
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9411
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9450
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 9451
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9457
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 9458
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9425
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 9426
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9432
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    .line 9433
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9394
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9400
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9415
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_Chat;
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

    .line 9421
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_Chat;",
            ">;"
        }
    .end annotation

    .line 9841
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

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

    .line 9357
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$S2C_Chat;

    if-nez v1, :cond_1

    .line 9358
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9360
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_Chat;

    .line 9363
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    iget v2, p1, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 9364
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->hasChat()Z

    move-result v1

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_Chat;->hasChat()Z

    move-result v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    .line 9365
    :goto_1
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->hasChat()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 9366
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    .line 9367
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_Chat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/logic/proto/ChatProto$Chat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 9369
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    return v0
.end method

.method public getChat()Lcom/logic/proto/ChatProto$Chat;
    .locals 1

    .line 9301
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChatOrBuilder()Lcom/logic/proto/ChatProto$ChatOrBuilder;
    .locals 1

    .line 9307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/logic/proto/ChatProto$CODE;
    .locals 1

    .line 9285
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    invoke-static {v0}, Lcom/logic/proto/ChatProto$CODE;->valueOf(I)Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9286
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    :cond_0
    return-object v0
.end method

.method public getCodeValue()I
    .locals 1

    .line 9278
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9184
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9184
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_Chat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_Chat;
    .locals 1

    .line 9851
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_Chat;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$S2C_Chat;",
            ">;"
        }
    .end annotation

    .line 9846
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 9335
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9339
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    sget-object v2, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    invoke-virtual {v2}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 9340
    iget v2, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    .line 9341
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9343
    :cond_1
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 9345
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9347
    :cond_2
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9348
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 9200
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasChat()Z
    .locals 1

    .line 9295
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->chat_:Lcom/logic/proto/ChatProto$Chat;

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

    .line 9375
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 9376
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 9379
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_Chat;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 9381
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    add-int/2addr v0, v1

    .line 9382
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->hasChat()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 9384
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logic/proto/ChatProto$Chat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 9386
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9387
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 9267
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$13700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_Chat;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    .line 9268
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 9313
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 9317
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9184
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

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

    .line 9184
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_Chat;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9184
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->newBuilderForType()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;
    .locals 1

    .line 9462
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_Chat;->newBuilder()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$S2C_Chat$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 9478
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9184
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9184
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->toBuilder()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$S2C_Chat$Builder;
    .locals 2

    .line 9471
    sget-object v0, Lcom/logic/proto/ChatProto$S2C_Chat;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$S2C_Chat;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 9472
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$S2C_Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_Chat;)Lcom/logic/proto/ChatProto$S2C_Chat$Builder;

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

    .line 9324
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    sget-object v1, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    invoke-virtual {v1}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 9325
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->code_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9327
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 9328
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_Chat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9330
    :cond_1
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_Chat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
