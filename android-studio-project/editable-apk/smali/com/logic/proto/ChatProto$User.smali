.class public final Lcom/logic/proto/ChatProto$User;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatProto.java"

# interfaces
.implements Lcom/logic/proto/ChatProto$UserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logic/proto/ChatProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$User$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$User;

.field public static final DEVICE_MODEL_FIELD_NUMBER:I = 0x4

.field public static final EMAIL_FIELD_NUMBER:I = 0xb

.field public static final GAME_ID_FIELD_NUMBER:I = 0x8

.field public static final GAME_VERSION_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IS_SUPPORTER_FIELD_NUMBER:I = 0x3

.field public static final IS_SUPPORT_TEXT_VIEW_FIELD_NUMBER:I = 0xf

.field public static final NICK_NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$User;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_FIELD_NUMBER:I = 0x7

.field public static final PUSH_APP_KEY_FIELD_NUMBER:I = 0x9

.field public static final PUSH_REGISTRATION_ID_FIELD_NUMBER:I = 0xa

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0xe

.field public static final SUPPORTER_STATUS_FIELD_NUMBER:I = 0xc

.field public static final SYSTEM_FIELD_NUMBER:I = 0xd

.field public static final SYSTEM_VERSION_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private volatile deviceModel_:Ljava/lang/Object;

.field private volatile email_:Ljava/lang/Object;

.field private gameId_:I

.field private volatile gameVersion_:Ljava/lang/Object;

.field private id_:J

.field private isSupportTextView_:I

.field private isSupporter_:I

.field private memoizedIsInitialized:B

.field private volatile nickName_:Ljava/lang/Object;

.field private volatile phone_:Ljava/lang/Object;

.field private volatile pushAppKey_:Ljava/lang/Object;

.field private volatile pushRegistrationId_:Ljava/lang/Object;

.field private volatile sdkVersion_:Ljava/lang/Object;

.field private supporterStatus_:I

.field private volatile systemVersion_:Ljava/lang/Object;

.field private system_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2806
    new-instance v0, Lcom/logic/proto/ChatProto$User;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$User;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$User;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$User;

    .line 2814
    new-instance v0, Lcom/logic/proto/ChatProto$User$1;

    invoke-direct {v0}, Lcom/logic/proto/ChatProto$User$1;-><init>()V

    sput-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 603
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1217
    iput-byte v0, p0, Lcom/logic/proto/ChatProto$User;->memoizedIsInitialized:B

    const-wide/16 v0, 0x0

    .line 604
    iput-wide v0, p0, Lcom/logic/proto/ChatProto$User;->id_:J

    const-string v0, ""

    .line 605
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 606
    iput v1, p0, Lcom/logic/proto/ChatProto$User;->isSupporter_:I

    .line 607
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    .line 608
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    .line 609
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    .line 610
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    .line 611
    iput v1, p0, Lcom/logic/proto/ChatProto$User;->gameId_:I

    .line 612
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    .line 613
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    .line 614
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    .line 615
    iput v1, p0, Lcom/logic/proto/ChatProto$User;->supporterStatus_:I

    .line 616
    iput v1, p0, Lcom/logic/proto/ChatProto$User;->system_:I

    .line 617
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    .line 618
    iput v1, p0, Lcom/logic/proto/ChatProto$User;->isSupportTextView_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 630
    invoke-direct {p0}, Lcom/logic/proto/ChatProto$User;-><init>()V

    .line 632
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 640
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 730
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/logic/proto/ChatProto$User;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 726
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$User;->isSupportTextView_:I

    goto :goto_0

    .line 719
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 721
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 715
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$User;->system_:I

    goto :goto_0

    .line 710
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$User;->supporterStatus_:I

    goto :goto_0

    .line 703
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 705
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    goto :goto_0

    .line 697
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 699
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    goto :goto_0

    .line 691
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 693
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    goto :goto_0

    .line 687
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$User;->gameId_:I

    goto :goto_0

    .line 680
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 682
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    goto :goto_0

    .line 674
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 676
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 668
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 670
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 662
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 664
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    goto :goto_0

    .line 658
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/logic/proto/ChatProto$User;->isSupporter_:I

    goto :goto_0

    .line 651
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 653
    iput-object v2, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    goto :goto_0

    .line 647
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/logic/proto/ChatProto$User;->id_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_f
    move v1, v3

    goto :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 741
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 742
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 739
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 745
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->makeExtensionsImmutable()V

    .line 746
    throw p1

    .line 744
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 745
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x9 -> :sswitch_e
        0x12 -> :sswitch_d
        0x18 -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x32 -> :sswitch_9
        0x3a -> :sswitch_8
        0x40 -> :sswitch_7
        0x4a -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x60 -> :sswitch_3
        0x68 -> :sswitch_2
        0x72 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/logic/proto/ChatProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/logic/proto/ChatProto$User;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 601
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1217
    iput-byte p1, p0, Lcom/logic/proto/ChatProto$User;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/logic/proto/ChatProto$1;)V
    .locals 0

    .line 594
    invoke-direct {p0, p1}, Lcom/logic/proto/ChatProto$User;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/logic/proto/ChatProto$User;I)I
    .locals 0

    .line 594
    iput p1, p0, Lcom/logic/proto/ChatProto$User;->gameId_:I

    return p1
