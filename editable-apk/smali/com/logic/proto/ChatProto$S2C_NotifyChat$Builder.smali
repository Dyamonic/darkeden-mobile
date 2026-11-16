.class public final Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_NotifyChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$S2C_NotifyChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$S2C_NotifyChatOrBuilder;"
    }
.end annotation


# instance fields
.field private chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/logic/proto/ChatProto$Chat;",
            "Lcom/logic/proto/ChatProto$Chat$Builder;",
            "Lcom/logic/proto/ChatProto$ChatOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private chat_:Lcom/logic/proto/ChatProto$Chat;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10160
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 10294
    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10161
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->maybeForceBuilderInitialization()V

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

    .line 10166
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 10294
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10167
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 10142
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 10142
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;-><init>()V

    return-void
.end method

.method private getChatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/logic/proto/ChatProto$Chat;",
            "Lcom/logic/proto/ChatProto$Chat$Builder;",
            "Lcom/logic/proto/ChatProto$ChatOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10400
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10401
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 10403
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    .line 10404
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 10405
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 10406
    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10408
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10148
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$14700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 10171
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->access$15100()Z

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

    .line 10142
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
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

    .line 10248
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->build()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->build()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$S2C_NotifyChat;
    .locals 2

    .line 10199
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    .line 10200
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 10201
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$S2C_NotifyChat;
    .locals 2

    .line 10208
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 10209
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 10210
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->access$15302(Lcom/logic/proto/ChatProto$S2C_NotifyChat;Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat;

    goto :goto_0

    .line 10212
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/logic/proto/ChatProto$Chat;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->access$15302(Lcom/logic/proto/ChatProto$S2C_NotifyChat;Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat;

    .line 10214
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 2

    .line 10176
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 10177
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10178
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    goto :goto_0

    .line 10180
    :cond_0
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10181
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearChat()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 2

    .line 10365
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10366
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10367
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->onChanged()V

    goto :goto_0

    .line 10369
    :cond_0
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10370
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 10231
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 10236
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1

    .line 10220
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChat()Lcom/logic/proto/ChatProto$Chat;
    .locals 1

    .line 10307
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 10308
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    :cond_0
    return-object v0

    .line 10310
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$Chat;

    return-object v0
.end method

.method public getChatBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 10380
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->onChanged()V

    .line 10381
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->getChatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object v0
.end method

.method public getChatOrBuilder()Lcom/logic/proto/ChatProto$ChatOrBuilder;
    .locals 1

    .line 10387
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 10388
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$ChatOrBuilder;

    return-object v0

    .line 10390
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-nez v0, :cond_1

    .line 10391
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10142
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_NotifyChat;
    .locals 1

    .line 10194
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10189
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$14700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasChat()Z
    .locals 1

    .line 10301
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 10154
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$14800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    .line 10155
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeChat(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10347
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 10348
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v0, :cond_0

    .line 10350
    invoke-static {v0}, Lcom/logic/proto/ChatProto$Chat;->newBuilder(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    goto :goto_0

    .line 10352
    :cond_0
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10354
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->onChanged()V

    goto :goto_1

    .line 10356
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
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

    .line 10142
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
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

    .line 10282
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->access$15500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 10288
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10284
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$S2C_NotifyChat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10285
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

    .line 10288
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    .line 10290
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10252
    instance-of v0, p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    if-eqz v0, :cond_0

    .line 10253
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1

    .line 10255
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10261
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10262
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->hasChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10263
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeChat(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    .line 10265
    :cond_1
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->access$15400(Lcom/logic/proto/ChatProto$S2C_NotifyChat;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    .line 10266
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->onChanged()V

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 10419
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    return-object p1
.end method

.method public setChat(Lcom/logic/proto/ChatProto$Chat$Builder;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10334
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10335
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10336
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->onChanged()V

    goto :goto_0

    .line 10338
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChat(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10317
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 10319
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10321
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 10322
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->onChanged()V

    goto :goto_0

    .line 10324
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
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

    .line 10142
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
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

    .line 10226
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
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

    .line 10242
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

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

    .line 10142
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 10413
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_NotifyChat$Builder;

    return-object p1
.end method
