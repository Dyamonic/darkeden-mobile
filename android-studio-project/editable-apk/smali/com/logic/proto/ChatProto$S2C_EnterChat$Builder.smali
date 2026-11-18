.class public final Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$S2C_EnterChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$S2C_EnterChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$S2C_EnterChatOrBuilder;"
    }
.end annotation


# instance fields
.field private code_:I

.field private userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/logic/proto/ChatProto$User;",
            "Lcom/logic/proto/ChatProto$User$Builder;",
            "Lcom/logic/proto/ChatProto$UserOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private user_:Lcom/logic/proto/ChatProto$User;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7275
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 7415
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    const/4 v0, 0x0

    .line 7460
    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7276
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->maybeForceBuilderInitialization()V

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

    .line 7281
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 7415
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    const/4 p1, 0x0

    .line 7460
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7282
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 7257
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 7257
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7263
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$9600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUserFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/logic/proto/ChatProto$User;",
            "Lcom/logic/proto/ChatProto$User$Builder;",
            "Lcom/logic/proto/ChatProto$UserOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7566
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7567
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 7569
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->getUser()Lcom/logic/proto/ChatProto$User;

    move-result-object v1

    .line 7570
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7571
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7572
    iput-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7574
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 7286
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->access$10000()Z

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

    .line 7257
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
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

    .line 7366
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->build()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->build()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$S2C_EnterChat;
    .locals 2

    .line 7316
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    .line 7317
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7318
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$S2C_EnterChat;
    .locals 2

    .line 7325
    new-instance v0, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 7326
    iget v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->access$10202(Lcom/logic/proto/ChatProto$S2C_EnterChat;I)I

    .line 7327
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 7328
    iget-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->access$10302(Lcom/logic/proto/ChatProto$S2C_EnterChat;Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User;

    goto :goto_0

    .line 7330
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/logic/proto/ChatProto$User;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->access$10302(Lcom/logic/proto/ChatProto$S2C_EnterChat;Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User;

    .line 7332
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clear()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 2

    .line 7291
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 7292
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    .line 7294
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7295
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    goto :goto_0

    .line 7297
    :cond_0
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7298
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearCode()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 7455
    iput v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    .line 7456
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 7349
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 7354
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    return-object p1
.end method

.method public clearUser()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 2

    .line 7531
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7532
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7533
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

    goto :goto_0

    .line 7535
    :cond_0
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7536
    iput-object v1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1

    .line 7338
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->clone()Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/logic/proto/ChatProto$CODE;
    .locals 1

    .line 7435
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    invoke-static {v0}, Lcom/logic/proto/ChatProto$CODE;->valueOf(I)Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7436
    sget-object v0, Lcom/logic/proto/ChatProto$CODE;->UNRECOGNIZED:Lcom/logic/proto/ChatProto$CODE;

    :cond_0
    return-object v0
.end method

.method public getCodeValue()I
    .locals 1

    .line 7420
    iget v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$S2C_EnterChat;
    .locals 1

    .line 7311
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7306
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$9600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/logic/proto/ChatProto$User;
    .locals 1

    .line 7473
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 7474
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    :cond_0
    return-object v0

    .line 7476
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$User;

    return-object v0
.end method

.method public getUserBuilder()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 7546
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

    .line 7547
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->getUserFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$User$Builder;

    return-object v0
.end method

.method public getUserOrBuilder()Lcom/logic/proto/ChatProto$UserOrBuilder;
    .locals 1

    .line 7553
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 7554
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$UserOrBuilder;

    return-object v0

    .line 7556
    :cond_0
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    if-nez v0, :cond_1

    .line 7557
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasUser()Z
    .locals 1

    .line 7467
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

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

    .line 7269
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$9700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    const-class v2, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    .line 7270
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

    .line 7257
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
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

    .line 7403
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->access$10500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7409
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7405
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$S2C_EnterChat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7406
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

    .line 7409
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    .line 7411
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 7370
    instance-of v0, p1, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    if-eqz v0, :cond_0

    .line 7371
    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1

    .line 7373
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 7379
    invoke-static {}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getDefaultInstance()Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7380
    :cond_0
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->access$10200(Lcom/logic/proto/ChatProto$S2C_EnterChat;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 7381
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getCodeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->setCodeValue(I)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    .line 7383
    :cond_1
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7384
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getUser()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeUser(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    .line 7386
    :cond_2
    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->access$10400(Lcom/logic/proto/ChatProto$S2C_EnterChat;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    .line 7387
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 7585
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    return-object p1
.end method

.method public mergeUser(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7513
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 7514
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    if-eqz v0, :cond_0

    .line 7516
    invoke-static {v0}, Lcom/logic/proto/ChatProto$User;->newBuilder(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User$Builder;->buildPartial()Lcom/logic/proto/ChatProto$User;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    goto :goto_0

    .line 7518
    :cond_0
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7520
    :goto_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

    goto :goto_1

    .line 7522
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public setCode(Lcom/logic/proto/ChatProto$CODE;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7443
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7446
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$CODE;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    .line 7447
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

    return-object p0
.end method

.method public setCodeValue(I)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7426
    iput p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->code_:I

    .line 7427
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

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

    .line 7257
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
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

    .line 7344
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
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

    .line 7360
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

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

    .line 7257
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 7579
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;

    return-object p1
.end method

.method public setUser(Lcom/logic/proto/ChatProto$User$Builder;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7500
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7501
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User$Builder;->build()Lcom/logic/proto/ChatProto$User;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7502
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

    goto :goto_0

    .line 7504
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User$Builder;->build()Lcom/logic/proto/ChatProto$User;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setUser(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7483
    iget-object v0, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->userBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7485
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7487
    iput-object p1, p0, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->user_:Lcom/logic/proto/ChatProto$User;

    .line 7488
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$S2C_EnterChat$Builder;->onChanged()V

    goto :goto_0

    .line 7490
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