.end method

.method static synthetic access$1400(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/logic/proto/ChatProto$User;I)I
    .locals 0

    .line 594
    iput p1, p0, Lcom/logic/proto/ChatProto$User;->supporterStatus_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/logic/proto/ChatProto$User;I)I
    .locals 0

    .line 594
    iput p1, p0, Lcom/logic/proto/ChatProto$User;->system_:I

    return p1
.end method

.method static synthetic access$1900(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/logic/proto/ChatProto$User;I)I
    .locals 0

    .line 594
    iput p1, p0, Lcom/logic/proto/ChatProto$User;->isSupportTextView_:I

    return p1
.end method

.method static synthetic access$2100(Lcom/logic/proto/ChatProto$User;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/Parser;
    .locals 1

    .line 594
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 594
    invoke-static {p0}, Lcom/logic/proto/ChatProto$User;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 594
    sget-boolean v0, Lcom/logic/proto/ChatProto$User;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/logic/proto/ChatProto$User;J)J
    .locals 0

    .line 594
    iput-wide p1, p0, Lcom/logic/proto/ChatProto$User;->id_:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/logic/proto/ChatProto$User;I)I
    .locals 0

    .line 594
    iput p1, p0, Lcom/logic/proto/ChatProto$User;->isSupporter_:I

    return p1
.end method

.method static synthetic access$900(Lcom/logic/proto/ChatProto$User;)Ljava/lang/Object;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/logic/proto/ChatProto$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/logic/proto/ChatProto$User;
    .locals 1

    .line 2810
    sget-object v0, Lcom/logic/proto/ChatProto$User;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$User;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 750
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 1502
    sget-object v0, Lcom/logic/proto/ChatProto$User;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$User;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->toBuilder()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1505
    sget-object v0, Lcom/logic/proto/ChatProto$User;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$User;

    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User;->toBuilder()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1475
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    .line 1476
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User;
    .locals 1
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

    .line 1482
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    .line 1483
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1443
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1449
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1488
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    .line 1489
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User;
    .locals 1
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

    .line 1495
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    .line 1496
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1463
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    .line 1464
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User;
    .locals 1
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

    .line 1470
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    .line 1471
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1432
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1438
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1453
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/logic/proto/ChatProto$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1459
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logic/proto/ChatProto$User;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$User;",
            ">;"
        }
    .end annotation

    .line 2825
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1346
    :cond_0
    instance-of v1, p1, Lcom/logic/proto/ChatProto$User;

    if-nez v1, :cond_1

    .line 1347
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1349
    :cond_1
    check-cast p1, Lcom/logic/proto/ChatProto$User;

    .line 1352
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getId()J

    move-result-wide v1

    .line 1353
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 1354
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 1355
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 1356
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getIsSupporter()I

    move-result v1

    .line 1357
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getIsSupporter()I

    move-result v3

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 1358
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 1360
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    .line 1361
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 1362
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    .line 1363
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getGameVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    .line 1364
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPhone()Ljava/lang/String;

    move-result-object v1

    .line 1365
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    .line 1366
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getGameId()I

    move-result v1

    .line 1367
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getGameId()I

    move-result v3

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    .line 1368
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPushAppKey()Ljava/lang/String;

    move-result-object v1

    .line 1369
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPushAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    if-eqz v1, :cond_b

    .line 1370
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 1371
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_9

    :cond_b
    move v1, v2

    :goto_9
    if-eqz v1, :cond_c

    .line 1372
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    if-eqz v1, :cond_d

    .line 1374
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSupporterStatus()I

    move-result v1

    .line 1375
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSupporterStatus()I

    move-result v3

    if-ne v1, v3, :cond_d

    move v1, v0

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    if-eqz v1, :cond_e

    .line 1376
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSystem()I

    move-result v1

    .line 1377
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSystem()I

    move-result v3

    if-ne v1, v3, :cond_e

    move v1, v0

    goto :goto_c

    :cond_e
    move v1, v2

    :goto_c
    if-eqz v1, :cond_f

    .line 1378
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 1379
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_d

    :cond_f
    move v1, v2

    :goto_d
    if-eqz v1, :cond_10

    .line 1380
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getIsSupportTextView()I

    move-result v1

    .line 1381
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getIsSupportTextView()I

    move-result v3

    if-ne v1, v3, :cond_10

    move v1, v0

    goto :goto_e

    :cond_10
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    .line 1382
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_f

    :cond_11
    move v0, v2

    :goto_f
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getDefaultInstanceForType()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/logic/proto/ChatProto$User;
    .locals 1

    .line 2835
    sget-object v0, Lcom/logic/proto/ChatProto$User;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$User;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    .line 840
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 841
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 843
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 845
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 846
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDeviceModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    .line 860
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 861
    check-cast v0, Ljava/lang/String;

    .line 862
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 864
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    return-object v0

    .line 867
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .line 1104
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    .line 1105
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1106
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1108
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1110
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1111
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    return-object v0
.end method

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    .line 1125
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1126
    check-cast v0, Ljava/lang/String;

    .line 1127
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1129
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    return-object v0

    .line 1132
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGameId()I
    .locals 1

    .line 1007
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->gameId_:I

    return v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    .line 924
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 925
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 927
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 929
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 930
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getGameVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    .line 944
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 945
    check-cast v0, Ljava/lang/String;

    .line 946
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 948
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    return-object v0

    .line 951
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 771
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$User;->id_:J

    return-wide v0
