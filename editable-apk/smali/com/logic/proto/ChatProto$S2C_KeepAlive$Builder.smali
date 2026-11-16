.class public final Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_KeepAliveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$S2C_KeepAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$S2C_KeepAliveOrBuilder;"
    }
.end annotation


# instance fields
.field private code_:I

.field private tvMsec_:J

.field private tvSec_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6010
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 6148
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    .line 6011
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 6016
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 6148
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    .line 6017
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 5992
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 5992
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5998
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$7400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 6021
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->access$7800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 6096
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->build()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->build()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$S2C_KeepAlive;
    .locals 2

    .line 6049
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    .line 6050
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6051
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$S2C_KeepAlive;
    .locals 3

    .line 6058
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 6059
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->access$8002(Lcom/logic/proto/ChatProto$S2C_KeepAlive;I)I

    .line 6060
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvSec_:J

    invoke-static {v0, v1, v2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->access$8102(Lcom/logic/proto/ChatProto$S2C_KeepAlive;J)J

    .line 6061
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvMsec_:J

    invoke-static {v0, v1, v2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->access$8202(Lcom/logic/proto/ChatProto$S2C_KeepAlive;J)J

    .line 6062
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 2

    .line 6026
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6027
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    const-wide/16 v0, 0x0

    .line 6029
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvSec_:J

    .line 6031
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvMsec_:J

    return-object p0
.end method

.method public clearCode()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 6188
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    .line 6189
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 6079
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 6084
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    return-object p1
.end method

.method public clearTvMsec()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 6264
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvMsec_:J

    .line 6265
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTvSec()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 6226
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvSec_:J

    .line 6227
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 1

    .line 6068
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/logic/proto/ChatProto$CODE;
    .locals 1

    .line 6168
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    invoke-static {v0}, Lcom/logic/proto/ChatProto$CODE;->valueOf(I)Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6169
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    :cond_0
    return-object v0
.end method

.method public getCodeValue()I
    .locals 1

    .line 6153
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5992
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_KeepAlive;
    .locals 1

    .line 6044
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6039
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$7400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getTvMsec()J
    .locals 2

    .line 6240
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvMsec_:J

    return-wide v0
.end method

.method public getTvSec()J
    .locals 2

    .line 6202
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvSec_:J

    return-wide v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 6004
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$7500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    .line 6005
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 5992
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 5992
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 5992
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 5992
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 2
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

    const/4 v0, 0x0

    .line 6136
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->access$8400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6138
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$S2C_KeepAlive;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6139
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 6142
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    .line 6144
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 6100
    instance-of v0, p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    if-eqz v0, :cond_0

    .line 6101
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1

    .line 6103
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 6109
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6110
    :cond_0
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->access$8000(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6111
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getCodeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setCodeValue(I)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    .line 6113
    :cond_1
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvSec()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 6114
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvSec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setTvSec(J)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    .line 6116
    :cond_2
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvMsec()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 6117
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setTvMsec(J)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    .line 6119
    :cond_3
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->access$8300(Lcom/logic/proto/ChatProto$S2C_KeepAlive;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    .line 6120
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 6277
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    return-object p1
.end method

.method public setCode(Lcom/logic/proto/ChatProto$CODE;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6176
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6179
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    .line 6180
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onChanged()V

    return-object p0
.end method

.method public setCodeValue(I)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6159
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->code_:I

    .line 6160
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 6074
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 6090
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    return-object p1
.end method

.method public setTvMsec(J)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6251
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvMsec_:J

    .line 6252
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onChanged()V

    return-object p0
.end method

.method public setTvSec(J)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6213
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->tvSec_:J

    .line 6214
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5992
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 6271
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_KeepAlive$Builder;

    return-object p1
.end method
