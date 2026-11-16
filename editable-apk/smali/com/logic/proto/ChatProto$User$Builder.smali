.class public final Lcom/logic/proto/ChatProto$User$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$UserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto$User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/logic/proto/ChatProto$User$Builder;",
        ">;",
        "Lcom/logic/proto/ChatProto$UserOrBuilder;"
    }
.end annotation


# instance fields
.field private deviceModel_:Ljava/lang/Object;

.field private email_:Ljava/lang/Object;

.field private gameId_:I

.field private gameVersion_:Ljava/lang/Object;

.field private id_:J

.field private isSupportTextView_:I

.field private isSupporter_:I

.field private nickName_:Ljava/lang/Object;

.field private phone_:Ljava/lang/Object;

.field private pushAppKey_:Ljava/lang/Object;

.field private pushRegistrationId_:Ljava/lang/Object;

.field private sdkVersion_:Ljava/lang/Object;

.field private supporterStatus_:I

.field private systemVersion_:Ljava/lang/Object;

.field private system_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1540
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1797
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    .line 1924
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 2013
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 2102
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 2191
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 2318
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 2407
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 2496
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 2661
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 1541
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$User$Builder;->maybeForceBuilderInitialization()V

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

    .line 1546
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1797
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    .line 1924
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 2013
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 2102
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 2191
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 2318
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 2407
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 2496
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 2661
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 1547
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$User$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 1522
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 1522
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$User$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1528
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1551
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->access$400()Z

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

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$User$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$User$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;
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

    .line 1662
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$User$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->build()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->build()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/logic/proto/ChatProto$User;
    .locals 2

    .line 1603
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->buildPartial()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    .line 1604
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1605
    :cond_0
    invoke-static {v0}, Lcom/logic/proto/ChatProto$User$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->buildPartial()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->buildPartial()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/logic/proto/ChatProto$User;
    .locals 3

    .line 1612
    new-instance v0, Lcom/logic/proto/ChatProto$User;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logic/proto/ChatProto$User;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V

    .line 1613
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->id_:J

    invoke-static {v0, v1, v2}, Lcom/logic/proto/ChatProto$User;->access$602(Lcom/logic/proto/ChatProto$User;J)J

    .line 1614
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$702(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    iget v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupporter_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$802(Lcom/logic/proto/ChatProto$User;I)I

    .line 1616
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$902(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1002(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1102(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1202(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    iget v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameId_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1302(Lcom/logic/proto/ChatProto$User;I)I

    .line 1621
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1402(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1502(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1602(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    iget v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->supporterStatus_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1702(Lcom/logic/proto/ChatProto$User;I)I

    .line 1625
    iget v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->system_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1802(Lcom/logic/proto/ChatProto$User;I)I

    .line 1626
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$1902(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    iget v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupportTextView_:I

    invoke-static {v0, v1}, Lcom/logic/proto/ChatProto$User;->access$2002(Lcom/logic/proto/ChatProto$User;I)I

    .line 1628
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clear()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clear()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clear()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clear()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 2

    .line 1556
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 1557
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->id_:J

    const-string v0, ""

    .line 1559
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1561
    iput v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupporter_:I

    .line 1563
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 1565
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 1567
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 1569
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 1571
    iput v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameId_:I

    .line 1573
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 1575
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 1577
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 1579
    iput v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->supporterStatus_:I

    .line 1581
    iput v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->system_:I

    .line 1583
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 1585
    iput v1, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupportTextView_:I

    return-object p0
.end method

.method public clearDeviceModel()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 1990
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 1991
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEmail()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 2562
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 2563
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 1645
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$User$Builder;

    return-object p1
.end method

.method public clearGameId()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2313
    iput v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameId_:I

    .line 2314
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearGameVersion()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 2168
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 2169
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1792
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->id_:J

    .line 1793
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsSupportTextView()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2783
    iput v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupportTextView_:I

    .line 2784
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsSupporter()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1919
    iput v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupporter_:I

    .line 1920
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNickName()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 1863
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    .line 1864
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 1650
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$User$Builder;

    return-object p1
.end method

.method public clearPhone()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 2257
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 2258
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPushAppKey()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 2384
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getPushAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 2385
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPushRegistrationId()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 2473
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 2474
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdkVersion()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 2727
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 2728
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSupporterStatus()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2618
    iput v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->supporterStatus_:I

    .line 2619
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSystem()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2656
    iput v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->system_:I

    .line 2657
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSystemVersion()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 2079
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 2080
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clone()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clone()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clone()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clone()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clone()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 1634
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/logic/proto/ChatProto$User$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->clone()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$User;
    .locals 1

    .line 1598
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1593
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    .line 1933
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 1934
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1935
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1937
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1938
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    return-object v0

    .line 1941
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1953
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 1954
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1955
    check-cast v0, Ljava/lang/String;

    .line 1956
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1958
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    return-object v0

    .line 1961
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .line 2505
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 2506
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2507
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2509
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2510
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    return-object v0

    .line 2513
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2525
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 2526
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2527
    check-cast v0, Ljava/lang/String;

    .line 2528
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2530
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    return-object v0

    .line 2533
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGameId()I
    .locals 1

    .line 2289
    iget v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameId_:I

    return v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 2

    .line 2111
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 2112
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2113
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2115
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2116
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    return-object v0

    .line 2119
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGameVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2131
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 2132
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2133
    check-cast v0, Ljava/lang/String;

    .line 2134
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2136
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    return-object v0

    .line 2139
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1768
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->id_:J

    return-wide v0
.end method

.method public getIsSupportTextView()I
    .locals 1

    .line 2759
    iget v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupportTextView_:I

    return v0
.end method

.method public getIsSupporter()I
    .locals 1

    .line 1895
    iget v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupporter_:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 2

    .line 1806
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    .line 1807
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1808
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1810
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1811
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    return-object v0

    .line 1814
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNickNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1826
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    .line 1827
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1828
    check-cast v0, Ljava/lang/String;

    .line 1829
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1831
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    return-object v0

    .line 1834
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 2

    .line 2200
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 2201
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2202
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2204
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2205
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    return-object v0

    .line 2208
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2220
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 2221
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2222
    check-cast v0, Ljava/lang/String;

    .line 2223
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2225
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    return-object v0

    .line 2228
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPushAppKey()Ljava/lang/String;
    .locals 2

    .line 2327
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 2328
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2329
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2331
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2332
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    return-object v0

    .line 2335
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPushAppKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2347
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 2348
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2349
    check-cast v0, Ljava/lang/String;

    .line 2350
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2352
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    return-object v0

    .line 2355
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPushRegistrationId()Ljava/lang/String;
    .locals 2

    .line 2416
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 2417
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2418
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2420
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2421
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    return-object v0

    .line 2424
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPushRegistrationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2436
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 2437
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2438
    check-cast v0, Ljava/lang/String;

    .line 2439
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2441
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    return-object v0

    .line 2444
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .line 2670
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 2671
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2672
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2674
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2675
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 2678
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2690
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 2691
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2692
    check-cast v0, Ljava/lang/String;

    .line 2693
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2695
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 2698
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSupporterStatus()I
    .locals 1

    .line 2594
    iget v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->supporterStatus_:I

    return v0
.end method

.method public getSystem()I
    .locals 1

    .line 2632
    iget v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->system_:I

    return v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 2

    .line 2022
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 2023
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2024
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2026
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2027
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    return-object v0

    .line 2030
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2042
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 2043
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2044
    check-cast v0, Ljava/lang/String;

    .line 2045
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2047
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    return-object v0

    .line 2050
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1534
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$User;

    const-class v2, Lcom/logic/proto/ChatProto$User$Builder;

    .line 1535
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

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User$Builder;
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

    .line 1747
    :try_start_0
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->access$2200()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$User;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1753
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1749
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/logic/proto/ChatProto$User;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1750
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

    .line 1753
    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 1755
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1666
    instance-of v0, p1, Lcom/logic/proto/ChatProto$User;

    if-eqz v0, :cond_0

    .line 1667
    check-cast p1, Lcom/logic/proto/ChatProto$User;

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1

    .line 1669
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1675
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDefaultInstance()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1676
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1677
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/logic/proto/ChatProto$User$Builder;->setId(J)Lcom/logic/proto/ChatProto$User$Builder;

    .line 1679
    :cond_1
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1680
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$700(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    .line 1681
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1683
    :cond_2
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getIsSupporter()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1684
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getIsSupporter()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setIsSupporter(I)Lcom/logic/proto/ChatProto$User$Builder;

    .line 1686
    :cond_3
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1687
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$900(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 1688
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1690
    :cond_4
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1691
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$1000(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 1692
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1694
    :cond_5
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1695
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$1100(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 1696
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1698
    :cond_6
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1699
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$1200(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 1700
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1702
    :cond_7
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getGameId()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1703
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getGameId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setGameId(I)Lcom/logic/proto/ChatProto$User$Builder;

    .line 1705
    :cond_8
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPushAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1706
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$1400(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 1707
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1709
    :cond_9
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1710
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$1500(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 1711
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1713
    :cond_a
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1714
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$1600(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 1715
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1717
    :cond_b
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSupporterStatus()I

    move-result v0

    if-eqz v0, :cond_c

    .line 1718
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSupporterStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setSupporterStatus(I)Lcom/logic/proto/ChatProto$User$Builder;

    .line 1720
    :cond_c
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSystem()I

    move-result v0

    if-eqz v0, :cond_d

    .line 1721
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSystem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setSystem(I)Lcom/logic/proto/ChatProto$User$Builder;

    .line 1723
    :cond_d
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1724
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$1900(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 1725
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    .line 1727
    :cond_e
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getIsSupportTextView()I

    move-result v0

    if-eqz v0, :cond_f

    .line 1728
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getIsSupportTextView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setIsSupportTextView(I)Lcom/logic/proto/ChatProto$User$Builder;

    .line 1730
    :cond_f
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$2100(Lcom/logic/proto/ChatProto$User;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 1731
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2796
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$User$Builder;

    return-object p1
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1974
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 1978
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceModelBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2004
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$2400(Lcom/google/protobuf/ByteString;)V

    .line 2008
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->deviceModel_:Ljava/lang/Object;

    .line 2009
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2546
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2549
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 2550
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2576
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2578
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$3000(Lcom/google/protobuf/ByteString;)V

    .line 2580
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->email_:Ljava/lang/Object;

    .line 2581
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

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

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$User$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1, p2}, Lcom/logic/proto/ChatProto$User$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;
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

    .line 1640
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$User$Builder;

    return-object p1
.end method

.method public setGameId(I)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2300
    iput p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameId_:I

    .line 2301
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setGameVersion(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 2156
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setGameVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2182
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$2600(Lcom/google/protobuf/ByteString;)V

    .line 2186
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->gameVersion_:Ljava/lang/Object;

    .line 2187
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setId(J)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1779
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->id_:J

    .line 1780
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setIsSupportTextView(I)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2770
    iput p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupportTextView_:I

    .line 2771
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setIsSupporter(I)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1906
    iput p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->isSupporter_:I

    .line 1907
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setNickName(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1847
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    .line 1851
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setNickNameBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1877
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$2300(Lcom/google/protobuf/ByteString;)V

    .line 1881
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->nickName_:Ljava/lang/Object;

    .line 1882
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setPhone(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2241
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 2245
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setPhoneBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2271
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$2700(Lcom/google/protobuf/ByteString;)V

    .line 2275
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->phone_:Ljava/lang/Object;

    .line 2276
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setPushAppKey(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2368
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 2372
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setPushAppKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2398
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$2800(Lcom/google/protobuf/ByteString;)V

    .line 2402
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushAppKey_:Ljava/lang/Object;

    .line 2403
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setPushRegistrationId(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2457
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 2461
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setPushRegistrationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2487
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$2900(Lcom/google/protobuf/ByteString;)V

    .line 2491
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->pushRegistrationId_:Ljava/lang/Object;

    .line 2492
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

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

    .line 1522
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$User$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1, p2, p3}, Lcom/logic/proto/ChatProto$User$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/logic/proto/ChatProto$User$Builder;
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

    .line 1656
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$User$Builder;

    return-object p1
.end method

.method public setSdkVersion(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2711
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 2715
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2741
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2743
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$3100(Lcom/google/protobuf/ByteString;)V

    .line 2745
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 2746
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setSupporterStatus(I)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2605
    iput p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->supporterStatus_:I

    .line 2606
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setSystem(I)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2643
    iput p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->system_:I

    .line 2644
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setSystemVersion(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2063
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 2067
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

    return-object p0
.end method

.method public setSystemVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2093
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    invoke-static {p1}, Lcom/logic/proto/ChatProto$User;->access$2500(Lcom/google/protobuf/ByteString;)V

    .line 2097
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User$Builder;->systemVersion_:Ljava/lang/Object;

    .line 2098
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User$Builder;->onChanged()V

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$User$Builder;

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

    .line 1522
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2790
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/logic/proto/ChatProto$User$Builder;

    return-object p1
.end method