.end method

.method public getIsSupportTextView()I
    .locals 1

    .line 1214
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->isSupportTextView_:I

    return v0
.end method

.method public getIsSupporter()I
    .locals 1

    .line 826
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->isSupporter_:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    .line 785
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 786
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 788
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 790
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 791
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNickNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    .line 805
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 806
    check-cast v0, Ljava/lang/String;

    .line 807
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 809
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    return-object v0

    .line 812
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/logic/proto/ChatProto$User;",
            ">;"
        }
    .end annotation

    .line 2830
    sget-object v0, Lcom/logic/proto/ChatProto$User;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 2

    .line 965
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    .line 966
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 967
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 969
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 971
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 972
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPhoneBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    .line 986
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 987
    check-cast v0, Ljava/lang/String;

    .line 988
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 990
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    return-object v0

    .line 993
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPushAppKey()Ljava/lang/String;
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    .line 1021
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1022
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1024
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1026
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1027
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPushAppKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    .line 1041
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1042
    check-cast v0, Ljava/lang/String;

    .line 1043
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1045
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    return-object v0

    .line 1048
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPushRegistrationId()Ljava/lang/String;
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    .line 1063
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1064
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1066
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1068
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1069
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPushRegistrationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    .line 1083
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1084
    check-cast v0, Ljava/lang/String;

    .line 1085
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1087
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    return-object v0

    .line 1090
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .line 1172
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    .line 1173
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1174
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1176
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1178
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1179
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    .line 1193
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1194
    check-cast v0, Ljava/lang/String;

    .line 1195
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1197
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 1200
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1281
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1285
    iget-wide v1, p0, Lcom/logic/proto/ChatProto$User;->id_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1287
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1289
    :cond_1
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getNickNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 1290
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1292
    :cond_2
    iget v1, p0, Lcom/logic/proto/ChatProto$User;->isSupporter_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 1294
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1296
    :cond_3
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getDeviceModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 1297
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1299
    :cond_4
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSystemVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 1300
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1302
    :cond_5
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getGameVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 1303
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1305
    :cond_6
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPhoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 1306
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1308
    :cond_7
    iget v1, p0, Lcom/logic/proto/ChatProto$User;->gameId_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 1310
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1312
    :cond_8
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPushAppKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 1313
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    :cond_9
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPushRegistrationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 1316
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1318
    :cond_a
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 1319
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1321
    :cond_b
    iget v1, p0, Lcom/logic/proto/ChatProto$User;->supporterStatus_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 1323
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1325
    :cond_c
    iget v1, p0, Lcom/logic/proto/ChatProto$User;->system_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 1327
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1329
    :cond_d
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSdkVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 1330
    iget-object v2, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1332
    :cond_e
    iget v1, p0, Lcom/logic/proto/ChatProto$User;->isSupportTextView_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 1334
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1336
    :cond_f
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1337
    iput v0, p0, Lcom/logic/proto/ChatProto$User;->memoizedSize:I

    return v0
