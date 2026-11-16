.class public final Lcom/logic/proto/ChatProto$Chat$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$ChatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$Chat$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$ChatOrBuilder;"
    }
.end annotation


# instance fields
.field private content_:Ljava/lang/Object;

.field private createTime_:J

.field private gameId_:I

.field private imgUrl_:Ljava/lang/Object;

.field private isSupporter_:I

.field private msgId_:J

.field private msgType_:I

.field private pic_:Lcom/google/protobuf/ByteString;

.field private receiverId_:J

.field private roleId_:Ljava/lang/Object;

.field private roleName_:Ljava/lang/Object;

.field private senderId_:J

.field private senderName_:Ljava/lang/Object;

.field private serverId_:Ljava/lang/Object;

.field private serverName_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3975
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4312
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4401
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->pic_:Lcom/google/protobuf/ByteString;

    .line 4442
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4531
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4620
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4709
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4836
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 5001
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 3976
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 3981
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 4312
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4401
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->pic_:Lcom/google/protobuf/ByteString;

    .line 4442
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4531
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4620
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4709
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4836
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 5001
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 3982
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 3957
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 3957
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3963
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3986
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->access$3700()Z

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

    .line 3957
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;
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

    .line 4100
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$Chat;
    .locals 2

    .line 4040
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    .line 4041
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4042
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->buildPartial()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$Chat;
    .locals 3

    .line 4049
    new-instance v0, Lcom/logic/proto/ChatProto$Chat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$Chat;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 4050
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderId_:J

    invoke-static {v0, v1, v2}, Lcom/logic/proto/ChatProto$Chat;->access$3902(Lcom/logic/proto/ChatProto$Chat;J)J

    .line 4051
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->receiverId_:J

    invoke-static {v0, v1, v2}, Lcom/logic/proto/ChatProto$Chat;->access$4002(Lcom/logic/proto/ChatProto$Chat;J)J

    .line 4052
    iget v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4102(Lcom/logic/proto/ChatProto$Chat;I)I

    .line 4053
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4202(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4054
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->pic_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4302(Lcom/logic/proto/ChatProto$Chat;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4055
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4402(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4056
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4502(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4057
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4602(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4058
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4702(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4059
    iget v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgType_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4802(Lcom/logic/proto/ChatProto$Chat;I)I

    .line 4060
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$4902(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4061
    iget v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->gameId_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$5002(Lcom/logic/proto/ChatProto$Chat;I)I

    .line 4062
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->createTime_:J

    invoke-static {v0, v1, v2}, Lcom/logic/proto/ChatProto$Chat;->access$5102(Lcom/logic/proto/ChatProto$Chat;J)J

    .line 4063
    iget-object v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$5202(Lcom/logic/proto/ChatProto$Chat;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4064
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgId_:J

    invoke-static {v0, v1, v2}, Lcom/logic/proto/ChatProto$Chat;->access$5302(Lcom/logic/proto/ChatProto$Chat;J)J

    .line 4065
    iget v1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->isSupporter_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$Chat;->access$5402(Lcom/logic/proto/ChatProto$Chat;I)I

    .line 4066
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clear()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clear()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clear()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clear()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 5

    .line 3991
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 3992
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderId_:J

    .line 3994
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->receiverId_:J

    const/4 v2, 0x0

    .line 3996
    iput v2, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->type_:I

    const-string v3, ""

    .line 3998
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4000
    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v4, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->pic_:Lcom/google/protobuf/ByteString;

    .line 4002
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4004
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4006
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4008
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4010
    iput v2, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgType_:I

    .line 4012
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 4014
    iput v2, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->gameId_:I

    .line 4016
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->createTime_:J

    .line 4018
    iput-object v3, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 4020
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgId_:J

    .line 4022
    iput v2, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->isSupporter_:I

    return-object p0
.end method

.method public clearContent()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 4378
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4379
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCreateTime()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 4996
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->createTime_:J

    .line 4997
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 4083
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method

.method public clearGameId()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4958
    iput v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->gameId_:I

    .line 4959
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearImgUrl()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 4902
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 4903
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsSupporter()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 5161
    iput v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->isSupporter_:I

    .line 5162
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgId()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 5123
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgId_:J

    .line 5124
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgType()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4831
    iput v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgType_:I

    .line 4832
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 4088
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method

.method public clearPic()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 4437
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->pic_:Lcom/google/protobuf/ByteString;

    .line 4438
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearReceiverId()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 4269
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->receiverId_:J

    .line 4270
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRoleId()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 4686
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->getRoleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4687
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRoleName()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 4775
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->getRoleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4776
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSenderId()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 4231
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderId_:J

    .line 4232
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSenderName()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 5067
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->getSenderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 5068
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearServerId()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 4508
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4509
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearServerName()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 4597
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat;->getServerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4598
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4307
    iput v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->type_:I

    .line 4308
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clone()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clone()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clone()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clone()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clone()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1

    .line 4072
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->clone()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 4321
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4322
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4323
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4325
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4326
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 4329
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4341
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4342
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4343
    check-cast v0, Ljava/lang/String;

    .line 4344
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4346
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 4349
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 4972
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->createTime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$Chat;
    .locals 1

    .line 4035
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4030
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()I
    .locals 1

    .line 4934
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->gameId_:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 2

    .line 4845
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 4846
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4847
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4849
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4850
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    return-object v0

    .line 4853
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4865
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 4866
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4867
    check-cast v0, Ljava/lang/String;

    .line 4868
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4870
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    return-object v0

    .line 4873
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsSupporter()I
    .locals 1

    .line 5137
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->isSupporter_:I

    return v0
.end method

.method public getMsgId()J
    .locals 2

    .line 5099
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgId_:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .line 4807
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgType_:I

    return v0
.end method

.method public getPic()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4410
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->pic_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReceiverId()J
    .locals 2

    .line 4245
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->receiverId_:J

    return-wide v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 2

    .line 4629
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4630
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4631
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4633
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4634
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    return-object v0

    .line 4637
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRoleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4649
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4650
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4651
    check-cast v0, Ljava/lang/String;

    .line 4652
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4654
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    return-object v0

    .line 4657
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 2

    .line 4718
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4719
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4720
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4722
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4723
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    return-object v0

    .line 4726
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRoleNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4738
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4739
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4740
    check-cast v0, Ljava/lang/String;

    .line 4741
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4743
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    return-object v0

    .line 4746
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSenderId()J
    .locals 2

    .line 4207
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderId_:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 2

    .line 5010
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 5011
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5012
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5014
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5015
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    return-object v0

    .line 5018
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSenderNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5030
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 5031
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5032
    check-cast v0, Ljava/lang/String;

    .line 5033
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5035
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    return-object v0

    .line 5038
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 2

    .line 4451
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4452
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4453
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4455
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4456
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    return-object v0

    .line 4459
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4471
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4472
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4473
    check-cast v0, Ljava/lang/String;

    .line 4474
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4476
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    return-object v0

    .line 4479
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 2

    .line 4540
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4541
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4542
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4544
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4545
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    return-object v0

    .line 4548
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4560
    iget-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4561
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4562
    check-cast v0, Ljava/lang/String;

    .line 4563
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4565
    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    return-object v0

    .line 4568
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 4283
    iget v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->type_:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3969
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$3400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$Chat;

    const-class v2, Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 3970
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

    .line 3957
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$Chat$Builder;
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

    .line 4186
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->access$5600()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4192
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4188
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$Chat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4189
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

    .line 4192
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4194
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 4104
    instance-of v0, p1, Lcom/logic/proto/ChatProto$Chat;

    if-eqz v0, :cond_0

    .line 4105
    check-cast p1, Lcom/logic/proto/ChatProto$Chat;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1

    .line 4107
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 4113
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->getDefaultInstance()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4114
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getSenderId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 4115
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getSenderId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setSenderId(J)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4117
    :cond_1
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getReceiverId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 4118
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getReceiverId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setReceiverId(J)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4120
    :cond_2
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    .line 4121
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setType(I)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4123
    :cond_3
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4124
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$4200(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4125
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    .line 4127
    :cond_4
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v0, v1, :cond_5

    .line 4128
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setPic(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4130
    :cond_5
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4131
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$4400(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4132
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    .line 4134
    :cond_6
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4135
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$4500(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4136
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    .line 4138
    :cond_7
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getRoleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4139
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$4600(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4140
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    .line 4142
    :cond_8
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getRoleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4143
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$4700(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4144
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    .line 4146
    :cond_9
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getMsgType()I

    move-result v0

    if-eqz v0, :cond_a

    .line 4147
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getMsgType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setMsgType(I)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4149
    :cond_a
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4150
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$4900(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 4151
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    .line 4153
    :cond_b
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getGameId()I

    move-result v0

    if-eqz v0, :cond_c

    .line 4154
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getGameId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setGameId(I)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4156
    :cond_c
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getCreateTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 4157
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setCreateTime(J)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4159
    :cond_d
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getSenderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4160
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$5200(Lcom/logic/proto/ChatProto$Chat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 4161
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    .line 4163
    :cond_e
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getMsgId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 4164
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getMsgId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setMsgId(J)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4166
    :cond_f
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getIsSupporter()I

    move-result v0

    if-eqz v0, :cond_10

    .line 4167
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getIsSupporter()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setIsSupporter(I)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4169
    :cond_10
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$5500(Lcom/logic/proto/ChatProto$Chat;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 4170
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5174
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method

.method public setContent(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4362
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4365
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4366
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4392
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4394
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$5700(Lcom/google/protobuf/ByteString;)V

    .line 4396
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->content_:Ljava/lang/Object;

    .line 4397
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setCreateTime(J)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4983
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->createTime_:J

    .line 4984
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

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

    .line 3957
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$Chat$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;
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

    .line 4078
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method

.method public setGameId(I)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4945
    iput p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->gameId_:I

    .line 4946
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setImgUrl(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4886
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4889
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 4890
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setImgUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4916
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4918
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$6200(Lcom/google/protobuf/ByteString;)V

    .line 4920
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->imgUrl_:Ljava/lang/Object;

    .line 4921
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setIsSupporter(I)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5148
    iput p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->isSupporter_:I

    .line 5149
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgId(J)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5110
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgId_:J

    .line 5111
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgType(I)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4818
    iput p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->msgType_:I

    .line 4819
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setPic(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4421
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4424
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->pic_:Lcom/google/protobuf/ByteString;

    .line 4425
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setReceiverId(J)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4256
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->receiverId_:J

    .line 4257
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

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

    .line 3957
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$Chat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$Chat$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$Chat$Builder;
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

    .line 4094
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method

.method public setRoleId(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4670
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4673
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4674
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setRoleIdBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4700
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4702
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$6000(Lcom/google/protobuf/ByteString;)V

    .line 4704
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleId_:Ljava/lang/Object;

    .line 4705
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setRoleName(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4759
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4762
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4763
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setRoleNameBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4789
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4791
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$6100(Lcom/google/protobuf/ByteString;)V

    .line 4793
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->roleName_:Ljava/lang/Object;

    .line 4794
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setSenderId(J)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4218
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderId_:J

    .line 4219
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setSenderName(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5051
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5054
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 5055
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setSenderNameBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5081
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5083
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$6300(Lcom/google/protobuf/ByteString;)V

    .line 5085
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->senderName_:Ljava/lang/Object;

    .line 5086
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setServerId(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4492
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4495
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4496
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setServerIdBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4522
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4524
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$5800(Lcom/google/protobuf/ByteString;)V

    .line 4526
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverId_:Ljava/lang/Object;

    .line 4527
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setServerName(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4581
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4584
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4585
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setServerNameBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4611
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4613
    invoke-static {p1}, Lcom/logic/proto/ChatProto$Chat;->access$5900(Lcom/google/protobuf/ByteString;)V

    .line 4615
    iput-object p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->serverName_:Ljava/lang/Object;

    .line 4616
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

    return-object p0
.end method

.method public setType(I)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4294
    iput p1, p0, Lcom/logic/proto/ChatProto$Chat$Builder;->type_:I

    .line 4295
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$Chat$Builder;->onChanged()V

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$Chat$Builder;

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

    .line 3957
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$Chat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 5168
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$Chat$Builder;

    return-object p1
.end method
