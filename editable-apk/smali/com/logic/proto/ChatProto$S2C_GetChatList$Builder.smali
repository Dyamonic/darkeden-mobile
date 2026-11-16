.class public final Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_GetChatListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$S2C_GetChatList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$S2C_GetChatListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/logic/proto/ChatProto$Chat;",
            "Lcom/logic/proto/ChatProto$Chat$Builder;",
            "Lcom/logic/proto/ChatProto$ChatOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private chatList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11285
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 11450
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11286
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->maybeForceBuilderInitialization()V

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

    .line 11291
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 11450
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11292
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 11267
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 11267
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;-><init>()V

    return-void
.end method

.method private ensureChatListIsMutable()V
    .locals 3

    .line 11452
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 11453
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11454
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getChatListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/logic/proto/ChatProto$Chat;",
            "Lcom/logic/proto/ChatProto$Chat$Builder;",
            "Lcom/logic/proto/ChatProto$ChatOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11677
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11678
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    iget v2, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 11682
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 11683
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 11684
    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11686
    :cond_1
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11273
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$16700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 11296
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11297
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getChatListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllChatList(Ljava/lang/Iterable;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;)",
            "Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;"
        }
    .end annotation

    .line 11588
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11589
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11590
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11592
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11594
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addChatList(ILcom/logic/proto/ChatProto$Chat$Builder;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 11574
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11575
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11576
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11577
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11579
    :cond_0
    invoke-virtual {p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addChatList(ILcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 11543
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11545
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11547
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11548
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11549
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11551
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addChatList(Lcom/logic/proto/ChatProto$Chat$Builder;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11560
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11561
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11562
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11563
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11565
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addChatList(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11526
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11528
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11530
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11531
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11532
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11534
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addChatListBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 2

    .line 11656
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getChatListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 11657
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    .line 11656
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object v0
.end method

.method public addChatListBuilder(I)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11664
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getChatListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 11665
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v1

    .line 11664
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method

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

    .line 11267
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
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

    .line 11379
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->build()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->build()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$S2C_GetChatList;
    .locals 2

    .line 11325
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    .line 11326
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 11327
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$S2C_GetChatList;
    .locals 3

    .line 11334
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 11335
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    .line 11336
    iget-object v2, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 11338
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11339
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    .line 11341
    :cond_0
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17302(Lcom/logic/proto/ChatProto$S2C_GetChatList;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 11343
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17302(Lcom/logic/proto/ChatProto$S2C_GetChatList;Ljava/util/List;)Ljava/util/List;

    .line 11345
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1

    .line 11302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 11303
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11305
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    goto :goto_0

    .line 11307
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearChatList()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1

    .line 11602
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11603
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11604
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    .line 11605
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11607
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 11362
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 11367
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1

    .line 11351
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatList(I)Lcom/logic/proto/ChatProto$Chat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11485
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11486
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat;

    return-object p1

    .line 11488
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat;

    return-object p1
.end method

.method public getChatListBuilder(I)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11629
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getChatListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method

.method public getChatListBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/logic/proto/ChatProto$Chat$Builder;",
            ">;"
        }
    .end annotation

    .line 11672
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getChatListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChatListCount()I
    .locals 1

    .line 11475
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11476
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 11478
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getChatListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/logic/proto/ChatProto$Chat;",
            ">;"
        }
    .end annotation

    .line 11465
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11466
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11468
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChatListOrBuilder(I)Lcom/logic/proto/ChatProto$ChatOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11636
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11637
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$ChatOrBuilder;

    return-object p1

    .line 11638
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$ChatOrBuilder;

    return-object p1
.end method

.method public getChatListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/logic/proto/ChatProto$ChatOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11646
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 11647
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11649
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11267
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_GetChatList;
    .locals 1

    .line 11320
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11315
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$16700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 11279
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$16800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    .line 11280
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

    .line 11267
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
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

    .line 11436
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17600()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 11442
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11438
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$S2C_GetChatList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11439
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

    .line 11442
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    .line 11444
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 11383
    instance-of v0, p1, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    if-eqz v0, :cond_0

    .line 11384
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1

    .line 11386
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 11392
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11393
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 11394
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17300(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11395
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11396
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17300(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11397
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    goto :goto_0

    .line 11399
    :cond_1
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11400
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17300(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11402
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_1

    .line 11405
    :cond_2
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17300(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11406
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11407
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 11408
    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 11409
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17300(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    .line 11410
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->bitField0_:I

    .line 11412
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17400()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11413
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->getChatListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 11415
    :cond_4
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17300(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 11419
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->access$17500(Lcom/logic/proto/ChatProto$S2C_GetChatList;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    .line 11420
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 11697
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    return-object p1
.end method

.method public removeChatList(I)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11615
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11616
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11617
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11618
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11620
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setChatList(ILcom/logic/proto/ChatProto$Chat$Builder;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 11513
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11514
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11515
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11516
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11518
    :cond_0
    invoke-virtual {p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChatList(ILcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 11496
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 11498
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11500
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->ensureChatListIsMutable()V

    .line 11501
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->chatList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11502
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->onChanged()V

    goto :goto_0

    .line 11504
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

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

    .line 11267
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
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

    .line 11357
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
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

    .line 11373
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

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

    .line 11267
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 11691
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_GetChatList$Builder;

    return-object p1
.end method