.end method

.method public getSupporterStatus()I
    .locals 1

    .line 1146
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->supporterStatus_:I

    return v0
.end method

.method public getSystem()I
    .locals 1

    .line 1159
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->system_:I

    return v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    .line 882
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 883
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 885
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 887
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 888
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    .line 902
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 903
    check-cast v0, Ljava/lang/String;

    .line 904
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 906
    iput-object v0, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    return-object v0

    .line 909
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1388
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1389
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1392
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1395
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getId()J

    move-result-wide v1

    .line 1394
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1397
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1399
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getIsSupporter()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1401
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 1403
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 1405
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 1407
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 1409
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getGameId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 1411
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPushAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 1413
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 1415
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 1417
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSupporterStatus()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 1419
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSystem()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 1421
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 1423
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getIsSupportTextView()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1424
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1425
    iput v0, p0, Lcom/logic/proto/ChatProto$User;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 756
    invoke-static {}, Lcom/logic/proto/ChatProto;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/logic/proto/ChatProto$User;

    const-class v2, Lcom/logic/proto/ChatProto$User$Builder;

    .line 757
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1220
    iget-byte v0, p0, Lcom/logic/proto/ChatProto$User;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1224
    :cond_1
    iput-byte v1, p0, Lcom/logic/proto/ChatProto$User;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->newBuilderForType()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 594
    invoke-virtual {p0, p1}, Lcom/logic/proto/ChatProto$User;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->newBuilderForType()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 1

    .line 1500
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->newBuilder()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/logic/proto/ChatProto$User$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 1516
    new-instance v0, Lcom/logic/proto/ChatProto$User$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/logic/proto/ChatProto$User$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/logic/proto/ChatProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->toBuilder()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->toBuilder()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/logic/proto/ChatProto$User$Builder;
    .locals 2

    .line 1509
    sget-object v0, Lcom/logic/proto/ChatProto$User;->DEFAULT_INSTANCE:Lcom/logic/proto/ChatProto$User;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/logic/proto/ChatProto$User$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$User$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/logic/proto/ChatProto$User$Builder;

    invoke-direct {v0, v1}, Lcom/logic/proto/ChatProto$User$Builder;-><init>(Lcom/logic/proto/ChatProto$1;)V

    .line 1510
    invoke-virtual {v0, p0}, Lcom/logic/proto/ChatProto$User$Builder;->mergeFrom(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1231
    iget-wide v0, p0, Lcom/logic/proto/ChatProto$User;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1232
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 1234
    :cond_0
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getNickNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1235
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->nickName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1237
    :cond_1
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->isSupporter_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1238
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1240
    :cond_2
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getDeviceModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 1241
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->deviceModel_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1243
    :cond_3
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSystemVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 1244
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->systemVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1246
    :cond_4
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getGameVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 1247
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->gameVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1249
    :cond_5
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPhoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 1250
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->phone_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1252
    :cond_6
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->gameId_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 1253
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1255
    :cond_7
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPushAppKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 1256
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->pushAppKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1258
    :cond_8
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getPushRegistrationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 1259
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->pushRegistrationId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1261
    :cond_9
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 1262
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->email_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1264
    :cond_a
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->supporterStatus_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 1265
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1267
    :cond_b
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->system_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 1268
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1270
    :cond_c
    invoke-virtual {p0}, Lcom/logic/proto/ChatProto$User;->getSdkVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 1271
    iget-object v1, p0, Lcom/logic/proto/ChatProto$User;->sdkVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1273
    :cond_d
    iget v0, p0, Lcom/logic/proto/ChatProto$User;->isSupportTextView_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 1274
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1276
    :cond_e
    iget-object v0, p0, Lcom/logic/proto/ChatProto$User;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
