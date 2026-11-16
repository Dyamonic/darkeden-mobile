.class public final Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_LeaveChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$S2C_LeaveChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$S2C_LeaveChatOrBuilder;"
    }
.end annotation


# instance fields
.field private code_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8325
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 8451
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    .line 8326
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->maybeForceBuilderInitialization()V

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

    .line 8331
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 8451
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    .line 8332
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 8307
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 8307
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8313
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$11600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 8336
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->access$12000()Z

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

    .line 8307
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
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

    .line 8405
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->build()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->build()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$S2C_LeaveChat;
    .locals 2

    .line 8360
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    .line 8361
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8362
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$S2C_LeaveChat;
    .locals 2

    .line 8369
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 8370
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->access$12202(Lcom/logic/proto/ChatProto$S2C_LeaveChat;I)I

    .line 8371
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 1

    .line 8341
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 8342
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    return-object p0
.end method

.method public clearCode()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8491
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    .line 8492
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->onChanged()V

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 8388
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 8393
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 1

    .line 8377
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/logic/proto/ChatProto$CODE;
    .locals 1

    .line 8471
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    invoke-static {v0}, Lcom/logic/proto/ChatProto$CODE;->valueOf(I)Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8472
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    :cond_0
    return-object v0
.end method

.method public getCodeValue()I
    .locals 1

    .line 8456
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8307
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_LeaveChat;
    .locals 1

    .line 8355
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8350
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$11600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 8319
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$11700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    .line 8320
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

    .line 8307
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
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

    .line 8439
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->access$12400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8445
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_LeaveChat;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8441
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$S2C_LeaveChat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8442
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

    .line 8445
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_LeaveChat;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    .line 8447
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 8409
    instance-of v0, p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    if-eqz v0, :cond_0

    .line 8410
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_LeaveChat;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1

    .line 8412
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$S2C_LeaveChat;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 8418
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_LeaveChat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8419
    :cond_0
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->access$12200(Lcom/logic/proto/ChatProto$S2C_LeaveChat;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 8420
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->getCodeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->setCodeValue(I)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    .line 8422
    :cond_1
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat;->access$12300(Lcom/logic/proto/ChatProto$S2C_LeaveChat;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    .line 8423
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->onChanged()V

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 8504
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    return-object p1
.end method

.method public setCode(Lcom/logic/proto/ChatProto$CODE;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8479
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8482
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    .line 8483
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->onChanged()V

    return-object p0
.end method

.method public setCodeValue(I)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8462
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->code_:I

    .line 8463
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->onChanged()V

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

    .line 8307
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
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

    .line 8383
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
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

    .line 8399
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    return-object p1
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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

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

    .line 8307
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 8498
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_LeaveChat$Builder;

    return-object p1
.end method
