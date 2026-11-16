.class public final Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$C2S_GetChatListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$C2S_GetChatList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$C2S_GetChatListOrBuilder;"
    }
.end annotation


# instance fields
.field private readFlag_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10743
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 10744
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->maybeForceBuilderInitialization()V

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

    .line 10749
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 10750
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 10725
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 10725
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10731
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$15700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 10754
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->access$16100()Z

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

    .line 10725
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
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

    .line 10823
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->build()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->build()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$C2S_GetChatList;
    .locals 2

    .line 10778
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    .line 10779
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 10780
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$C2S_GetChatList;
    .locals 2

    .line 10787
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$C2S_GetChatList;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 10788
    iget v1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->readFlag_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->access$16302(Lcom/logic/proto/ChatProto$C2S_GetChatList;I)I

    .line 10789
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 1

    .line 10759
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 10760
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->readFlag_:I

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 10806
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 10811
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    return-object p1
.end method

.method public clearReadFlag()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 10902
    iput v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->readFlag_:I

    .line 10903
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 1

    .line 10795
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_GetChatList;
    .locals 1

    .line 10773
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10768
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$15700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getReadFlag()I
    .locals 1

    .line 10878
    iget v0, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->readFlag_:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 10737
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$15800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    const-class v2, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    .line 10738
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

    .line 10725
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
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

    .line 10857
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->access$16500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 10863
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10859
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$C2S_GetChatList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10860
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

    .line 10863
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    .line 10865
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10827
    instance-of v0, p1, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    if-eqz v0, :cond_0

    .line 10828
    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1

    .line 10830
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10836
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10837
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getReadFlag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10838
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->getReadFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->setReadFlag(I)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    .line 10840
    :cond_1
    invoke-static {p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->access$16400(Lcom/logic/proto/ChatProto$C2S_GetChatList;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    .line 10841
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->onChanged()V

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 10915
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
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

    .line 10801
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    return-object p1
.end method

.method public setReadFlag(I)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10889
    iput p1, p0, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->readFlag_:I

    .line 10890
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->onChanged()V

    return-object p0
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

    .line 10725
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
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

    .line 10817
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

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

    .line 10725
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 10909
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    return-object p1
.end method
