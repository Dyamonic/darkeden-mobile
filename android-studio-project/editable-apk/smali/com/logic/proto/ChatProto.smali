.class public final Lcom/logic/proto/ChatProto;
.super Ljava/lang/Object;
.source "ChatProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logic/proto/ChatProto$S2C_GetChatList;,
        Lcom/logic/proto/ChatProto$S2C_GetChatListOrBuilder;,
        Lcom/logic/proto/ChatProto$C2S_GetChatList;,
        Lcom/logic/proto/ChatProto$C2S_GetChatListOrBuilder;,
        Lcom/logic/proto/ChatProto$S2C_NotifyChat;,
        Lcom/logic/proto/ChatProto$S2C_NotifyChatOrBuilder;,
        Lcom/logic/proto/ChatProto$S2C_Chat;,
        Lcom/logic/proto/ChatProto$S2C_ChatOrBuilder;,
        Lcom/logic/proto/ChatProto$C2S_Chat;,
        Lcom/logic/proto/ChatProto$C2S_ChatOrBuilder;,
        Lcom/logic/proto/ChatProto$S2C_LeaveChat;,
        Lcom/logic/proto/ChatProto$S2C_LeaveChatOrBuilder;,
        Lcom/logic/proto/ChatProto$C2S_LeaveChat;,
        Lcom/logic/proto/ChatProto$C2S_LeaveChatOrBuilder;,
        Lcom/logic/proto/ChatProto$S2C_EnterChat;,
        Lcom/logic/proto/ChatProto$S2C_EnterChatOrBuilder;,
        Lcom/logic/proto/ChatProto$C2S_EnterChat;,
        Lcom/logic/proto/ChatProto$C2S_EnterChatOrBuilder;,
        Lcom/logic/proto/ChatProto$S2C_KeepAlive;,
        Lcom/logic/proto/ChatProto$S2C_KeepAliveOrBuilder;,
        Lcom/logic/proto/ChatProto$C2S_KeepAlive;,
        Lcom/logic/proto/ChatProto$C2S_KeepAliveOrBuilder;,
        Lcom/logic/proto/ChatProto$Chat;,
        Lcom/logic/proto/ChatProto$ChatOrBuilder;,
        Lcom/logic/proto/ChatProto$User;,
        Lcom/logic/proto/ChatProto$UserOrBuilder;,
        Lcom/logic/proto/ChatProto$ID;,
        Lcom/logic/proto/ChatProto$CODE;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_cs_C2S_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_C2S_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_C2S_EnterChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_C2S_EnterChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_C2S_GetChatList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_C2S_GetChatList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_C2S_KeepAlive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_C2S_KeepAlive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_C2S_LeaveChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_C2S_LeaveChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_S2C_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_S2C_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_S2C_EnterChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_S2C_EnterChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_S2C_GetChatList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_S2C_GetChatList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_S2C_KeepAlive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_S2C_KeepAlive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_S2C_LeaveChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_S2C_LeaveChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_S2C_NotifyChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_S2C_NotifyChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_cs_User_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_cs_User_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "\n\nchat.proto\u0012\u0002cs\"\u00bf\u0002\n\u0004User\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tnick_name\u0018\u0002 \u0001(\t\u0012\u0014\n\u000cis_supporter\u0018\u0003 \u0001(\r\u0012\u0014\n\u000cdevice_model\u0018\u0004 \u0001(\t\u0012\u0016\n\u000esystem_version\u0018\u0005 \u0001(\t\u0012\u0014\n\u000cgame_version\u0018\u0006 \u0001(\t\u0012\r\n\u0005phone\u0018\u0007 \u0001(\t\u0012\u000f\n\u0007game_id\u0018\u0008 \u0001(\r\u0012\u0014\n\u000cpush_app_key\u0018\t \u0001(\t\u0012\u001c\n\u0014push_registration_id\u0018\n \u0001(\t\u0012\r\n\u0005email\u0018\u000b \u0001(\t\u0012\u0018\n\u0010supporter_status\u0018\u000c \u0001(\r\u0012\u000e\n\u0006system\u0018\r \u0001(\r\u0012\u0013\n\u000bsdk_version\u0018\u000e \u0001(\t\u0012\u001c\n\u0014is_support_text_view\u0018\u000f \u0001(\r\"\u00aa\u0002\n\u0004Chat\u0012\u0011\n\tsender_id\u0018\u0001 \u0001(\u0006\u0012\u0013\n\u000breceiver_id\u0018\u0002 \u0001(\u0006\u0012\u000c\n\u0004type\u0018\u0003 \u0001(\r\u0012\u000f\n\u0007content\u0018\u0004 \u0001(\t\u0012\u000b\n\u0003pic\u0018\u0005 \u0001(\u000c\u0012\u0011\n\tserver_id\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bserver_name\u0018\u0007 \u0001(\t\u0012\u000f\n\u0007role_id\u0018\u0008 \u0001(\t\u0012\u0011\n\trole_name\u0018\t \u0001(\t\u0012\u0010\n\u0008msg_type\u0018\n \u0001(\r\u0012\u000f\n\u0007img_url\u0018\u000b \u0001(\t\u0012\u000f\n\u0007game_id\u0018\u000c \u0001(\r\u0012\u0013\n\u000bcreate_time\u0018\r \u0001(\u0006\u0012\u0013\n\u000bsender_name\u0018\u000e \u0001(\t\u0012\u000e\n\u0006msg_id\u0018\u000f \u0001(\u0006\u0012\u0014\n\u000cis_supporter\u0018\u0010 \u0001(\r\"\u000f\n\rC2S_KeepAlive\"H\n\rS2C_KeepAlive\u0012\u0016\n\u0004code\u0018\u0001 \u0001(\u000e2\u0008.cs.CODE\u0012\u000e\n\u0006tv_sec\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007tv_msec\u0018\u0003 \u0001(\u0006\"\'\n\rC2S_EnterChat\u0012\u0016\n\u0004user\u0018\u0001 \u0001(\u000b2\u0008.cs.User\"?\n\rS2C_EnterChat\u0012\u0016\n\u0004code\u0018\u0001 \u0001(\u000e2\u0008.cs.CODE\u0012\u0016\n\u0004user\u0018\u0002 \u0001(\u000b2\u0008.cs.User\"\u000f\n\rC2S_LeaveChat\"\'\n\rS2C_LeaveChat\u0012\u0016\n\u0004code\u0018\u0001 \u0001(\u000e2\u0008.cs.CODE\"\"\n\u0008C2S_Chat\u0012\u0016\n\u0004chat\u0018\u0001 \u0001(\u000b2\u0008.cs.Chat\":\n\u0008S2C_Chat\u0012\u0016\n\u0004code\u0018\u0001 \u0001(\u000e2\u0008.cs.CODE\u0012\u0016\n\u0004chat\u0018\u0002 \u0001(\u000b2\u0008.cs.Chat\"(\n\u000eS2C_NotifyChat\u0012\u0016\n\u0004chat\u0018\u0001 \u0001(\u000b2\u0008.cs.Chat\"#\n\u000fC2S_GetChatList\u0012\u0010\n\u0008readFlag\u0018\u0001 \u0001(\r\".\n\u000fS2C_GetChatList\u0012\u001b\n\tchat_list\u0018\u0001 \u0003(\u000b2\u0008.cs.Chat*#\n\u0004CODE\u0012\u000b\n\u0007CODE_OK\u0010\u0000\u0012\u000e\n\nCODE_ERROR\u0010\u0001*\u009f\u0002\n\u0002ID\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0017\n\u0011ID_C2S_KEEP_ALIVE\u0010\u0090\u00bf\u0005\u0012\u0017\n\u0011ID_S2C_KEEP_ALIVE\u0010\u0091\u00bf\u0005\u0012\u0017\n\u0011ID_C2S_ENTER_CHAT\u0010\u0092\u00bf\u0005\u0012\u0017\n\u0011ID_S2C_ENTER_CHAT\u0010\u0093\u00bf\u0005\u0012\u0017\n\u0011ID_C2S_LEAVE_CHAT\u0010\u0094\u00bf\u0005\u0012\u0017\n\u0011ID_S2C_LEAVE_CHAT\u0010\u0095\u00bf\u0005\u0012\u0011\n\u000bID_C2S_CHAT\u0010\u0096\u00bf\u0005\u0012\u0011\n\u000bID_S2C_CHAT\u0010\u0097\u00bf\u0005\u0012\u0018\n\u0012ID_S2C_NOTIFY_CHAT\u0010\u0098\u00bf\u0005\u0012\u001a\n\u0014ID_C2S_GET_CHAT_LIST\u0010\u0099\u00bf\u0005\u0012\u001a\n\u0014ID_S2C_GET_CHAT_LIST\u0010\u009a\u00bf\u0005B\u001c\n\u000fcom.logic.protoB\tChatProtob\u0006proto3"

    .line 11814
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 11854
    new-instance v1, Lcom/logic/proto/ChatProto$1;

    invoke-direct {v1}, Lcom/logic/proto/ChatProto$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11863
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 11867
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_User_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11868
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Id"

    const-string v4, "NickName"

    const-string v5, "IsSupporter"

    const-string v6, "DeviceModel"

    const-string v7, "SystemVersion"

    const-string v8, "GameVersion"

    const-string v9, "Phone"

    const-string v10, "GameId"

    const-string v11, "PushAppKey"

    const-string v12, "PushRegistrationId"

    const-string v13, "Email"

    const-string v14, "SupporterStatus"

    const-string v15, "System"

    const-string v16, "SdkVersion"

    const-string v17, "IsSupportTextView"

    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_User_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11873
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11874
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "SenderId"

    const-string v4, "ReceiverId"

    const-string v5, "Type"

    const-string v6, "Content"

    const-string v7, "Pic"

    const-string v8, "ServerId"

    const-string v9, "ServerName"

    const-string v10, "RoleId"

    const-string v11, "RoleName"

    const-string v12, "MsgType"

    const-string v13, "ImgUrl"

    const-string v14, "GameId"

    const-string v15, "CreateTime"

    const-string v16, "SenderName"

    const-string v17, "MsgId"

    const-string v18, "IsSupporter"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11879
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_KeepAlive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11880
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_KeepAlive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11885
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_KeepAlive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11886
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Code"

    const-string v4, "TvSec"

    const-string v5, "TvMsec"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_KeepAlive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11891
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_EnterChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11892
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "User"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_EnterChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11897
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_EnterChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11898
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_EnterChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11903
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_LeaveChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11904
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_LeaveChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11909
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_LeaveChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11910
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_LeaveChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11915
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11916
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Chat"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11921
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11922
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11927
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_NotifyChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11928
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_NotifyChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11933
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_GetChatList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11934
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ReadFlag"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_GetChatList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 11939
    invoke-static {}, Lcom/logic/proto/ChatProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_GetChatList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11940
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "ChatList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_GetChatList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_User_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_User_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_LeaveChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_LeaveChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_LeaveChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_LeaveChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_NotifyChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_NotifyChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$15700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_GetChatList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_GetChatList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_GetChatList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_GetChatList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/logic/proto/ChatProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_Chat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_Chat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_KeepAlive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_KeepAlive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_KeepAlive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_KeepAlive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_EnterChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_C2S_EnterChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_EnterChat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/logic/proto/ChatProto;->internal_static_cs_S2C_EnterChat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 11809
    sget-object v0, Lcom/logic/proto/ChatProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Lcom/logic/proto/ChatProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    return-void
.end method
