.class public final Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$C2S_ChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$C2S_Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$C2S_Chat$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$C2S_ChatOrBuilder;"
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

    .line 8852
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 8986
    iput-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 8853
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->maybeForceBuilderInitialization()V

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

    .line 8858
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 8986
    iput-object p1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 8859
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 8834
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 8834
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;-><init>()V

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

    .line 9092
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9093
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 9095
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    .line 9096
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9097
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9098
    iput-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 9100
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8840
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 8863
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_Chat;->access$13000()Z

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

    .line 8834
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
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

    .line 8940
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->build()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->build()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$C2S_Chat;
    .locals 2

    .line 8891
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    .line 8892
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_Chat;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8893
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$C2S_Chat;
    .locals 2

    .line 8900
    new-instance v0, Lcom/logic/proto/ChatProto$C2S_Chat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$C2S_Chat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 8901
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 8902
    iget-object v1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$C2S_Chat;->access$13202(Lcom/logic/proto/ChatProto$C2S_Chat;Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat;

    goto :goto_0

    .line 8904
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/logic/proto/ChatProto$Chat;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$C2S_Chat;->access$13202(Lcom/logic/proto/ChatProto$C2S_Chat;Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat;

    .line 8906
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clear()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 2

    .line 8868
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 8869
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8870
    iput-object v1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    goto :goto_0

    .line 8872
    :cond_0
    iput-object v1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 8873
    iput-object v1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearChat()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 2

    .line 9057
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9058
    iput-object v1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 9059
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->onChanged()V

    goto :goto_0

    .line 9061
    :cond_0
    iput-object v1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 9062
    iput-object v1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 8923
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 8928
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 1

    .line 8912
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->clone()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChat()Lcom/logic/proto/ChatProto$Chat;
    .locals 1

    .line 8999
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9000
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9002
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$Chat;

    return-object v0
.end method

.method public getChatBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 9072
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->onChanged()V

    .line 9073
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->getChatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object v0
.end method

.method public getChatOrBuilder()Lcom/logic/proto/ChatProto$ChatOrBuilder;
    .locals 1

    .line 9079
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9080
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$ChatOrBuilder;

    return-object v0

    .line 9082
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-nez v0, :cond_1

    .line 9083
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8834
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$C2S_Chat;
    .locals 1

    .line 8886
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8881
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasChat()Z
    .locals 1

    .line 8993
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

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

    .line 8846
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$12700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$C2S_Chat;

    const-class v2, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    .line 8847
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeChat(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9039
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9040
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    if-eqz v0, :cond_0

    .line 9042
    invoke-static {v0}, Lcom/logic/proto/ChatProto$Chat;->newBuilder(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    goto :goto_0

    .line 9044
    :cond_0
    iput-object p1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 9046
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->onChanged()V

    goto :goto_1

    .line 9048
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

    .line 8834
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
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

    .line 8974
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_Chat;->access$13400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8980
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_Chat;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8976
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$C2S_Chat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8977
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

    .line 8980
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_Chat;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    .line 8982
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 8944
    instance-of v0, p1, Lcom/logic/proto/ChatProto$C2S_Chat;

    if-eqz v0, :cond_0

    .line 8945
    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$C2S_Chat;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1

    .line 8947
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$C2S_Chat;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 8953
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8954
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_Chat;->hasChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8955
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_Chat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeChat(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    .line 8957
    :cond_1
    invoke-static {p1}, Lcom/logic/proto/ChatProto$C2S_Chat;->access$13300(Lcom/logic/proto/ChatProto$C2S_Chat;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    .line 8958
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->onChanged()V

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 9111
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    return-object p1
.end method

.method public setChat(Lcom/logic/proto/ChatProto$Chat$Builder;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9026
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9027
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 9028
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->onChanged()V

    goto :goto_0

    .line 9030
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChat(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9009
    iget-object v0, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chatBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9011
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9013
    iput-object p1, p0, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->chat_:Lcom/logic/proto/ChatProto$Chat;

    .line 9014
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->onChanged()V

    goto :goto_0

    .line 9016
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

    .line 8834
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
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

    .line 8918
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
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

    .line 8934
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

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

    .line 8834
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 9105
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    return-object p1
.end method
