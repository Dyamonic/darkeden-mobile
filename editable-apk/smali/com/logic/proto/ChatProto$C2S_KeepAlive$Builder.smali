.class public final Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$C2S_KeepAliveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$C2S_KeepAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$C2S_KeepAliveOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5466
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 5467
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->maybeForceBuilderInitialization()V

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

    .line 5472
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 5473
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 5448
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 5448
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5454
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$6500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 5477
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->access$6900()Z

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

    .line 5448
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
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

    .line 5543
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->build()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->build()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$C2S_KeepAlive;
    .locals 2

    .line 5499
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    .line 5500
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5501
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$C2S_KeepAlive;
    .locals 2

    .line 5508
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 5509
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 0

    .line 5482
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 5526
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 5531
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 1

    .line 5515
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5448
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_KeepAlive;
    .locals 1

    .line 5494
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5489
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$6500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5460
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$6600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    const-class v2, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    .line 5461
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

    .line 5448
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
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

    .line 5574
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->access$7200()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5580
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5576
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$C2S_KeepAlive;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5577
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

    .line 5580
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    .line 5582
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 5547
    instance-of v0, p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    if-eqz v0, :cond_0

    .line 5548
    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1

    .line 5550
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 5556
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5557
    :cond_0
    invoke-static {p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->access$7100(Lcom/logic/proto/ChatProto$C2S_KeepAlive;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    .line 5558
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->onChanged()V

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5594
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    return-object p1
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

    .line 5448
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
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

    .line 5521
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
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

    .line 5537
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

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

    .line 5448
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5588
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    return-object p1
.end method
