package com.logic.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ChatProto {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_cs_C2S_Chat_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_C2S_Chat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_C2S_EnterChat_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_C2S_EnterChat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_C2S_GetChatList_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_C2S_GetChatList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_C2S_KeepAlive_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_C2S_KeepAlive_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_C2S_LeaveChat_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_C2S_LeaveChat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_Chat_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_Chat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_S2C_Chat_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_S2C_Chat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_S2C_EnterChat_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_S2C_EnterChat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_S2C_GetChatList_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_S2C_GetChatList_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_S2C_KeepAlive_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_S2C_KeepAlive_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_S2C_LeaveChat_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_S2C_LeaveChat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_S2C_NotifyChat_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_S2C_NotifyChat_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_cs_User_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_cs_User_fieldAccessorTable;

    /* loaded from: classes.dex */
    public interface C2S_ChatOrBuilder extends MessageOrBuilder {
        Chat getChat();

        ChatOrBuilder getChatOrBuilder();

        boolean hasChat();
    }

    /* loaded from: classes.dex */
    public interface C2S_EnterChatOrBuilder extends MessageOrBuilder {
        User getUser();

        UserOrBuilder getUserOrBuilder();

        boolean hasUser();
    }

    /* loaded from: classes.dex */
    public interface C2S_GetChatListOrBuilder extends MessageOrBuilder {
        int getReadFlag();
    }

    /* loaded from: classes.dex */
    public interface C2S_KeepAliveOrBuilder extends MessageOrBuilder {
    }

    /* loaded from: classes.dex */
    public interface C2S_LeaveChatOrBuilder extends MessageOrBuilder {
    }

    /* loaded from: classes.dex */
    public interface ChatOrBuilder extends MessageOrBuilder {
        String getContent();

        ByteString getContentBytes();

        long getCreateTime();

        int getGameId();

        String getImgUrl();

        ByteString getImgUrlBytes();

        int getIsSupporter();

        long getMsgId();

        int getMsgType();

        ByteString getPic();

        long getReceiverId();

        String getRoleId();

        ByteString getRoleIdBytes();

        String getRoleName();

        ByteString getRoleNameBytes();

        long getSenderId();

        String getSenderName();

        ByteString getSenderNameBytes();

        String getServerId();

        ByteString getServerIdBytes();

        String getServerName();

        ByteString getServerNameBytes();

        int getType();
    }

    /* loaded from: classes.dex */
    public interface S2C_ChatOrBuilder extends MessageOrBuilder {
        Chat getChat();

        ChatOrBuilder getChatOrBuilder();

        CODE getCode();

        int getCodeValue();

        boolean hasChat();
    }

    /* loaded from: classes.dex */
    public interface S2C_EnterChatOrBuilder extends MessageOrBuilder {
        CODE getCode();

        int getCodeValue();

        User getUser();

        UserOrBuilder getUserOrBuilder();

        boolean hasUser();
    }

    /* loaded from: classes.dex */
    public interface S2C_GetChatListOrBuilder extends MessageOrBuilder {
        Chat getChatList(int index);

        int getChatListCount();

        List<Chat> getChatListList();

        ChatOrBuilder getChatListOrBuilder(int index);

        List<? extends ChatOrBuilder> getChatListOrBuilderList();
    }

    /* loaded from: classes.dex */
    public interface S2C_KeepAliveOrBuilder extends MessageOrBuilder {
        CODE getCode();

        int getCodeValue();

        long getTvMsec();

        long getTvSec();
    }

    /* loaded from: classes.dex */
    public interface S2C_LeaveChatOrBuilder extends MessageOrBuilder {
        CODE getCode();

        int getCodeValue();
    }

    /* loaded from: classes.dex */
    public interface S2C_NotifyChatOrBuilder extends MessageOrBuilder {
        Chat getChat();

        ChatOrBuilder getChatOrBuilder();

        boolean hasChat();
    }

    /* loaded from: classes.dex */
    public interface UserOrBuilder extends MessageOrBuilder {
        String getDeviceModel();

        ByteString getDeviceModelBytes();

        String getEmail();

        ByteString getEmailBytes();

        int getGameId();

        String getGameVersion();

        ByteString getGameVersionBytes();

        long getId();

        int getIsSupportTextView();

        int getIsSupporter();

        String getNickName();

        ByteString getNickNameBytes();

        String getPhone();

        ByteString getPhoneBytes();

        String getPushAppKey();

        ByteString getPushAppKeyBytes();

        String getPushRegistrationId();

        ByteString getPushRegistrationIdBytes();

        String getSdkVersion();

        ByteString getSdkVersionBytes();

        int getSupporterStatus();

        int getSystem();

        String getSystemVersion();

        ByteString getSystemVersionBytes();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private ChatProto() {
    }

    public static void registerAllExtensions(ExtensionRegistry registry) {
        registerAllExtensions((ExtensionRegistryLite) registry);
    }

    /* loaded from: classes.dex */
    public enum CODE implements ProtocolMessageEnum {
        CODE_OK(0),
        CODE_ERROR(1),
        UNRECOGNIZED(-1);

        public static final int CODE_ERROR_VALUE = 1;
        public static final int CODE_OK_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<CODE> internalValueMap = new Internal.EnumLiteMap<CODE>() { // from class: com.logic.proto.ChatProto.CODE.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public CODE findValueByNumber(int number) {
                return CODE.forNumber(number);
            }
        };
        private static final CODE[] VALUES = values();

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static CODE valueOf(int value) {
            return forNumber(value);
        }

        public static CODE forNumber(int value) {
            if (value == 0) {
                return CODE_OK;
            }
            if (value != 1) {
                return null;
            }
            return CODE_ERROR;
        }

        public static Internal.EnumLiteMap<CODE> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return ChatProto.getDescriptor().getEnumTypes().get(0);
        }

        public static CODE valueOf(Descriptors.EnumValueDescriptor desc) {
            if (desc.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }

        CODE(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes.dex */
    public enum ID implements ProtocolMessageEnum {
        UNKNOWN(0),
        ID_C2S_KEEP_ALIVE(ID_C2S_KEEP_ALIVE_VALUE),
        ID_S2C_KEEP_ALIVE(ID_S2C_KEEP_ALIVE_VALUE),
        ID_C2S_ENTER_CHAT(ID_C2S_ENTER_CHAT_VALUE),
        ID_S2C_ENTER_CHAT(ID_S2C_ENTER_CHAT_VALUE),
        ID_C2S_LEAVE_CHAT(ID_C2S_LEAVE_CHAT_VALUE),
        ID_S2C_LEAVE_CHAT(ID_S2C_LEAVE_CHAT_VALUE),
        ID_C2S_CHAT(ID_C2S_CHAT_VALUE),
        ID_S2C_CHAT(ID_S2C_CHAT_VALUE),
        ID_S2C_NOTIFY_CHAT(ID_S2C_NOTIFY_CHAT_VALUE),
        ID_C2S_GET_CHAT_LIST(ID_C2S_GET_CHAT_LIST_VALUE),
        ID_S2C_GET_CHAT_LIST(ID_S2C_GET_CHAT_LIST_VALUE),
        UNRECOGNIZED(-1);

        public static final int ID_C2S_CHAT_VALUE = 90006;
        public static final int ID_C2S_ENTER_CHAT_VALUE = 90002;
        public static final int ID_C2S_GET_CHAT_LIST_VALUE = 90009;
        public static final int ID_C2S_KEEP_ALIVE_VALUE = 90000;
        public static final int ID_C2S_LEAVE_CHAT_VALUE = 90004;
        public static final int ID_S2C_CHAT_VALUE = 90007;
        public static final int ID_S2C_ENTER_CHAT_VALUE = 90003;
        public static final int ID_S2C_GET_CHAT_LIST_VALUE = 90010;
        public static final int ID_S2C_KEEP_ALIVE_VALUE = 90001;
        public static final int ID_S2C_LEAVE_CHAT_VALUE = 90005;
        public static final int ID_S2C_NOTIFY_CHAT_VALUE = 90008;
        public static final int UNKNOWN_VALUE = 0;
        private final int value;
        private static final Internal.EnumLiteMap<ID> internalValueMap = new Internal.EnumLiteMap<ID>() { // from class: com.logic.proto.ChatProto.ID.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ID findValueByNumber(int number) {
                return ID.forNumber(number);
            }
        };
        private static final ID[] VALUES = values();

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static ID valueOf(int value) {
            return forNumber(value);
        }

        public static ID forNumber(int value) {
            if (value == 0) {
                return UNKNOWN;
            }
            switch (value) {
                case ID_C2S_KEEP_ALIVE_VALUE:
                    return ID_C2S_KEEP_ALIVE;
                case ID_S2C_KEEP_ALIVE_VALUE:
                    return ID_S2C_KEEP_ALIVE;
                case ID_C2S_ENTER_CHAT_VALUE:
                    return ID_C2S_ENTER_CHAT;
                case ID_S2C_ENTER_CHAT_VALUE:
                    return ID_S2C_ENTER_CHAT;
                case ID_C2S_LEAVE_CHAT_VALUE:
                    return ID_C2S_LEAVE_CHAT;
                case ID_S2C_LEAVE_CHAT_VALUE:
                    return ID_S2C_LEAVE_CHAT;
                case ID_C2S_CHAT_VALUE:
                    return ID_C2S_CHAT;
                case ID_S2C_CHAT_VALUE:
                    return ID_S2C_CHAT;
                case ID_S2C_NOTIFY_CHAT_VALUE:
                    return ID_S2C_NOTIFY_CHAT;
                case ID_C2S_GET_CHAT_LIST_VALUE:
                    return ID_C2S_GET_CHAT_LIST;
                case ID_S2C_GET_CHAT_LIST_VALUE:
                    return ID_S2C_GET_CHAT_LIST;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<ID> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(ordinal());
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return ChatProto.getDescriptor().getEnumTypes().get(1);
        }

        public static ID valueOf(Descriptors.EnumValueDescriptor desc) {
            if (desc.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }

        ID(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes.dex */
    public static final class User extends GeneratedMessageV3 implements UserOrBuilder {
        public static final int DEVICE_MODEL_FIELD_NUMBER = 4;
        public static final int EMAIL_FIELD_NUMBER = 11;
        public static final int GAME_ID_FIELD_NUMBER = 8;
        public static final int GAME_VERSION_FIELD_NUMBER = 6;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int IS_SUPPORTER_FIELD_NUMBER = 3;
        public static final int IS_SUPPORT_TEXT_VIEW_FIELD_NUMBER = 15;
        public static final int NICK_NAME_FIELD_NUMBER = 2;
        public static final int PHONE_FIELD_NUMBER = 7;
        public static final int PUSH_APP_KEY_FIELD_NUMBER = 9;
        public static final int PUSH_REGISTRATION_ID_FIELD_NUMBER = 10;
        public static final int SDK_VERSION_FIELD_NUMBER = 14;
        public static final int SUPPORTER_STATUS_FIELD_NUMBER = 12;
        public static final int SYSTEM_FIELD_NUMBER = 13;
        public static final int SYSTEM_VERSION_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private volatile Object deviceModel_;
        private volatile Object email_;
        private int gameId_;
        private volatile Object gameVersion_;
        private long id_;
        private int isSupportTextView_;
        private int isSupporter_;
        private byte memoizedIsInitialized;
        private volatile Object nickName_;
        private volatile Object phone_;
        private volatile Object pushAppKey_;
        private volatile Object pushRegistrationId_;
        private volatile Object sdkVersion_;
        private int supporterStatus_;
        private volatile Object systemVersion_;
        private int system_;
        private static final User DEFAULT_INSTANCE = new User();
        private static final Parser<User> PARSER = new AbstractParser<User>() { // from class: com.logic.proto.ChatProto.User.1
            @Override // com.google.protobuf.Parser
            public User parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new User(input, extensionRegistry);
            }
        };

        private User(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private User() {
            this.memoizedIsInitialized = (byte) -1;
            this.id_ = 0L;
            this.nickName_ = "";
            this.isSupporter_ = 0;
            this.deviceModel_ = "";
            this.systemVersion_ = "";
            this.gameVersion_ = "";
            this.phone_ = "";
            this.gameId_ = 0;
            this.pushAppKey_ = "";
            this.pushRegistrationId_ = "";
            this.email_ = "";
            this.supporterStatus_ = 0;
            this.system_ = 0;
            this.sdkVersion_ = "";
            this.isSupportTextView_ = 0;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private User(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = input.readTag();
                        switch (readTag) {
                            case 0:
                                z = true;
                            case 9:
                                this.id_ = input.readFixed64();
                            case 18:
                                this.nickName_ = input.readStringRequireUtf8();
                            case 24:
                                this.isSupporter_ = input.readUInt32();
                            case 34:
                                this.deviceModel_ = input.readStringRequireUtf8();
                            case 42:
                                this.systemVersion_ = input.readStringRequireUtf8();
                            case 50:
                                this.gameVersion_ = input.readStringRequireUtf8();
                            case 58:
                                this.phone_ = input.readStringRequireUtf8();
                            case 64:
                                this.gameId_ = input.readUInt32();
                            case 74:
                                this.pushAppKey_ = input.readStringRequireUtf8();
                            case 82:
                                this.pushRegistrationId_ = input.readStringRequireUtf8();
                            case 90:
                                this.email_ = input.readStringRequireUtf8();
                            case 96:
                                this.supporterStatus_ = input.readUInt32();
                            case 104:
                                this.system_ = input.readUInt32();
                            case 114:
                                this.sdkVersion_ = input.readStringRequireUtf8();
                            case 120:
                                this.isSupportTextView_ = input.readUInt32();
                            default:
                                if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                                    z = true;
                                }
                        }
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_User_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_User_fieldAccessorTable.ensureFieldAccessorsInitialized(User.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public long getId() {
            return this.id_;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getNickName() {
            Object obj = this.nickName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.nickName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getNickNameBytes() {
            Object obj = this.nickName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.nickName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public int getIsSupporter() {
            return this.isSupporter_;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getDeviceModel() {
            Object obj = this.deviceModel_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.deviceModel_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getDeviceModelBytes() {
            Object obj = this.deviceModel_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceModel_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getSystemVersion() {
            Object obj = this.systemVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.systemVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getSystemVersionBytes() {
            Object obj = this.systemVersion_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.systemVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getGameVersion() {
            Object obj = this.gameVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gameVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getGameVersionBytes() {
            Object obj = this.gameVersion_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gameVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getPhone() {
            Object obj = this.phone_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.phone_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getPhoneBytes() {
            Object obj = this.phone_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.phone_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public int getGameId() {
            return this.gameId_;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getPushAppKey() {
            Object obj = this.pushAppKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pushAppKey_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getPushAppKeyBytes() {
            Object obj = this.pushAppKey_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.pushAppKey_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getPushRegistrationId() {
            Object obj = this.pushRegistrationId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pushRegistrationId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getPushRegistrationIdBytes() {
            Object obj = this.pushRegistrationId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.pushRegistrationId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getEmail() {
            Object obj = this.email_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.email_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getEmailBytes() {
            Object obj = this.email_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.email_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public int getSupporterStatus() {
            return this.supporterStatus_;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public int getSystem() {
            return this.system_;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public String getSdkVersion() {
            Object obj = this.sdkVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sdkVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public ByteString getSdkVersionBytes() {
            Object obj = this.sdkVersion_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdkVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.UserOrBuilder
        public int getIsSupportTextView() {
            return this.isSupportTextView_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            long j = this.id_;
            if (j != 0) {
                output.writeFixed64(1, j);
            }
            if (!getNickNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 2, this.nickName_);
            }
            int i = this.isSupporter_;
            if (i != 0) {
                output.writeUInt32(3, i);
            }
            if (!getDeviceModelBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.deviceModel_);
            }
            if (!getSystemVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 5, this.systemVersion_);
            }
            if (!getGameVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.gameVersion_);
            }
            if (!getPhoneBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.phone_);
            }
            int i2 = this.gameId_;
            if (i2 != 0) {
                output.writeUInt32(8, i2);
            }
            if (!getPushAppKeyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 9, this.pushAppKey_);
            }
            if (!getPushRegistrationIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 10, this.pushRegistrationId_);
            }
            if (!getEmailBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 11, this.email_);
            }
            int i3 = this.supporterStatus_;
            if (i3 != 0) {
                output.writeUInt32(12, i3);
            }
            int i4 = this.system_;
            if (i4 != 0) {
                output.writeUInt32(13, i4);
            }
            if (!getSdkVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 14, this.sdkVersion_);
            }
            int i5 = this.isSupportTextView_;
            if (i5 != 0) {
                output.writeUInt32(15, i5);
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            long j = this.id_;
            int computeFixed64Size = j != 0 ? 0 + CodedOutputStream.computeFixed64Size(1, j) : 0;
            if (!getNickNameBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(2, this.nickName_);
            }
            int i2 = this.isSupporter_;
            if (i2 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(3, i2);
            }
            if (!getDeviceModelBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(4, this.deviceModel_);
            }
            if (!getSystemVersionBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(5, this.systemVersion_);
            }
            if (!getGameVersionBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(6, this.gameVersion_);
            }
            if (!getPhoneBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(7, this.phone_);
            }
            int i3 = this.gameId_;
            if (i3 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(8, i3);
            }
            if (!getPushAppKeyBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(9, this.pushAppKey_);
            }
            if (!getPushRegistrationIdBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(10, this.pushRegistrationId_);
            }
            if (!getEmailBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(11, this.email_);
            }
            int i4 = this.supporterStatus_;
            if (i4 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(12, i4);
            }
            int i5 = this.system_;
            if (i5 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(13, i5);
            }
            if (!getSdkVersionBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(14, this.sdkVersion_);
            }
            int i6 = this.isSupportTextView_;
            if (i6 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(15, i6);
            }
            int serializedSize = computeFixed64Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof User)) {
                return super.equals(obj);
            }
            User user = (User) obj;
            return ((((((((((((((((getId() > user.getId() ? 1 : (getId() == user.getId() ? 0 : -1)) == 0) && getNickName().equals(user.getNickName())) && getIsSupporter() == user.getIsSupporter()) && getDeviceModel().equals(user.getDeviceModel())) && getSystemVersion().equals(user.getSystemVersion())) && getGameVersion().equals(user.getGameVersion())) && getPhone().equals(user.getPhone())) && getGameId() == user.getGameId()) && getPushAppKey().equals(user.getPushAppKey())) && getPushRegistrationId().equals(user.getPushRegistrationId())) && getEmail().equals(user.getEmail())) && getSupporterStatus() == user.getSupporterStatus()) && getSystem() == user.getSystem()) && getSdkVersion().equals(user.getSdkVersion())) && getIsSupportTextView() == user.getIsSupportTextView()) && this.unknownFields.equals(user.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getId())) * 37) + 2) * 53) + getNickName().hashCode()) * 37) + 3) * 53) + getIsSupporter()) * 37) + 4) * 53) + getDeviceModel().hashCode()) * 37) + 5) * 53) + getSystemVersion().hashCode()) * 37) + 6) * 53) + getGameVersion().hashCode()) * 37) + 7) * 53) + getPhone().hashCode()) * 37) + 8) * 53) + getGameId()) * 37) + 9) * 53) + getPushAppKey().hashCode()) * 37) + 10) * 53) + getPushRegistrationId().hashCode()) * 37) + 11) * 53) + getEmail().hashCode()) * 37) + 12) * 53) + getSupporterStatus()) * 37) + 13) * 53) + getSystem()) * 37) + 14) * 53) + getSdkVersion().hashCode()) * 37) + 15) * 53) + getIsSupportTextView()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static User parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static User parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static User parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static User parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static User parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static User parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static User parseFrom(InputStream input) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static User parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static User parseDelimitedFrom(InputStream input) throws IOException {
            return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static User parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static User parseFrom(CodedInputStream input) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static User parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(User prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements UserOrBuilder {
            private Object deviceModel_;
            private Object email_;
            private int gameId_;
            private Object gameVersion_;
            private long id_;
            private int isSupportTextView_;
            private int isSupporter_;
            private Object nickName_;
            private Object phone_;
            private Object pushAppKey_;
            private Object pushRegistrationId_;
            private Object sdkVersion_;
            private int supporterStatus_;
            private Object systemVersion_;
            private int system_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_User_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_User_fieldAccessorTable.ensureFieldAccessorsInitialized(User.class, Builder.class);
            }

            private Builder() {
                this.nickName_ = "";
                this.deviceModel_ = "";
                this.systemVersion_ = "";
                this.gameVersion_ = "";
                this.phone_ = "";
                this.pushAppKey_ = "";
                this.pushRegistrationId_ = "";
                this.email_ = "";
                this.sdkVersion_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.nickName_ = "";
                this.deviceModel_ = "";
                this.systemVersion_ = "";
                this.gameVersion_ = "";
                this.phone_ = "";
                this.pushAppKey_ = "";
                this.pushRegistrationId_ = "";
                this.email_ = "";
                this.sdkVersion_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = User.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.id_ = 0L;
                this.nickName_ = "";
                this.isSupporter_ = 0;
                this.deviceModel_ = "";
                this.systemVersion_ = "";
                this.gameVersion_ = "";
                this.phone_ = "";
                this.gameId_ = 0;
                this.pushAppKey_ = "";
                this.pushRegistrationId_ = "";
                this.email_ = "";
                this.supporterStatus_ = 0;
                this.system_ = 0;
                this.sdkVersion_ = "";
                this.isSupportTextView_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_User_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public User getDefaultInstanceForType() {
                return User.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public User build() {
                User buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public User buildPartial() {
                User user = new User(this);
                user.id_ = this.id_;
                user.nickName_ = this.nickName_;
                user.isSupporter_ = this.isSupporter_;
                user.deviceModel_ = this.deviceModel_;
                user.systemVersion_ = this.systemVersion_;
                user.gameVersion_ = this.gameVersion_;
                user.phone_ = this.phone_;
                user.gameId_ = this.gameId_;
                user.pushAppKey_ = this.pushAppKey_;
                user.pushRegistrationId_ = this.pushRegistrationId_;
                user.email_ = this.email_;
                user.supporterStatus_ = this.supporterStatus_;
                user.system_ = this.system_;
                user.sdkVersion_ = this.sdkVersion_;
                user.isSupportTextView_ = this.isSupportTextView_;
                onBuilt();
                return user;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof User) {
                    return mergeFrom((User) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(User other) {
                if (other == User.getDefaultInstance()) {
                    return this;
                }
                if (other.getId() != 0) {
                    setId(other.getId());
                }
                if (!other.getNickName().isEmpty()) {
                    this.nickName_ = other.nickName_;
                    onChanged();
                }
                if (other.getIsSupporter() != 0) {
                    setIsSupporter(other.getIsSupporter());
                }
                if (!other.getDeviceModel().isEmpty()) {
                    this.deviceModel_ = other.deviceModel_;
                    onChanged();
                }
                if (!other.getSystemVersion().isEmpty()) {
                    this.systemVersion_ = other.systemVersion_;
                    onChanged();
                }
                if (!other.getGameVersion().isEmpty()) {
                    this.gameVersion_ = other.gameVersion_;
                    onChanged();
                }
                if (!other.getPhone().isEmpty()) {
                    this.phone_ = other.phone_;
                    onChanged();
                }
                if (other.getGameId() != 0) {
                    setGameId(other.getGameId());
                }
                if (!other.getPushAppKey().isEmpty()) {
                    this.pushAppKey_ = other.pushAppKey_;
                    onChanged();
                }
                if (!other.getPushRegistrationId().isEmpty()) {
                    this.pushRegistrationId_ = other.pushRegistrationId_;
                    onChanged();
                }
                if (!other.getEmail().isEmpty()) {
                    this.email_ = other.email_;
                    onChanged();
                }
                if (other.getSupporterStatus() != 0) {
                    setSupporterStatus(other.getSupporterStatus());
                }
                if (other.getSystem() != 0) {
                    setSystem(other.getSystem());
                }
                if (!other.getSdkVersion().isEmpty()) {
                    this.sdkVersion_ = other.sdkVersion_;
                    onChanged();
                }
                if (other.getIsSupportTextView() != 0) {
                    setIsSupportTextView(other.getIsSupportTextView());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.User.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.User.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$User r3 = (com.logic.proto.ChatProto.User) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$User r4 = (com.logic.proto.ChatProto.User) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.User.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$User$Builder");
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public long getId() {
                return this.id_;
            }

            public Builder setId(long value) {
                this.id_ = value;
                onChanged();
                return this;
            }

            public Builder clearId() {
                this.id_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getNickName() {
                Object obj = this.nickName_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.nickName_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getNickNameBytes() {
                Object obj = this.nickName_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.nickName_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setNickName(String value) {
                Objects.requireNonNull(value);
                this.nickName_ = value;
                onChanged();
                return this;
            }

            public Builder clearNickName() {
                this.nickName_ = User.getDefaultInstance().getNickName();
                onChanged();
                return this;
            }

            public Builder setNickNameBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.nickName_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public int getIsSupporter() {
                return this.isSupporter_;
            }

            public Builder setIsSupporter(int value) {
                this.isSupporter_ = value;
                onChanged();
                return this;
            }

            public Builder clearIsSupporter() {
                this.isSupporter_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getDeviceModel() {
                Object obj = this.deviceModel_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.deviceModel_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getDeviceModelBytes() {
                Object obj = this.deviceModel_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.deviceModel_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDeviceModel(String value) {
                Objects.requireNonNull(value);
                this.deviceModel_ = value;
                onChanged();
                return this;
            }

            public Builder clearDeviceModel() {
                this.deviceModel_ = User.getDefaultInstance().getDeviceModel();
                onChanged();
                return this;
            }

            public Builder setDeviceModelBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.deviceModel_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getSystemVersion() {
                Object obj = this.systemVersion_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.systemVersion_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getSystemVersionBytes() {
                Object obj = this.systemVersion_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.systemVersion_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSystemVersion(String value) {
                Objects.requireNonNull(value);
                this.systemVersion_ = value;
                onChanged();
                return this;
            }

            public Builder clearSystemVersion() {
                this.systemVersion_ = User.getDefaultInstance().getSystemVersion();
                onChanged();
                return this;
            }

            public Builder setSystemVersionBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.systemVersion_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getGameVersion() {
                Object obj = this.gameVersion_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.gameVersion_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getGameVersionBytes() {
                Object obj = this.gameVersion_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gameVersion_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setGameVersion(String value) {
                Objects.requireNonNull(value);
                this.gameVersion_ = value;
                onChanged();
                return this;
            }

            public Builder clearGameVersion() {
                this.gameVersion_ = User.getDefaultInstance().getGameVersion();
                onChanged();
                return this;
            }

            public Builder setGameVersionBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.gameVersion_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getPhone() {
                Object obj = this.phone_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.phone_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getPhoneBytes() {
                Object obj = this.phone_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.phone_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPhone(String value) {
                Objects.requireNonNull(value);
                this.phone_ = value;
                onChanged();
                return this;
            }

            public Builder clearPhone() {
                this.phone_ = User.getDefaultInstance().getPhone();
                onChanged();
                return this;
            }

            public Builder setPhoneBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.phone_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public int getGameId() {
                return this.gameId_;
            }

            public Builder setGameId(int value) {
                this.gameId_ = value;
                onChanged();
                return this;
            }

            public Builder clearGameId() {
                this.gameId_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getPushAppKey() {
                Object obj = this.pushAppKey_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.pushAppKey_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getPushAppKeyBytes() {
                Object obj = this.pushAppKey_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.pushAppKey_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPushAppKey(String value) {
                Objects.requireNonNull(value);
                this.pushAppKey_ = value;
                onChanged();
                return this;
            }

            public Builder clearPushAppKey() {
                this.pushAppKey_ = User.getDefaultInstance().getPushAppKey();
                onChanged();
                return this;
            }

            public Builder setPushAppKeyBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.pushAppKey_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getPushRegistrationId() {
                Object obj = this.pushRegistrationId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.pushRegistrationId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getPushRegistrationIdBytes() {
                Object obj = this.pushRegistrationId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.pushRegistrationId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setPushRegistrationId(String value) {
                Objects.requireNonNull(value);
                this.pushRegistrationId_ = value;
                onChanged();
                return this;
            }

            public Builder clearPushRegistrationId() {
                this.pushRegistrationId_ = User.getDefaultInstance().getPushRegistrationId();
                onChanged();
                return this;
            }

            public Builder setPushRegistrationIdBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.pushRegistrationId_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getEmail() {
                Object obj = this.email_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.email_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getEmailBytes() {
                Object obj = this.email_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.email_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setEmail(String value) {
                Objects.requireNonNull(value);
                this.email_ = value;
                onChanged();
                return this;
            }

            public Builder clearEmail() {
                this.email_ = User.getDefaultInstance().getEmail();
                onChanged();
                return this;
            }

            public Builder setEmailBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.email_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public int getSupporterStatus() {
                return this.supporterStatus_;
            }

            public Builder setSupporterStatus(int value) {
                this.supporterStatus_ = value;
                onChanged();
                return this;
            }

            public Builder clearSupporterStatus() {
                this.supporterStatus_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public int getSystem() {
                return this.system_;
            }

            public Builder setSystem(int value) {
                this.system_ = value;
                onChanged();
                return this;
            }

            public Builder clearSystem() {
                this.system_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public String getSdkVersion() {
                Object obj = this.sdkVersion_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.sdkVersion_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public ByteString getSdkVersionBytes() {
                Object obj = this.sdkVersion_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sdkVersion_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSdkVersion(String value) {
                Objects.requireNonNull(value);
                this.sdkVersion_ = value;
                onChanged();
                return this;
            }

            public Builder clearSdkVersion() {
                this.sdkVersion_ = User.getDefaultInstance().getSdkVersion();
                onChanged();
                return this;
            }

            public Builder setSdkVersionBytes(ByteString value) {
                Objects.requireNonNull(value);
                User.checkByteStringIsUtf8(value);
                this.sdkVersion_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.UserOrBuilder
            public int getIsSupportTextView() {
                return this.isSupportTextView_;
            }

            public Builder setIsSupportTextView(int value) {
                this.isSupportTextView_ = value;
                onChanged();
                return this;
            }

            public Builder clearIsSupportTextView() {
                this.isSupportTextView_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static User getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<User> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<User> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public User getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class Chat extends GeneratedMessageV3 implements ChatOrBuilder {
        public static final int CONTENT_FIELD_NUMBER = 4;
        public static final int CREATE_TIME_FIELD_NUMBER = 13;
        public static final int GAME_ID_FIELD_NUMBER = 12;
        public static final int IMG_URL_FIELD_NUMBER = 11;
        public static final int IS_SUPPORTER_FIELD_NUMBER = 16;
        public static final int MSG_ID_FIELD_NUMBER = 15;
        public static final int MSG_TYPE_FIELD_NUMBER = 10;
        public static final int PIC_FIELD_NUMBER = 5;
        public static final int RECEIVER_ID_FIELD_NUMBER = 2;
        public static final int ROLE_ID_FIELD_NUMBER = 8;
        public static final int ROLE_NAME_FIELD_NUMBER = 9;
        public static final int SENDER_ID_FIELD_NUMBER = 1;
        public static final int SENDER_NAME_FIELD_NUMBER = 14;
        public static final int SERVER_ID_FIELD_NUMBER = 6;
        public static final int SERVER_NAME_FIELD_NUMBER = 7;
        public static final int TYPE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object content_;
        private long createTime_;
        private int gameId_;
        private volatile Object imgUrl_;
        private int isSupporter_;
        private byte memoizedIsInitialized;
        private long msgId_;
        private int msgType_;
        private ByteString pic_;
        private long receiverId_;
        private volatile Object roleId_;
        private volatile Object roleName_;
        private long senderId_;
        private volatile Object senderName_;
        private volatile Object serverId_;
        private volatile Object serverName_;
        private int type_;
        private static final Chat DEFAULT_INSTANCE = new Chat();
        private static final Parser<Chat> PARSER = new AbstractParser<Chat>() { // from class: com.logic.proto.ChatProto.Chat.1
            @Override // com.google.protobuf.Parser
            public Chat parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new Chat(input, extensionRegistry);
            }
        };

        private Chat(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Chat() {
            this.memoizedIsInitialized = (byte) -1;
            this.senderId_ = 0L;
            this.receiverId_ = 0L;
            this.type_ = 0;
            this.content_ = "";
            this.pic_ = ByteString.EMPTY;
            this.serverId_ = "";
            this.serverName_ = "";
            this.roleId_ = "";
            this.roleName_ = "";
            this.msgType_ = 0;
            this.imgUrl_ = "";
            this.gameId_ = 0;
            this.createTime_ = 0L;
            this.senderName_ = "";
            this.msgId_ = 0L;
            this.isSupporter_ = 0;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
        private Chat(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = input.readTag();
                            switch (readTag) {
                                case 0:
                                    z = true;
                                case 9:
                                    this.senderId_ = input.readFixed64();
                                case 17:
                                    this.receiverId_ = input.readFixed64();
                                case 24:
                                    this.type_ = input.readUInt32();
                                case 34:
                                    this.content_ = input.readStringRequireUtf8();
                                case 42:
                                    this.pic_ = input.readBytes();
                                case 50:
                                    this.serverId_ = input.readStringRequireUtf8();
                                case 58:
                                    this.serverName_ = input.readStringRequireUtf8();
                                case 66:
                                    this.roleId_ = input.readStringRequireUtf8();
                                case 74:
                                    this.roleName_ = input.readStringRequireUtf8();
                                case 80:
                                    this.msgType_ = input.readUInt32();
                                case 90:
                                    this.imgUrl_ = input.readStringRequireUtf8();
                                case 96:
                                    this.gameId_ = input.readUInt32();
                                case 105:
                                    this.createTime_ = input.readFixed64();
                                case 114:
                                    this.senderName_ = input.readStringRequireUtf8();
                                case 121:
                                    this.msgId_ = input.readFixed64();
                                case 128:
                                    this.isSupporter_ = input.readUInt32();
                                default:
                                    if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                                        z = true;
                                    }
                            }
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_Chat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_Chat_fieldAccessorTable.ensureFieldAccessorsInitialized(Chat.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public long getSenderId() {
            return this.senderId_;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public long getReceiverId() {
            return this.receiverId_;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public int getType() {
            return this.type_;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public String getContent() {
            Object obj = this.content_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.content_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public ByteString getContentBytes() {
            Object obj = this.content_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.content_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public ByteString getPic() {
            return this.pic_;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public String getServerId() {
            Object obj = this.serverId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.serverId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public ByteString getServerIdBytes() {
            Object obj = this.serverId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serverId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public String getServerName() {
            Object obj = this.serverName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.serverName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public ByteString getServerNameBytes() {
            Object obj = this.serverName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serverName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public String getRoleId() {
            Object obj = this.roleId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.roleId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public ByteString getRoleIdBytes() {
            Object obj = this.roleId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.roleId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public String getRoleName() {
            Object obj = this.roleName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.roleName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public ByteString getRoleNameBytes() {
            Object obj = this.roleName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.roleName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public int getMsgType() {
            return this.msgType_;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public String getImgUrl() {
            Object obj = this.imgUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.imgUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public ByteString getImgUrlBytes() {
            Object obj = this.imgUrl_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.imgUrl_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public int getGameId() {
            return this.gameId_;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public long getCreateTime() {
            return this.createTime_;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public String getSenderName() {
            Object obj = this.senderName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.senderName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public ByteString getSenderNameBytes() {
            Object obj = this.senderName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.senderName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public long getMsgId() {
            return this.msgId_;
        }

        @Override // com.logic.proto.ChatProto.ChatOrBuilder
        public int getIsSupporter() {
            return this.isSupporter_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            long j = this.senderId_;
            if (j != 0) {
                output.writeFixed64(1, j);
            }
            long j2 = this.receiverId_;
            if (j2 != 0) {
                output.writeFixed64(2, j2);
            }
            int i = this.type_;
            if (i != 0) {
                output.writeUInt32(3, i);
            }
            if (!getContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 4, this.content_);
            }
            if (!this.pic_.isEmpty()) {
                output.writeBytes(5, this.pic_);
            }
            if (!getServerIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 6, this.serverId_);
            }
            if (!getServerNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 7, this.serverName_);
            }
            if (!getRoleIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 8, this.roleId_);
            }
            if (!getRoleNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 9, this.roleName_);
            }
            int i2 = this.msgType_;
            if (i2 != 0) {
                output.writeUInt32(10, i2);
            }
            if (!getImgUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 11, this.imgUrl_);
            }
            int i3 = this.gameId_;
            if (i3 != 0) {
                output.writeUInt32(12, i3);
            }
            long j3 = this.createTime_;
            if (j3 != 0) {
                output.writeFixed64(13, j3);
            }
            if (!getSenderNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(output, 14, this.senderName_);
            }
            long j4 = this.msgId_;
            if (j4 != 0) {
                output.writeFixed64(15, j4);
            }
            int i4 = this.isSupporter_;
            if (i4 != 0) {
                output.writeUInt32(16, i4);
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            long j = this.senderId_;
            int computeFixed64Size = j != 0 ? 0 + CodedOutputStream.computeFixed64Size(1, j) : 0;
            long j2 = this.receiverId_;
            if (j2 != 0) {
                computeFixed64Size += CodedOutputStream.computeFixed64Size(2, j2);
            }
            int i2 = this.type_;
            if (i2 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(3, i2);
            }
            if (!getContentBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(4, this.content_);
            }
            if (!this.pic_.isEmpty()) {
                computeFixed64Size += CodedOutputStream.computeBytesSize(5, this.pic_);
            }
            if (!getServerIdBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(6, this.serverId_);
            }
            if (!getServerNameBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(7, this.serverName_);
            }
            if (!getRoleIdBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(8, this.roleId_);
            }
            if (!getRoleNameBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(9, this.roleName_);
            }
            int i3 = this.msgType_;
            if (i3 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(10, i3);
            }
            if (!getImgUrlBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(11, this.imgUrl_);
            }
            int i4 = this.gameId_;
            if (i4 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(12, i4);
            }
            long j3 = this.createTime_;
            if (j3 != 0) {
                computeFixed64Size += CodedOutputStream.computeFixed64Size(13, j3);
            }
            if (!getSenderNameBytes().isEmpty()) {
                computeFixed64Size += GeneratedMessageV3.computeStringSize(14, this.senderName_);
            }
            long j4 = this.msgId_;
            if (j4 != 0) {
                computeFixed64Size += CodedOutputStream.computeFixed64Size(15, j4);
            }
            int i5 = this.isSupporter_;
            if (i5 != 0) {
                computeFixed64Size += CodedOutputStream.computeUInt32Size(16, i5);
            }
            int serializedSize = computeFixed64Size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Chat)) {
                return super.equals(obj);
            }
            Chat chat = (Chat) obj;
            return (((((((((((((((((getSenderId() > chat.getSenderId() ? 1 : (getSenderId() == chat.getSenderId() ? 0 : -1)) == 0) && (getReceiverId() > chat.getReceiverId() ? 1 : (getReceiverId() == chat.getReceiverId() ? 0 : -1)) == 0) && getType() == chat.getType()) && getContent().equals(chat.getContent())) && getPic().equals(chat.getPic())) && getServerId().equals(chat.getServerId())) && getServerName().equals(chat.getServerName())) && getRoleId().equals(chat.getRoleId())) && getRoleName().equals(chat.getRoleName())) && getMsgType() == chat.getMsgType()) && getImgUrl().equals(chat.getImgUrl())) && getGameId() == chat.getGameId()) && (getCreateTime() > chat.getCreateTime() ? 1 : (getCreateTime() == chat.getCreateTime() ? 0 : -1)) == 0) && getSenderName().equals(chat.getSenderName())) && (getMsgId() > chat.getMsgId() ? 1 : (getMsgId() == chat.getMsgId() ? 0 : -1)) == 0) && getIsSupporter() == chat.getIsSupporter()) && this.unknownFields.equals(chat.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashLong(getSenderId())) * 37) + 2) * 53) + Internal.hashLong(getReceiverId())) * 37) + 3) * 53) + getType()) * 37) + 4) * 53) + getContent().hashCode()) * 37) + 5) * 53) + getPic().hashCode()) * 37) + 6) * 53) + getServerId().hashCode()) * 37) + 7) * 53) + getServerName().hashCode()) * 37) + 8) * 53) + getRoleId().hashCode()) * 37) + 9) * 53) + getRoleName().hashCode()) * 37) + 10) * 53) + getMsgType()) * 37) + 11) * 53) + getImgUrl().hashCode()) * 37) + 12) * 53) + getGameId()) * 37) + 13) * 53) + Internal.hashLong(getCreateTime())) * 37) + 14) * 53) + getSenderName().hashCode()) * 37) + 15) * 53) + Internal.hashLong(getMsgId())) * 37) + 16) * 53) + getIsSupporter()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static Chat parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Chat parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static Chat parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Chat parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static Chat parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static Chat parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static Chat parseFrom(InputStream input) throws IOException {
            return (Chat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static Chat parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Chat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static Chat parseDelimitedFrom(InputStream input) throws IOException {
            return (Chat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static Chat parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Chat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static Chat parseFrom(CodedInputStream input) throws IOException {
            return (Chat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static Chat parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Chat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Chat prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ChatOrBuilder {
            private Object content_;
            private long createTime_;
            private int gameId_;
            private Object imgUrl_;
            private int isSupporter_;
            private long msgId_;
            private int msgType_;
            private ByteString pic_;
            private long receiverId_;
            private Object roleId_;
            private Object roleName_;
            private long senderId_;
            private Object senderName_;
            private Object serverId_;
            private Object serverName_;
            private int type_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_Chat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_Chat_fieldAccessorTable.ensureFieldAccessorsInitialized(Chat.class, Builder.class);
            }

            private Builder() {
                this.content_ = "";
                this.pic_ = ByteString.EMPTY;
                this.serverId_ = "";
                this.serverName_ = "";
                this.roleId_ = "";
                this.roleName_ = "";
                this.imgUrl_ = "";
                this.senderName_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.content_ = "";
                this.pic_ = ByteString.EMPTY;
                this.serverId_ = "";
                this.serverName_ = "";
                this.roleId_ = "";
                this.roleName_ = "";
                this.imgUrl_ = "";
                this.senderName_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Chat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.senderId_ = 0L;
                this.receiverId_ = 0L;
                this.type_ = 0;
                this.content_ = "";
                this.pic_ = ByteString.EMPTY;
                this.serverId_ = "";
                this.serverName_ = "";
                this.roleId_ = "";
                this.roleName_ = "";
                this.msgType_ = 0;
                this.imgUrl_ = "";
                this.gameId_ = 0;
                this.createTime_ = 0L;
                this.senderName_ = "";
                this.msgId_ = 0L;
                this.isSupporter_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_Chat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Chat getDefaultInstanceForType() {
                return Chat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Chat build() {
                Chat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Chat buildPartial() {
                Chat chat = new Chat(this);
                chat.senderId_ = this.senderId_;
                chat.receiverId_ = this.receiverId_;
                chat.type_ = this.type_;
                chat.content_ = this.content_;
                chat.pic_ = this.pic_;
                chat.serverId_ = this.serverId_;
                chat.serverName_ = this.serverName_;
                chat.roleId_ = this.roleId_;
                chat.roleName_ = this.roleName_;
                chat.msgType_ = this.msgType_;
                chat.imgUrl_ = this.imgUrl_;
                chat.gameId_ = this.gameId_;
                chat.createTime_ = this.createTime_;
                chat.senderName_ = this.senderName_;
                chat.msgId_ = this.msgId_;
                chat.isSupporter_ = this.isSupporter_;
                onBuilt();
                return chat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof Chat) {
                    return mergeFrom((Chat) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(Chat other) {
                if (other == Chat.getDefaultInstance()) {
                    return this;
                }
                if (other.getSenderId() != 0) {
                    setSenderId(other.getSenderId());
                }
                if (other.getReceiverId() != 0) {
                    setReceiverId(other.getReceiverId());
                }
                if (other.getType() != 0) {
                    setType(other.getType());
                }
                if (!other.getContent().isEmpty()) {
                    this.content_ = other.content_;
                    onChanged();
                }
                if (other.getPic() != ByteString.EMPTY) {
                    setPic(other.getPic());
                }
                if (!other.getServerId().isEmpty()) {
                    this.serverId_ = other.serverId_;
                    onChanged();
                }
                if (!other.getServerName().isEmpty()) {
                    this.serverName_ = other.serverName_;
                    onChanged();
                }
                if (!other.getRoleId().isEmpty()) {
                    this.roleId_ = other.roleId_;
                    onChanged();
                }
                if (!other.getRoleName().isEmpty()) {
                    this.roleName_ = other.roleName_;
                    onChanged();
                }
                if (other.getMsgType() != 0) {
                    setMsgType(other.getMsgType());
                }
                if (!other.getImgUrl().isEmpty()) {
                    this.imgUrl_ = other.imgUrl_;
                    onChanged();
                }
                if (other.getGameId() != 0) {
                    setGameId(other.getGameId());
                }
                if (other.getCreateTime() != 0) {
                    setCreateTime(other.getCreateTime());
                }
                if (!other.getSenderName().isEmpty()) {
                    this.senderName_ = other.senderName_;
                    onChanged();
                }
                if (other.getMsgId() != 0) {
                    setMsgId(other.getMsgId());
                }
                if (other.getIsSupporter() != 0) {
                    setIsSupporter(other.getIsSupporter());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.Chat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.Chat.access$5600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$Chat r3 = (com.logic.proto.ChatProto.Chat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$Chat r4 = (com.logic.proto.ChatProto.Chat) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.Chat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$Chat$Builder");
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public long getSenderId() {
                return this.senderId_;
            }

            public Builder setSenderId(long value) {
                this.senderId_ = value;
                onChanged();
                return this;
            }

            public Builder clearSenderId() {
                this.senderId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public long getReceiverId() {
                return this.receiverId_;
            }

            public Builder setReceiverId(long value) {
                this.receiverId_ = value;
                onChanged();
                return this;
            }

            public Builder clearReceiverId() {
                this.receiverId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public int getType() {
                return this.type_;
            }

            public Builder setType(int value) {
                this.type_ = value;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.type_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public String getContent() {
                Object obj = this.content_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.content_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public ByteString getContentBytes() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.content_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setContent(String value) {
                Objects.requireNonNull(value);
                this.content_ = value;
                onChanged();
                return this;
            }

            public Builder clearContent() {
                this.content_ = Chat.getDefaultInstance().getContent();
                onChanged();
                return this;
            }

            public Builder setContentBytes(ByteString value) {
                Objects.requireNonNull(value);
                Chat.checkByteStringIsUtf8(value);
                this.content_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public ByteString getPic() {
                return this.pic_;
            }

            public Builder setPic(ByteString value) {
                Objects.requireNonNull(value);
                this.pic_ = value;
                onChanged();
                return this;
            }

            public Builder clearPic() {
                this.pic_ = Chat.getDefaultInstance().getPic();
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public String getServerId() {
                Object obj = this.serverId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.serverId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public ByteString getServerIdBytes() {
                Object obj = this.serverId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.serverId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setServerId(String value) {
                Objects.requireNonNull(value);
                this.serverId_ = value;
                onChanged();
                return this;
            }

            public Builder clearServerId() {
                this.serverId_ = Chat.getDefaultInstance().getServerId();
                onChanged();
                return this;
            }

            public Builder setServerIdBytes(ByteString value) {
                Objects.requireNonNull(value);
                Chat.checkByteStringIsUtf8(value);
                this.serverId_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public String getServerName() {
                Object obj = this.serverName_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.serverName_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public ByteString getServerNameBytes() {
                Object obj = this.serverName_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.serverName_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setServerName(String value) {
                Objects.requireNonNull(value);
                this.serverName_ = value;
                onChanged();
                return this;
            }

            public Builder clearServerName() {
                this.serverName_ = Chat.getDefaultInstance().getServerName();
                onChanged();
                return this;
            }

            public Builder setServerNameBytes(ByteString value) {
                Objects.requireNonNull(value);
                Chat.checkByteStringIsUtf8(value);
                this.serverName_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public String getRoleId() {
                Object obj = this.roleId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.roleId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public ByteString getRoleIdBytes() {
                Object obj = this.roleId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.roleId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRoleId(String value) {
                Objects.requireNonNull(value);
                this.roleId_ = value;
                onChanged();
                return this;
            }

            public Builder clearRoleId() {
                this.roleId_ = Chat.getDefaultInstance().getRoleId();
                onChanged();
                return this;
            }

            public Builder setRoleIdBytes(ByteString value) {
                Objects.requireNonNull(value);
                Chat.checkByteStringIsUtf8(value);
                this.roleId_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public String getRoleName() {
                Object obj = this.roleName_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.roleName_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public ByteString getRoleNameBytes() {
                Object obj = this.roleName_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.roleName_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setRoleName(String value) {
                Objects.requireNonNull(value);
                this.roleName_ = value;
                onChanged();
                return this;
            }

            public Builder clearRoleName() {
                this.roleName_ = Chat.getDefaultInstance().getRoleName();
                onChanged();
                return this;
            }

            public Builder setRoleNameBytes(ByteString value) {
                Objects.requireNonNull(value);
                Chat.checkByteStringIsUtf8(value);
                this.roleName_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public int getMsgType() {
                return this.msgType_;
            }

            public Builder setMsgType(int value) {
                this.msgType_ = value;
                onChanged();
                return this;
            }

            public Builder clearMsgType() {
                this.msgType_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public String getImgUrl() {
                Object obj = this.imgUrl_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.imgUrl_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public ByteString getImgUrlBytes() {
                Object obj = this.imgUrl_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.imgUrl_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setImgUrl(String value) {
                Objects.requireNonNull(value);
                this.imgUrl_ = value;
                onChanged();
                return this;
            }

            public Builder clearImgUrl() {
                this.imgUrl_ = Chat.getDefaultInstance().getImgUrl();
                onChanged();
                return this;
            }

            public Builder setImgUrlBytes(ByteString value) {
                Objects.requireNonNull(value);
                Chat.checkByteStringIsUtf8(value);
                this.imgUrl_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public int getGameId() {
                return this.gameId_;
            }

            public Builder setGameId(int value) {
                this.gameId_ = value;
                onChanged();
                return this;
            }

            public Builder clearGameId() {
                this.gameId_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public long getCreateTime() {
                return this.createTime_;
            }

            public Builder setCreateTime(long value) {
                this.createTime_ = value;
                onChanged();
                return this;
            }

            public Builder clearCreateTime() {
                this.createTime_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public String getSenderName() {
                Object obj = this.senderName_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.senderName_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public ByteString getSenderNameBytes() {
                Object obj = this.senderName_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.senderName_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSenderName(String value) {
                Objects.requireNonNull(value);
                this.senderName_ = value;
                onChanged();
                return this;
            }

            public Builder clearSenderName() {
                this.senderName_ = Chat.getDefaultInstance().getSenderName();
                onChanged();
                return this;
            }

            public Builder setSenderNameBytes(ByteString value) {
                Objects.requireNonNull(value);
                Chat.checkByteStringIsUtf8(value);
                this.senderName_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public long getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(long value) {
                this.msgId_ = value;
                onChanged();
                return this;
            }

            public Builder clearMsgId() {
                this.msgId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.ChatOrBuilder
            public int getIsSupporter() {
                return this.isSupporter_;
            }

            public Builder setIsSupporter(int value) {
                this.isSupporter_ = value;
                onChanged();
                return this;
            }

            public Builder clearIsSupporter() {
                this.isSupporter_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static Chat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Chat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Chat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Chat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class C2S_KeepAlive extends GeneratedMessageV3 implements C2S_KeepAliveOrBuilder {
        private static final C2S_KeepAlive DEFAULT_INSTANCE = new C2S_KeepAlive();
        private static final Parser<C2S_KeepAlive> PARSER = new AbstractParser<C2S_KeepAlive>() { // from class: com.logic.proto.ChatProto.C2S_KeepAlive.1
            @Override // com.google.protobuf.Parser
            public C2S_KeepAlive parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new C2S_KeepAlive(input, extensionRegistry);
            }
        };
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        private C2S_KeepAlive(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private C2S_KeepAlive() {
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private C2S_KeepAlive(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = input.readTag();
                            if (readTag == 0 || !parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_C2S_KeepAlive_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_C2S_KeepAlive_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_KeepAlive.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof C2S_KeepAlive) {
                return this.unknownFields.equals(((C2S_KeepAlive) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static C2S_KeepAlive parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_KeepAlive parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_KeepAlive parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_KeepAlive parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_KeepAlive parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_KeepAlive parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_KeepAlive parseFrom(InputStream input) throws IOException {
            return (C2S_KeepAlive) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_KeepAlive parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_KeepAlive) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_KeepAlive parseDelimitedFrom(InputStream input) throws IOException {
            return (C2S_KeepAlive) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static C2S_KeepAlive parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_KeepAlive) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_KeepAlive parseFrom(CodedInputStream input) throws IOException {
            return (C2S_KeepAlive) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_KeepAlive parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_KeepAlive) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(C2S_KeepAlive prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements C2S_KeepAliveOrBuilder {
            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_C2S_KeepAlive_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_C2S_KeepAlive_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_KeepAlive.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = C2S_KeepAlive.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_C2S_KeepAlive_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public C2S_KeepAlive getDefaultInstanceForType() {
                return C2S_KeepAlive.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_KeepAlive build() {
                C2S_KeepAlive buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_KeepAlive buildPartial() {
                C2S_KeepAlive c2S_KeepAlive = new C2S_KeepAlive(this);
                onBuilt();
                return c2S_KeepAlive;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof C2S_KeepAlive) {
                    return mergeFrom((C2S_KeepAlive) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(C2S_KeepAlive other) {
                if (other == C2S_KeepAlive.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.C2S_KeepAlive.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.C2S_KeepAlive.access$7200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$C2S_KeepAlive r3 = (com.logic.proto.ChatProto.C2S_KeepAlive) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$C2S_KeepAlive r4 = (com.logic.proto.ChatProto.C2S_KeepAlive) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.C2S_KeepAlive.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$C2S_KeepAlive$Builder");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static C2S_KeepAlive getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<C2S_KeepAlive> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<C2S_KeepAlive> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public C2S_KeepAlive getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class S2C_KeepAlive extends GeneratedMessageV3 implements S2C_KeepAliveOrBuilder {
        public static final int CODE_FIELD_NUMBER = 1;
        private static final S2C_KeepAlive DEFAULT_INSTANCE = new S2C_KeepAlive();
        private static final Parser<S2C_KeepAlive> PARSER = new AbstractParser<S2C_KeepAlive>() { // from class: com.logic.proto.ChatProto.S2C_KeepAlive.1
            @Override // com.google.protobuf.Parser
            public S2C_KeepAlive parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new S2C_KeepAlive(input, extensionRegistry);
            }
        };
        public static final int TV_MSEC_FIELD_NUMBER = 3;
        public static final int TV_SEC_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int code_;
        private byte memoizedIsInitialized;
        private long tvMsec_;
        private long tvSec_;

        private S2C_KeepAlive(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private S2C_KeepAlive() {
            this.memoizedIsInitialized = (byte) -1;
            this.code_ = 0;
            this.tvSec_ = 0L;
            this.tvMsec_ = 0L;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private S2C_KeepAlive(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = input.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.code_ = input.readEnum();
                            } else if (readTag == 17) {
                                this.tvSec_ = input.readFixed64();
                            } else if (readTag == 25) {
                                this.tvMsec_ = input.readFixed64();
                            } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_S2C_KeepAlive_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_S2C_KeepAlive_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_KeepAlive.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.S2C_KeepAliveOrBuilder
        public int getCodeValue() {
            return this.code_;
        }

        @Override // com.logic.proto.ChatProto.S2C_KeepAliveOrBuilder
        public CODE getCode() {
            CODE valueOf = CODE.valueOf(this.code_);
            return valueOf == null ? CODE.UNRECOGNIZED : valueOf;
        }

        @Override // com.logic.proto.ChatProto.S2C_KeepAliveOrBuilder
        public long getTvSec() {
            return this.tvSec_;
        }

        @Override // com.logic.proto.ChatProto.S2C_KeepAliveOrBuilder
        public long getTvMsec() {
            return this.tvMsec_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (this.code_ != CODE.CODE_OK.getNumber()) {
                output.writeEnum(1, this.code_);
            }
            long j = this.tvSec_;
            if (j != 0) {
                output.writeFixed64(2, j);
            }
            long j2 = this.tvMsec_;
            if (j2 != 0) {
                output.writeFixed64(3, j2);
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = this.code_ != CODE.CODE_OK.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.code_) : 0;
            long j = this.tvSec_;
            if (j != 0) {
                computeEnumSize += CodedOutputStream.computeFixed64Size(2, j);
            }
            long j2 = this.tvMsec_;
            if (j2 != 0) {
                computeEnumSize += CodedOutputStream.computeFixed64Size(3, j2);
            }
            int serializedSize = computeEnumSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof S2C_KeepAlive)) {
                return super.equals(obj);
            }
            S2C_KeepAlive s2C_KeepAlive = (S2C_KeepAlive) obj;
            return (((this.code_ == s2C_KeepAlive.code_) && (getTvSec() > s2C_KeepAlive.getTvSec() ? 1 : (getTvSec() == s2C_KeepAlive.getTvSec() ? 0 : -1)) == 0) && (getTvMsec() > s2C_KeepAlive.getTvMsec() ? 1 : (getTvMsec() == s2C_KeepAlive.getTvMsec() ? 0 : -1)) == 0) && this.unknownFields.equals(s2C_KeepAlive.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.code_) * 37) + 2) * 53) + Internal.hashLong(getTvSec())) * 37) + 3) * 53) + Internal.hashLong(getTvMsec())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static S2C_KeepAlive parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_KeepAlive parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_KeepAlive parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_KeepAlive parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_KeepAlive parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_KeepAlive parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_KeepAlive parseFrom(InputStream input) throws IOException {
            return (S2C_KeepAlive) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_KeepAlive parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_KeepAlive) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_KeepAlive parseDelimitedFrom(InputStream input) throws IOException {
            return (S2C_KeepAlive) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static S2C_KeepAlive parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_KeepAlive) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_KeepAlive parseFrom(CodedInputStream input) throws IOException {
            return (S2C_KeepAlive) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_KeepAlive parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_KeepAlive) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(S2C_KeepAlive prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements S2C_KeepAliveOrBuilder {
            private int code_;
            private long tvMsec_;
            private long tvSec_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_S2C_KeepAlive_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_S2C_KeepAlive_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_KeepAlive.class, Builder.class);
            }

            private Builder() {
                this.code_ = 0;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.code_ = 0;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = S2C_KeepAlive.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.code_ = 0;
                this.tvSec_ = 0L;
                this.tvMsec_ = 0L;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_S2C_KeepAlive_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public S2C_KeepAlive getDefaultInstanceForType() {
                return S2C_KeepAlive.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_KeepAlive build() {
                S2C_KeepAlive buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_KeepAlive buildPartial() {
                S2C_KeepAlive s2C_KeepAlive = new S2C_KeepAlive(this);
                s2C_KeepAlive.code_ = this.code_;
                s2C_KeepAlive.tvSec_ = this.tvSec_;
                s2C_KeepAlive.tvMsec_ = this.tvMsec_;
                onBuilt();
                return s2C_KeepAlive;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof S2C_KeepAlive) {
                    return mergeFrom((S2C_KeepAlive) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(S2C_KeepAlive other) {
                if (other == S2C_KeepAlive.getDefaultInstance()) {
                    return this;
                }
                if (other.code_ != 0) {
                    setCodeValue(other.getCodeValue());
                }
                if (other.getTvSec() != 0) {
                    setTvSec(other.getTvSec());
                }
                if (other.getTvMsec() != 0) {
                    setTvMsec(other.getTvMsec());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.S2C_KeepAlive.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.S2C_KeepAlive.access$8400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$S2C_KeepAlive r3 = (com.logic.proto.ChatProto.S2C_KeepAlive) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$S2C_KeepAlive r4 = (com.logic.proto.ChatProto.S2C_KeepAlive) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.S2C_KeepAlive.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$S2C_KeepAlive$Builder");
            }

            @Override // com.logic.proto.ChatProto.S2C_KeepAliveOrBuilder
            public int getCodeValue() {
                return this.code_;
            }

            public Builder setCodeValue(int value) {
                this.code_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.S2C_KeepAliveOrBuilder
            public CODE getCode() {
                CODE valueOf = CODE.valueOf(this.code_);
                return valueOf == null ? CODE.UNRECOGNIZED : valueOf;
            }

            public Builder setCode(CODE value) {
                Objects.requireNonNull(value);
                this.code_ = value.getNumber();
                onChanged();
                return this;
            }

            public Builder clearCode() {
                this.code_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.S2C_KeepAliveOrBuilder
            public long getTvSec() {
                return this.tvSec_;
            }

            public Builder setTvSec(long value) {
                this.tvSec_ = value;
                onChanged();
                return this;
            }

            public Builder clearTvSec() {
                this.tvSec_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.S2C_KeepAliveOrBuilder
            public long getTvMsec() {
                return this.tvMsec_;
            }

            public Builder setTvMsec(long value) {
                this.tvMsec_ = value;
                onChanged();
                return this;
            }

            public Builder clearTvMsec() {
                this.tvMsec_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static S2C_KeepAlive getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<S2C_KeepAlive> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<S2C_KeepAlive> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public S2C_KeepAlive getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class C2S_EnterChat extends GeneratedMessageV3 implements C2S_EnterChatOrBuilder {
        private static final C2S_EnterChat DEFAULT_INSTANCE = new C2S_EnterChat();
        private static final Parser<C2S_EnterChat> PARSER = new AbstractParser<C2S_EnterChat>() { // from class: com.logic.proto.ChatProto.C2S_EnterChat.1
            @Override // com.google.protobuf.Parser
            public C2S_EnterChat parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new C2S_EnterChat(input, extensionRegistry);
            }
        };
        public static final int USER_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private User user_;

        private C2S_EnterChat(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private C2S_EnterChat() {
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private C2S_EnterChat(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = input.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    User user = this.user_;
                                    User.Builder builder = user != null ? user.toBuilder() : null;
                                    User user2 = (User) input.readMessage(User.parser(), extensionRegistry);
                                    this.user_ = user2;
                                    if (builder != null) {
                                        builder.mergeFrom(user2);
                                        this.user_ = builder.buildPartial();
                                    }
                                } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_C2S_EnterChat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_C2S_EnterChat_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_EnterChat.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.C2S_EnterChatOrBuilder
        public boolean hasUser() {
            return this.user_ != null;
        }

        @Override // com.logic.proto.ChatProto.C2S_EnterChatOrBuilder
        public User getUser() {
            User user = this.user_;
            return user == null ? User.getDefaultInstance() : user;
        }

        @Override // com.logic.proto.ChatProto.C2S_EnterChatOrBuilder
        public UserOrBuilder getUserOrBuilder() {
            return getUser();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (this.user_ != null) {
                output.writeMessage(1, getUser());
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeMessageSize = (this.user_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getUser()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeMessageSize;
            return computeMessageSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C2S_EnterChat)) {
                return super.equals(obj);
            }
            C2S_EnterChat c2S_EnterChat = (C2S_EnterChat) obj;
            boolean z = hasUser() == c2S_EnterChat.hasUser();
            if (hasUser()) {
                z = z && getUser().equals(c2S_EnterChat.getUser());
            }
            return z && this.unknownFields.equals(c2S_EnterChat.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasUser()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getUser().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static C2S_EnterChat parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_EnterChat parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_EnterChat parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_EnterChat parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_EnterChat parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_EnterChat parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_EnterChat parseFrom(InputStream input) throws IOException {
            return (C2S_EnterChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_EnterChat parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_EnterChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_EnterChat parseDelimitedFrom(InputStream input) throws IOException {
            return (C2S_EnterChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static C2S_EnterChat parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_EnterChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_EnterChat parseFrom(CodedInputStream input) throws IOException {
            return (C2S_EnterChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_EnterChat parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_EnterChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(C2S_EnterChat prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements C2S_EnterChatOrBuilder {
            private SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> userBuilder_;
            private User user_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_C2S_EnterChat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_C2S_EnterChat_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_EnterChat.class, Builder.class);
            }

            private Builder() {
                this.user_ = null;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.user_ = null;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = C2S_EnterChat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.userBuilder_ == null) {
                    this.user_ = null;
                } else {
                    this.user_ = null;
                    this.userBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_C2S_EnterChat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public C2S_EnterChat getDefaultInstanceForType() {
                return C2S_EnterChat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_EnterChat build() {
                C2S_EnterChat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_EnterChat buildPartial() {
                C2S_EnterChat c2S_EnterChat = new C2S_EnterChat(this);
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    c2S_EnterChat.user_ = this.user_;
                } else {
                    c2S_EnterChat.user_ = singleFieldBuilderV3.build();
                }
                onBuilt();
                return c2S_EnterChat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof C2S_EnterChat) {
                    return mergeFrom((C2S_EnterChat) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(C2S_EnterChat other) {
                if (other == C2S_EnterChat.getDefaultInstance()) {
                    return this;
                }
                if (other.hasUser()) {
                    mergeUser(other.getUser());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.C2S_EnterChat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.C2S_EnterChat.access$9400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$C2S_EnterChat r3 = (com.logic.proto.ChatProto.C2S_EnterChat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$C2S_EnterChat r4 = (com.logic.proto.ChatProto.C2S_EnterChat) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.C2S_EnterChat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$C2S_EnterChat$Builder");
            }

            @Override // com.logic.proto.ChatProto.C2S_EnterChatOrBuilder
            public boolean hasUser() {
                return (this.userBuilder_ == null && this.user_ == null) ? false : true;
            }

            @Override // com.logic.proto.ChatProto.C2S_EnterChatOrBuilder
            public User getUser() {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    User user = this.user_;
                    return user == null ? User.getDefaultInstance() : user;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public Builder setUser(User value) {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(value);
                    this.user_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public Builder setUser(User.Builder builderForValue) {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.user_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public Builder mergeUser(User value) {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    User user = this.user_;
                    if (user != null) {
                        this.user_ = User.newBuilder(user).mergeFrom(value).buildPartial();
                    } else {
                        this.user_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public Builder clearUser() {
                if (this.userBuilder_ == null) {
                    this.user_ = null;
                    onChanged();
                } else {
                    this.user_ = null;
                    this.userBuilder_ = null;
                }
                return this;
            }

            public User.Builder getUserBuilder() {
                onChanged();
                return getUserFieldBuilder().getBuilder();
            }

            @Override // com.logic.proto.ChatProto.C2S_EnterChatOrBuilder
            public UserOrBuilder getUserOrBuilder() {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                User user = this.user_;
                return user == null ? User.getDefaultInstance() : user;
            }

            private SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> getUserFieldBuilder() {
                if (this.userBuilder_ == null) {
                    this.userBuilder_ = new SingleFieldBuilderV3<>(getUser(), getParentForChildren(), isClean());
                    this.user_ = null;
                }
                return this.userBuilder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static C2S_EnterChat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<C2S_EnterChat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<C2S_EnterChat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public C2S_EnterChat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class S2C_EnterChat extends GeneratedMessageV3 implements S2C_EnterChatOrBuilder {
        public static final int CODE_FIELD_NUMBER = 1;
        private static final S2C_EnterChat DEFAULT_INSTANCE = new S2C_EnterChat();
        private static final Parser<S2C_EnterChat> PARSER = new AbstractParser<S2C_EnterChat>() { // from class: com.logic.proto.ChatProto.S2C_EnterChat.1
            @Override // com.google.protobuf.Parser
            public S2C_EnterChat parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new S2C_EnterChat(input, extensionRegistry);
            }
        };
        public static final int USER_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int code_;
        private byte memoizedIsInitialized;
        private User user_;

        private S2C_EnterChat(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private S2C_EnterChat() {
            this.memoizedIsInitialized = (byte) -1;
            this.code_ = 0;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private S2C_EnterChat(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = input.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.code_ = input.readEnum();
                            } else if (readTag == 18) {
                                User user = this.user_;
                                User.Builder builder = user != null ? user.toBuilder() : null;
                                User user2 = (User) input.readMessage(User.parser(), extensionRegistry);
                                this.user_ = user2;
                                if (builder != null) {
                                    builder.mergeFrom(user2);
                                    this.user_ = builder.buildPartial();
                                }
                            } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_S2C_EnterChat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_S2C_EnterChat_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_EnterChat.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
        public int getCodeValue() {
            return this.code_;
        }

        @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
        public CODE getCode() {
            CODE valueOf = CODE.valueOf(this.code_);
            return valueOf == null ? CODE.UNRECOGNIZED : valueOf;
        }

        @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
        public boolean hasUser() {
            return this.user_ != null;
        }

        @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
        public User getUser() {
            User user = this.user_;
            return user == null ? User.getDefaultInstance() : user;
        }

        @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
        public UserOrBuilder getUserOrBuilder() {
            return getUser();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (this.code_ != CODE.CODE_OK.getNumber()) {
                output.writeEnum(1, this.code_);
            }
            if (this.user_ != null) {
                output.writeMessage(2, getUser());
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = this.code_ != CODE.CODE_OK.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.code_) : 0;
            if (this.user_ != null) {
                computeEnumSize += CodedOutputStream.computeMessageSize(2, getUser());
            }
            int serializedSize = computeEnumSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof S2C_EnterChat)) {
                return super.equals(obj);
            }
            S2C_EnterChat s2C_EnterChat = (S2C_EnterChat) obj;
            boolean z = (this.code_ == s2C_EnterChat.code_) && hasUser() == s2C_EnterChat.hasUser();
            if (hasUser()) {
                z = z && getUser().equals(s2C_EnterChat.getUser());
            }
            return z && this.unknownFields.equals(s2C_EnterChat.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.code_;
            if (hasUser()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getUser().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static S2C_EnterChat parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_EnterChat parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_EnterChat parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_EnterChat parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_EnterChat parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_EnterChat parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_EnterChat parseFrom(InputStream input) throws IOException {
            return (S2C_EnterChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_EnterChat parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_EnterChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_EnterChat parseDelimitedFrom(InputStream input) throws IOException {
            return (S2C_EnterChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static S2C_EnterChat parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_EnterChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_EnterChat parseFrom(CodedInputStream input) throws IOException {
            return (S2C_EnterChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_EnterChat parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_EnterChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(S2C_EnterChat prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements S2C_EnterChatOrBuilder {
            private int code_;
            private SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> userBuilder_;
            private User user_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_S2C_EnterChat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_S2C_EnterChat_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_EnterChat.class, Builder.class);
            }

            private Builder() {
                this.code_ = 0;
                this.user_ = null;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.code_ = 0;
                this.user_ = null;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = S2C_EnterChat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.code_ = 0;
                if (this.userBuilder_ == null) {
                    this.user_ = null;
                } else {
                    this.user_ = null;
                    this.userBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_S2C_EnterChat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public S2C_EnterChat getDefaultInstanceForType() {
                return S2C_EnterChat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_EnterChat build() {
                S2C_EnterChat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_EnterChat buildPartial() {
                S2C_EnterChat s2C_EnterChat = new S2C_EnterChat(this);
                s2C_EnterChat.code_ = this.code_;
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    s2C_EnterChat.user_ = this.user_;
                } else {
                    s2C_EnterChat.user_ = singleFieldBuilderV3.build();
                }
                onBuilt();
                return s2C_EnterChat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof S2C_EnterChat) {
                    return mergeFrom((S2C_EnterChat) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(S2C_EnterChat other) {
                if (other == S2C_EnterChat.getDefaultInstance()) {
                    return this;
                }
                if (other.code_ != 0) {
                    setCodeValue(other.getCodeValue());
                }
                if (other.hasUser()) {
                    mergeUser(other.getUser());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.S2C_EnterChat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.S2C_EnterChat.access$10500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$S2C_EnterChat r3 = (com.logic.proto.ChatProto.S2C_EnterChat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$S2C_EnterChat r4 = (com.logic.proto.ChatProto.S2C_EnterChat) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.S2C_EnterChat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$S2C_EnterChat$Builder");
            }

            @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
            public int getCodeValue() {
                return this.code_;
            }

            public Builder setCodeValue(int value) {
                this.code_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
            public CODE getCode() {
                CODE valueOf = CODE.valueOf(this.code_);
                return valueOf == null ? CODE.UNRECOGNIZED : valueOf;
            }

            public Builder setCode(CODE value) {
                Objects.requireNonNull(value);
                this.code_ = value.getNumber();
                onChanged();
                return this;
            }

            public Builder clearCode() {
                this.code_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
            public boolean hasUser() {
                return (this.userBuilder_ == null && this.user_ == null) ? false : true;
            }

            @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
            public User getUser() {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    User user = this.user_;
                    return user == null ? User.getDefaultInstance() : user;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public Builder setUser(User value) {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(value);
                    this.user_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public Builder setUser(User.Builder builderForValue) {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.user_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public Builder mergeUser(User value) {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 == null) {
                    User user = this.user_;
                    if (user != null) {
                        this.user_ = User.newBuilder(user).mergeFrom(value).buildPartial();
                    } else {
                        this.user_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public Builder clearUser() {
                if (this.userBuilder_ == null) {
                    this.user_ = null;
                    onChanged();
                } else {
                    this.user_ = null;
                    this.userBuilder_ = null;
                }
                return this;
            }

            public User.Builder getUserBuilder() {
                onChanged();
                return getUserFieldBuilder().getBuilder();
            }

            @Override // com.logic.proto.ChatProto.S2C_EnterChatOrBuilder
            public UserOrBuilder getUserOrBuilder() {
                SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                User user = this.user_;
                return user == null ? User.getDefaultInstance() : user;
            }

            private SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> getUserFieldBuilder() {
                if (this.userBuilder_ == null) {
                    this.userBuilder_ = new SingleFieldBuilderV3<>(getUser(), getParentForChildren(), isClean());
                    this.user_ = null;
                }
                return this.userBuilder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static S2C_EnterChat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<S2C_EnterChat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<S2C_EnterChat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public S2C_EnterChat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class C2S_LeaveChat extends GeneratedMessageV3 implements C2S_LeaveChatOrBuilder {
        private static final C2S_LeaveChat DEFAULT_INSTANCE = new C2S_LeaveChat();
        private static final Parser<C2S_LeaveChat> PARSER = new AbstractParser<C2S_LeaveChat>() { // from class: com.logic.proto.ChatProto.C2S_LeaveChat.1
            @Override // com.google.protobuf.Parser
            public C2S_LeaveChat parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new C2S_LeaveChat(input, extensionRegistry);
            }
        };
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        private C2S_LeaveChat(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private C2S_LeaveChat() {
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private C2S_LeaveChat(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = input.readTag();
                            if (readTag == 0 || !parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_C2S_LeaveChat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_C2S_LeaveChat_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_LeaveChat.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof C2S_LeaveChat) {
                return this.unknownFields.equals(((C2S_LeaveChat) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static C2S_LeaveChat parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_LeaveChat parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_LeaveChat parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_LeaveChat parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_LeaveChat parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_LeaveChat parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_LeaveChat parseFrom(InputStream input) throws IOException {
            return (C2S_LeaveChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_LeaveChat parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_LeaveChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_LeaveChat parseDelimitedFrom(InputStream input) throws IOException {
            return (C2S_LeaveChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static C2S_LeaveChat parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_LeaveChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_LeaveChat parseFrom(CodedInputStream input) throws IOException {
            return (C2S_LeaveChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_LeaveChat parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_LeaveChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(C2S_LeaveChat prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements C2S_LeaveChatOrBuilder {
            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_C2S_LeaveChat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_C2S_LeaveChat_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_LeaveChat.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = C2S_LeaveChat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_C2S_LeaveChat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public C2S_LeaveChat getDefaultInstanceForType() {
                return C2S_LeaveChat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_LeaveChat build() {
                C2S_LeaveChat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_LeaveChat buildPartial() {
                C2S_LeaveChat c2S_LeaveChat = new C2S_LeaveChat(this);
                onBuilt();
                return c2S_LeaveChat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof C2S_LeaveChat) {
                    return mergeFrom((C2S_LeaveChat) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(C2S_LeaveChat other) {
                if (other == C2S_LeaveChat.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.C2S_LeaveChat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.C2S_LeaveChat.access$11400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$C2S_LeaveChat r3 = (com.logic.proto.ChatProto.C2S_LeaveChat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$C2S_LeaveChat r4 = (com.logic.proto.ChatProto.C2S_LeaveChat) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.C2S_LeaveChat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$C2S_LeaveChat$Builder");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static C2S_LeaveChat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<C2S_LeaveChat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<C2S_LeaveChat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public C2S_LeaveChat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class S2C_LeaveChat extends GeneratedMessageV3 implements S2C_LeaveChatOrBuilder {
        public static final int CODE_FIELD_NUMBER = 1;
        private static final S2C_LeaveChat DEFAULT_INSTANCE = new S2C_LeaveChat();
        private static final Parser<S2C_LeaveChat> PARSER = new AbstractParser<S2C_LeaveChat>() { // from class: com.logic.proto.ChatProto.S2C_LeaveChat.1
            @Override // com.google.protobuf.Parser
            public S2C_LeaveChat parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new S2C_LeaveChat(input, extensionRegistry);
            }
        };
        private static final long serialVersionUID = 0;
        private int code_;
        private byte memoizedIsInitialized;

        private S2C_LeaveChat(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private S2C_LeaveChat() {
            this.memoizedIsInitialized = (byte) -1;
            this.code_ = 0;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private S2C_LeaveChat(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = input.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.code_ = input.readEnum();
                            } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_S2C_LeaveChat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_S2C_LeaveChat_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_LeaveChat.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.S2C_LeaveChatOrBuilder
        public int getCodeValue() {
            return this.code_;
        }

        @Override // com.logic.proto.ChatProto.S2C_LeaveChatOrBuilder
        public CODE getCode() {
            CODE valueOf = CODE.valueOf(this.code_);
            return valueOf == null ? CODE.UNRECOGNIZED : valueOf;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (this.code_ != CODE.CODE_OK.getNumber()) {
                output.writeEnum(1, this.code_);
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.code_ != CODE.CODE_OK.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.code_) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeEnumSize;
            return computeEnumSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof S2C_LeaveChat)) {
                return super.equals(obj);
            }
            S2C_LeaveChat s2C_LeaveChat = (S2C_LeaveChat) obj;
            return (this.code_ == s2C_LeaveChat.code_) && this.unknownFields.equals(s2C_LeaveChat.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.code_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static S2C_LeaveChat parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_LeaveChat parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_LeaveChat parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_LeaveChat parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_LeaveChat parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_LeaveChat parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_LeaveChat parseFrom(InputStream input) throws IOException {
            return (S2C_LeaveChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_LeaveChat parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_LeaveChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_LeaveChat parseDelimitedFrom(InputStream input) throws IOException {
            return (S2C_LeaveChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static S2C_LeaveChat parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_LeaveChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_LeaveChat parseFrom(CodedInputStream input) throws IOException {
            return (S2C_LeaveChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_LeaveChat parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_LeaveChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(S2C_LeaveChat prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements S2C_LeaveChatOrBuilder {
            private int code_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_S2C_LeaveChat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_S2C_LeaveChat_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_LeaveChat.class, Builder.class);
            }

            private Builder() {
                this.code_ = 0;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.code_ = 0;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = S2C_LeaveChat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.code_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_S2C_LeaveChat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public S2C_LeaveChat getDefaultInstanceForType() {
                return S2C_LeaveChat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_LeaveChat build() {
                S2C_LeaveChat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_LeaveChat buildPartial() {
                S2C_LeaveChat s2C_LeaveChat = new S2C_LeaveChat(this);
                s2C_LeaveChat.code_ = this.code_;
                onBuilt();
                return s2C_LeaveChat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof S2C_LeaveChat) {
                    return mergeFrom((S2C_LeaveChat) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(S2C_LeaveChat other) {
                if (other == S2C_LeaveChat.getDefaultInstance()) {
                    return this;
                }
                if (other.code_ != 0) {
                    setCodeValue(other.getCodeValue());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.S2C_LeaveChat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.S2C_LeaveChat.access$12400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$S2C_LeaveChat r3 = (com.logic.proto.ChatProto.S2C_LeaveChat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$S2C_LeaveChat r4 = (com.logic.proto.ChatProto.S2C_LeaveChat) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.S2C_LeaveChat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$S2C_LeaveChat$Builder");
            }

            @Override // com.logic.proto.ChatProto.S2C_LeaveChatOrBuilder
            public int getCodeValue() {
                return this.code_;
            }

            public Builder setCodeValue(int value) {
                this.code_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.S2C_LeaveChatOrBuilder
            public CODE getCode() {
                CODE valueOf = CODE.valueOf(this.code_);
                return valueOf == null ? CODE.UNRECOGNIZED : valueOf;
            }

            public Builder setCode(CODE value) {
                Objects.requireNonNull(value);
                this.code_ = value.getNumber();
                onChanged();
                return this;
            }

            public Builder clearCode() {
                this.code_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static S2C_LeaveChat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<S2C_LeaveChat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<S2C_LeaveChat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public S2C_LeaveChat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class C2S_Chat extends GeneratedMessageV3 implements C2S_ChatOrBuilder {
        public static final int CHAT_FIELD_NUMBER = 1;
        private static final C2S_Chat DEFAULT_INSTANCE = new C2S_Chat();
        private static final Parser<C2S_Chat> PARSER = new AbstractParser<C2S_Chat>() { // from class: com.logic.proto.ChatProto.C2S_Chat.1
            @Override // com.google.protobuf.Parser
            public C2S_Chat parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new C2S_Chat(input, extensionRegistry);
            }
        };
        private static final long serialVersionUID = 0;
        private Chat chat_;
        private byte memoizedIsInitialized;

        private C2S_Chat(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private C2S_Chat() {
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private C2S_Chat(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = input.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    Chat chat = this.chat_;
                                    Chat.Builder builder = chat != null ? chat.toBuilder() : null;
                                    Chat chat2 = (Chat) input.readMessage(Chat.parser(), extensionRegistry);
                                    this.chat_ = chat2;
                                    if (builder != null) {
                                        builder.mergeFrom(chat2);
                                        this.chat_ = builder.buildPartial();
                                    }
                                } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_C2S_Chat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_C2S_Chat_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_Chat.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.C2S_ChatOrBuilder
        public boolean hasChat() {
            return this.chat_ != null;
        }

        @Override // com.logic.proto.ChatProto.C2S_ChatOrBuilder
        public Chat getChat() {
            Chat chat = this.chat_;
            return chat == null ? Chat.getDefaultInstance() : chat;
        }

        @Override // com.logic.proto.ChatProto.C2S_ChatOrBuilder
        public ChatOrBuilder getChatOrBuilder() {
            return getChat();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (this.chat_ != null) {
                output.writeMessage(1, getChat());
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeMessageSize = (this.chat_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getChat()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeMessageSize;
            return computeMessageSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C2S_Chat)) {
                return super.equals(obj);
            }
            C2S_Chat c2S_Chat = (C2S_Chat) obj;
            boolean z = hasChat() == c2S_Chat.hasChat();
            if (hasChat()) {
                z = z && getChat().equals(c2S_Chat.getChat());
            }
            return z && this.unknownFields.equals(c2S_Chat.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasChat()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getChat().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static C2S_Chat parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_Chat parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_Chat parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_Chat parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_Chat parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_Chat parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_Chat parseFrom(InputStream input) throws IOException {
            return (C2S_Chat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_Chat parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_Chat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_Chat parseDelimitedFrom(InputStream input) throws IOException {
            return (C2S_Chat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static C2S_Chat parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_Chat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_Chat parseFrom(CodedInputStream input) throws IOException {
            return (C2S_Chat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_Chat parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_Chat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(C2S_Chat prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements C2S_ChatOrBuilder {
            private SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> chatBuilder_;
            private Chat chat_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_C2S_Chat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_C2S_Chat_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_Chat.class, Builder.class);
            }

            private Builder() {
                this.chat_ = null;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.chat_ = null;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = C2S_Chat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.chatBuilder_ == null) {
                    this.chat_ = null;
                } else {
                    this.chat_ = null;
                    this.chatBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_C2S_Chat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public C2S_Chat getDefaultInstanceForType() {
                return C2S_Chat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_Chat build() {
                C2S_Chat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_Chat buildPartial() {
                C2S_Chat c2S_Chat = new C2S_Chat(this);
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    c2S_Chat.chat_ = this.chat_;
                } else {
                    c2S_Chat.chat_ = singleFieldBuilderV3.build();
                }
                onBuilt();
                return c2S_Chat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof C2S_Chat) {
                    return mergeFrom((C2S_Chat) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(C2S_Chat other) {
                if (other == C2S_Chat.getDefaultInstance()) {
                    return this;
                }
                if (other.hasChat()) {
                    mergeChat(other.getChat());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.C2S_Chat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.C2S_Chat.access$13400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$C2S_Chat r3 = (com.logic.proto.ChatProto.C2S_Chat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$C2S_Chat r4 = (com.logic.proto.ChatProto.C2S_Chat) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.C2S_Chat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$C2S_Chat$Builder");
            }

            @Override // com.logic.proto.ChatProto.C2S_ChatOrBuilder
            public boolean hasChat() {
                return (this.chatBuilder_ == null && this.chat_ == null) ? false : true;
            }

            @Override // com.logic.proto.ChatProto.C2S_ChatOrBuilder
            public Chat getChat() {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Chat chat = this.chat_;
                    return chat == null ? Chat.getDefaultInstance() : chat;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public Builder setChat(Chat value) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(value);
                    this.chat_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public Builder setChat(Chat.Builder builderForValue) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.chat_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public Builder mergeChat(Chat value) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Chat chat = this.chat_;
                    if (chat != null) {
                        this.chat_ = Chat.newBuilder(chat).mergeFrom(value).buildPartial();
                    } else {
                        this.chat_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public Builder clearChat() {
                if (this.chatBuilder_ == null) {
                    this.chat_ = null;
                    onChanged();
                } else {
                    this.chat_ = null;
                    this.chatBuilder_ = null;
                }
                return this;
            }

            public Chat.Builder getChatBuilder() {
                onChanged();
                return getChatFieldBuilder().getBuilder();
            }

            @Override // com.logic.proto.ChatProto.C2S_ChatOrBuilder
            public ChatOrBuilder getChatOrBuilder() {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Chat chat = this.chat_;
                return chat == null ? Chat.getDefaultInstance() : chat;
            }

            private SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> getChatFieldBuilder() {
                if (this.chatBuilder_ == null) {
                    this.chatBuilder_ = new SingleFieldBuilderV3<>(getChat(), getParentForChildren(), isClean());
                    this.chat_ = null;
                }
                return this.chatBuilder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static C2S_Chat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<C2S_Chat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<C2S_Chat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public C2S_Chat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class S2C_Chat extends GeneratedMessageV3 implements S2C_ChatOrBuilder {
        public static final int CHAT_FIELD_NUMBER = 2;
        public static final int CODE_FIELD_NUMBER = 1;
        private static final S2C_Chat DEFAULT_INSTANCE = new S2C_Chat();
        private static final Parser<S2C_Chat> PARSER = new AbstractParser<S2C_Chat>() { // from class: com.logic.proto.ChatProto.S2C_Chat.1
            @Override // com.google.protobuf.Parser
            public S2C_Chat parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new S2C_Chat(input, extensionRegistry);
            }
        };
        private static final long serialVersionUID = 0;
        private Chat chat_;
        private int code_;
        private byte memoizedIsInitialized;

        private S2C_Chat(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private S2C_Chat() {
            this.memoizedIsInitialized = (byte) -1;
            this.code_ = 0;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private S2C_Chat(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = input.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.code_ = input.readEnum();
                            } else if (readTag == 18) {
                                Chat chat = this.chat_;
                                Chat.Builder builder = chat != null ? chat.toBuilder() : null;
                                Chat chat2 = (Chat) input.readMessage(Chat.parser(), extensionRegistry);
                                this.chat_ = chat2;
                                if (builder != null) {
                                    builder.mergeFrom(chat2);
                                    this.chat_ = builder.buildPartial();
                                }
                            } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_S2C_Chat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_S2C_Chat_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_Chat.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
        public int getCodeValue() {
            return this.code_;
        }

        @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
        public CODE getCode() {
            CODE valueOf = CODE.valueOf(this.code_);
            return valueOf == null ? CODE.UNRECOGNIZED : valueOf;
        }

        @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
        public boolean hasChat() {
            return this.chat_ != null;
        }

        @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
        public Chat getChat() {
            Chat chat = this.chat_;
            return chat == null ? Chat.getDefaultInstance() : chat;
        }

        @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
        public ChatOrBuilder getChatOrBuilder() {
            return getChat();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (this.code_ != CODE.CODE_OK.getNumber()) {
                output.writeEnum(1, this.code_);
            }
            if (this.chat_ != null) {
                output.writeMessage(2, getChat());
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = this.code_ != CODE.CODE_OK.getNumber() ? 0 + CodedOutputStream.computeEnumSize(1, this.code_) : 0;
            if (this.chat_ != null) {
                computeEnumSize += CodedOutputStream.computeMessageSize(2, getChat());
            }
            int serializedSize = computeEnumSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof S2C_Chat)) {
                return super.equals(obj);
            }
            S2C_Chat s2C_Chat = (S2C_Chat) obj;
            boolean z = (this.code_ == s2C_Chat.code_) && hasChat() == s2C_Chat.hasChat();
            if (hasChat()) {
                z = z && getChat().equals(s2C_Chat.getChat());
            }
            return z && this.unknownFields.equals(s2C_Chat.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.code_;
            if (hasChat()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getChat().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static S2C_Chat parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_Chat parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_Chat parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_Chat parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_Chat parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_Chat parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_Chat parseFrom(InputStream input) throws IOException {
            return (S2C_Chat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_Chat parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_Chat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_Chat parseDelimitedFrom(InputStream input) throws IOException {
            return (S2C_Chat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static S2C_Chat parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_Chat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_Chat parseFrom(CodedInputStream input) throws IOException {
            return (S2C_Chat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_Chat parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_Chat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(S2C_Chat prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements S2C_ChatOrBuilder {
            private SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> chatBuilder_;
            private Chat chat_;
            private int code_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_S2C_Chat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_S2C_Chat_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_Chat.class, Builder.class);
            }

            private Builder() {
                this.code_ = 0;
                this.chat_ = null;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.code_ = 0;
                this.chat_ = null;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = S2C_Chat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.code_ = 0;
                if (this.chatBuilder_ == null) {
                    this.chat_ = null;
                } else {
                    this.chat_ = null;
                    this.chatBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_S2C_Chat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public S2C_Chat getDefaultInstanceForType() {
                return S2C_Chat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_Chat build() {
                S2C_Chat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_Chat buildPartial() {
                S2C_Chat s2C_Chat = new S2C_Chat(this);
                s2C_Chat.code_ = this.code_;
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    s2C_Chat.chat_ = this.chat_;
                } else {
                    s2C_Chat.chat_ = singleFieldBuilderV3.build();
                }
                onBuilt();
                return s2C_Chat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof S2C_Chat) {
                    return mergeFrom((S2C_Chat) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(S2C_Chat other) {
                if (other == S2C_Chat.getDefaultInstance()) {
                    return this;
                }
                if (other.code_ != 0) {
                    setCodeValue(other.getCodeValue());
                }
                if (other.hasChat()) {
                    mergeChat(other.getChat());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.S2C_Chat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.S2C_Chat.access$14500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$S2C_Chat r3 = (com.logic.proto.ChatProto.S2C_Chat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$S2C_Chat r4 = (com.logic.proto.ChatProto.S2C_Chat) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.S2C_Chat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$S2C_Chat$Builder");
            }

            @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
            public int getCodeValue() {
                return this.code_;
            }

            public Builder setCodeValue(int value) {
                this.code_ = value;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
            public CODE getCode() {
                CODE valueOf = CODE.valueOf(this.code_);
                return valueOf == null ? CODE.UNRECOGNIZED : valueOf;
            }

            public Builder setCode(CODE value) {
                Objects.requireNonNull(value);
                this.code_ = value.getNumber();
                onChanged();
                return this;
            }

            public Builder clearCode() {
                this.code_ = 0;
                onChanged();
                return this;
            }

            @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
            public boolean hasChat() {
                return (this.chatBuilder_ == null && this.chat_ == null) ? false : true;
            }

            @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
            public Chat getChat() {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Chat chat = this.chat_;
                    return chat == null ? Chat.getDefaultInstance() : chat;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public Builder setChat(Chat value) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(value);
                    this.chat_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public Builder setChat(Chat.Builder builderForValue) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.chat_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public Builder mergeChat(Chat value) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Chat chat = this.chat_;
                    if (chat != null) {
                        this.chat_ = Chat.newBuilder(chat).mergeFrom(value).buildPartial();
                    } else {
                        this.chat_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public Builder clearChat() {
                if (this.chatBuilder_ == null) {
                    this.chat_ = null;
                    onChanged();
                } else {
                    this.chat_ = null;
                    this.chatBuilder_ = null;
                }
                return this;
            }

            public Chat.Builder getChatBuilder() {
                onChanged();
                return getChatFieldBuilder().getBuilder();
            }

            @Override // com.logic.proto.ChatProto.S2C_ChatOrBuilder
            public ChatOrBuilder getChatOrBuilder() {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Chat chat = this.chat_;
                return chat == null ? Chat.getDefaultInstance() : chat;
            }

            private SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> getChatFieldBuilder() {
                if (this.chatBuilder_ == null) {
                    this.chatBuilder_ = new SingleFieldBuilderV3<>(getChat(), getParentForChildren(), isClean());
                    this.chat_ = null;
                }
                return this.chatBuilder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static S2C_Chat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<S2C_Chat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<S2C_Chat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public S2C_Chat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class S2C_NotifyChat extends GeneratedMessageV3 implements S2C_NotifyChatOrBuilder {
        public static final int CHAT_FIELD_NUMBER = 1;
        private static final S2C_NotifyChat DEFAULT_INSTANCE = new S2C_NotifyChat();
        private static final Parser<S2C_NotifyChat> PARSER = new AbstractParser<S2C_NotifyChat>() { // from class: com.logic.proto.ChatProto.S2C_NotifyChat.1
            @Override // com.google.protobuf.Parser
            public S2C_NotifyChat parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new S2C_NotifyChat(input, extensionRegistry);
            }
        };
        private static final long serialVersionUID = 0;
        private Chat chat_;
        private byte memoizedIsInitialized;

        private S2C_NotifyChat(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private S2C_NotifyChat() {
            this.memoizedIsInitialized = (byte) -1;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private S2C_NotifyChat(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = input.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    Chat chat = this.chat_;
                                    Chat.Builder builder = chat != null ? chat.toBuilder() : null;
                                    Chat chat2 = (Chat) input.readMessage(Chat.parser(), extensionRegistry);
                                    this.chat_ = chat2;
                                    if (builder != null) {
                                        builder.mergeFrom(chat2);
                                        this.chat_ = builder.buildPartial();
                                    }
                                } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_S2C_NotifyChat_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_S2C_NotifyChat_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_NotifyChat.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.S2C_NotifyChatOrBuilder
        public boolean hasChat() {
            return this.chat_ != null;
        }

        @Override // com.logic.proto.ChatProto.S2C_NotifyChatOrBuilder
        public Chat getChat() {
            Chat chat = this.chat_;
            return chat == null ? Chat.getDefaultInstance() : chat;
        }

        @Override // com.logic.proto.ChatProto.S2C_NotifyChatOrBuilder
        public ChatOrBuilder getChatOrBuilder() {
            return getChat();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            if (this.chat_ != null) {
                output.writeMessage(1, getChat());
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeMessageSize = (this.chat_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getChat()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeMessageSize;
            return computeMessageSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof S2C_NotifyChat)) {
                return super.equals(obj);
            }
            S2C_NotifyChat s2C_NotifyChat = (S2C_NotifyChat) obj;
            boolean z = hasChat() == s2C_NotifyChat.hasChat();
            if (hasChat()) {
                z = z && getChat().equals(s2C_NotifyChat.getChat());
            }
            return z && this.unknownFields.equals(s2C_NotifyChat.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasChat()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getChat().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static S2C_NotifyChat parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_NotifyChat parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_NotifyChat parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_NotifyChat parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_NotifyChat parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_NotifyChat parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_NotifyChat parseFrom(InputStream input) throws IOException {
            return (S2C_NotifyChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_NotifyChat parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_NotifyChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_NotifyChat parseDelimitedFrom(InputStream input) throws IOException {
            return (S2C_NotifyChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static S2C_NotifyChat parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_NotifyChat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_NotifyChat parseFrom(CodedInputStream input) throws IOException {
            return (S2C_NotifyChat) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_NotifyChat parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_NotifyChat) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(S2C_NotifyChat prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements S2C_NotifyChatOrBuilder {
            private SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> chatBuilder_;
            private Chat chat_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_S2C_NotifyChat_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_S2C_NotifyChat_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_NotifyChat.class, Builder.class);
            }

            private Builder() {
                this.chat_ = null;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.chat_ = null;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = S2C_NotifyChat.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.chatBuilder_ == null) {
                    this.chat_ = null;
                } else {
                    this.chat_ = null;
                    this.chatBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_S2C_NotifyChat_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public S2C_NotifyChat getDefaultInstanceForType() {
                return S2C_NotifyChat.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_NotifyChat build() {
                S2C_NotifyChat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_NotifyChat buildPartial() {
                S2C_NotifyChat s2C_NotifyChat = new S2C_NotifyChat(this);
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    s2C_NotifyChat.chat_ = this.chat_;
                } else {
                    s2C_NotifyChat.chat_ = singleFieldBuilderV3.build();
                }
                onBuilt();
                return s2C_NotifyChat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof S2C_NotifyChat) {
                    return mergeFrom((S2C_NotifyChat) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(S2C_NotifyChat other) {
                if (other == S2C_NotifyChat.getDefaultInstance()) {
                    return this;
                }
                if (other.hasChat()) {
                    mergeChat(other.getChat());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.S2C_NotifyChat.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.S2C_NotifyChat.access$15500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$S2C_NotifyChat r3 = (com.logic.proto.ChatProto.S2C_NotifyChat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$S2C_NotifyChat r4 = (com.logic.proto.ChatProto.S2C_NotifyChat) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.S2C_NotifyChat.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$S2C_NotifyChat$Builder");
            }

            @Override // com.logic.proto.ChatProto.S2C_NotifyChatOrBuilder
            public boolean hasChat() {
                return (this.chatBuilder_ == null && this.chat_ == null) ? false : true;
            }

            @Override // com.logic.proto.ChatProto.S2C_NotifyChatOrBuilder
            public Chat getChat() {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Chat chat = this.chat_;
                    return chat == null ? Chat.getDefaultInstance() : chat;
                }
                return singleFieldBuilderV3.getMessage();
            }

            public Builder setChat(Chat value) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(value);
                    this.chat_ = value;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(value);
                }
                return this;
            }

            public Builder setChat(Chat.Builder builderForValue) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.chat_ = builderForValue.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builderForValue.build());
                }
                return this;
            }

            public Builder mergeChat(Chat value) {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Chat chat = this.chat_;
                    if (chat != null) {
                        this.chat_ = Chat.newBuilder(chat).mergeFrom(value).buildPartial();
                    } else {
                        this.chat_ = value;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(value);
                }
                return this;
            }

            public Builder clearChat() {
                if (this.chatBuilder_ == null) {
                    this.chat_ = null;
                    onChanged();
                } else {
                    this.chat_ = null;
                    this.chatBuilder_ = null;
                }
                return this;
            }

            public Chat.Builder getChatBuilder() {
                onChanged();
                return getChatFieldBuilder().getBuilder();
            }

            @Override // com.logic.proto.ChatProto.S2C_NotifyChatOrBuilder
            public ChatOrBuilder getChatOrBuilder() {
                SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> singleFieldBuilderV3 = this.chatBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Chat chat = this.chat_;
                return chat == null ? Chat.getDefaultInstance() : chat;
            }

            private SingleFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> getChatFieldBuilder() {
                if (this.chatBuilder_ == null) {
                    this.chatBuilder_ = new SingleFieldBuilderV3<>(getChat(), getParentForChildren(), isClean());
                    this.chat_ = null;
                }
                return this.chatBuilder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static S2C_NotifyChat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<S2C_NotifyChat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<S2C_NotifyChat> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public S2C_NotifyChat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class C2S_GetChatList extends GeneratedMessageV3 implements C2S_GetChatListOrBuilder {
        private static final C2S_GetChatList DEFAULT_INSTANCE = new C2S_GetChatList();
        private static final Parser<C2S_GetChatList> PARSER = new AbstractParser<C2S_GetChatList>() { // from class: com.logic.proto.ChatProto.C2S_GetChatList.1
            @Override // com.google.protobuf.Parser
            public C2S_GetChatList parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new C2S_GetChatList(input, extensionRegistry);
            }
        };
        public static final int READFLAG_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int readFlag_;

        private C2S_GetChatList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private C2S_GetChatList() {
            this.memoizedIsInitialized = (byte) -1;
            this.readFlag_ = 0;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private C2S_GetChatList(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = input.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.readFlag_ = input.readUInt32();
                            } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_C2S_GetChatList_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_C2S_GetChatList_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_GetChatList.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.C2S_GetChatListOrBuilder
        public int getReadFlag() {
            return this.readFlag_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            int i = this.readFlag_;
            if (i != 0) {
                output.writeUInt32(1, i);
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = this.readFlag_;
            int computeUInt32Size = (i2 != 0 ? 0 + CodedOutputStream.computeUInt32Size(1, i2) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeUInt32Size;
            return computeUInt32Size;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C2S_GetChatList)) {
                return super.equals(obj);
            }
            C2S_GetChatList c2S_GetChatList = (C2S_GetChatList) obj;
            return (getReadFlag() == c2S_GetChatList.getReadFlag()) && this.unknownFields.equals(c2S_GetChatList.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getReadFlag()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static C2S_GetChatList parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_GetChatList parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_GetChatList parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_GetChatList parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_GetChatList parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static C2S_GetChatList parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static C2S_GetChatList parseFrom(InputStream input) throws IOException {
            return (C2S_GetChatList) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_GetChatList parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_GetChatList) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_GetChatList parseDelimitedFrom(InputStream input) throws IOException {
            return (C2S_GetChatList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static C2S_GetChatList parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_GetChatList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static C2S_GetChatList parseFrom(CodedInputStream input) throws IOException {
            return (C2S_GetChatList) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static C2S_GetChatList parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (C2S_GetChatList) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(C2S_GetChatList prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements C2S_GetChatListOrBuilder {
            private int readFlag_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_C2S_GetChatList_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_C2S_GetChatList_fieldAccessorTable.ensureFieldAccessorsInitialized(C2S_GetChatList.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = C2S_GetChatList.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.readFlag_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_C2S_GetChatList_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public C2S_GetChatList getDefaultInstanceForType() {
                return C2S_GetChatList.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_GetChatList build() {
                C2S_GetChatList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public C2S_GetChatList buildPartial() {
                C2S_GetChatList c2S_GetChatList = new C2S_GetChatList(this);
                c2S_GetChatList.readFlag_ = this.readFlag_;
                onBuilt();
                return c2S_GetChatList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof C2S_GetChatList) {
                    return mergeFrom((C2S_GetChatList) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(C2S_GetChatList other) {
                if (other == C2S_GetChatList.getDefaultInstance()) {
                    return this;
                }
                if (other.getReadFlag() != 0) {
                    setReadFlag(other.getReadFlag());
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.C2S_GetChatList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.C2S_GetChatList.access$16500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$C2S_GetChatList r3 = (com.logic.proto.ChatProto.C2S_GetChatList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$C2S_GetChatList r4 = (com.logic.proto.ChatProto.C2S_GetChatList) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.C2S_GetChatList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$C2S_GetChatList$Builder");
            }

            @Override // com.logic.proto.ChatProto.C2S_GetChatListOrBuilder
            public int getReadFlag() {
                return this.readFlag_;
            }

            public Builder setReadFlag(int value) {
                this.readFlag_ = value;
                onChanged();
                return this;
            }

            public Builder clearReadFlag() {
                this.readFlag_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static C2S_GetChatList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<C2S_GetChatList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<C2S_GetChatList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public C2S_GetChatList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class S2C_GetChatList extends GeneratedMessageV3 implements S2C_GetChatListOrBuilder {
        public static final int CHAT_LIST_FIELD_NUMBER = 1;
        private static final S2C_GetChatList DEFAULT_INSTANCE = new S2C_GetChatList();
        private static final Parser<S2C_GetChatList> PARSER = new AbstractParser<S2C_GetChatList>() { // from class: com.logic.proto.ChatProto.S2C_GetChatList.1
            @Override // com.google.protobuf.Parser
            public S2C_GetChatList parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return new S2C_GetChatList(input, extensionRegistry);
            }
        };
        private static final long serialVersionUID = 0;
        private List<Chat> chatList_;
        private byte memoizedIsInitialized;

        private S2C_GetChatList(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private S2C_GetChatList() {
            this.memoizedIsInitialized = (byte) -1;
            this.chatList_ = Collections.emptyList();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private S2C_GetChatList(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistry);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (true) {
                if (z) {
                    break;
                }
                try {
                    try {
                        int readTag = input.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                if (!(z2 & true)) {
                                    this.chatList_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.chatList_.add(input.readMessage(Chat.parser(), extensionRegistry));
                            } else if (!parseUnknownFieldProto3(input, newBuilder, extensionRegistry, readTag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z2 & true) {
                        this.chatList_ = Collections.unmodifiableList(this.chatList_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ChatProto.internal_static_cs_S2C_GetChatList_descriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ChatProto.internal_static_cs_S2C_GetChatList_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_GetChatList.class, Builder.class);
        }

        @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
        public List<Chat> getChatListList() {
            return this.chatList_;
        }

        @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
        public List<? extends ChatOrBuilder> getChatListOrBuilderList() {
            return this.chatList_;
        }

        @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
        public int getChatListCount() {
            return this.chatList_.size();
        }

        @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
        public Chat getChatList(int index) {
            return this.chatList_.get(index);
        }

        @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
        public ChatOrBuilder getChatListOrBuilder(int index) {
            return this.chatList_.get(index);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream output) throws IOException {
            for (int i = 0; i < this.chatList_.size(); i++) {
                output.writeMessage(1, this.chatList_.get(i));
            }
            this.unknownFields.writeTo(output);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.chatList_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, this.chatList_.get(i3));
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof S2C_GetChatList)) {
                return super.equals(obj);
            }
            S2C_GetChatList s2C_GetChatList = (S2C_GetChatList) obj;
            return (getChatListList().equals(s2C_GetChatList.getChatListList())) && this.unknownFields.equals(s2C_GetChatList.unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getChatListCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getChatListList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static S2C_GetChatList parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_GetChatList parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_GetChatList parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_GetChatList parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_GetChatList parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data);
        }

        public static S2C_GetChatList parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(data, extensionRegistry);
        }

        public static S2C_GetChatList parseFrom(InputStream input) throws IOException {
            return (S2C_GetChatList) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_GetChatList parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_GetChatList) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_GetChatList parseDelimitedFrom(InputStream input) throws IOException {
            return (S2C_GetChatList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
        }

        public static S2C_GetChatList parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_GetChatList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
        }

        public static S2C_GetChatList parseFrom(CodedInputStream input) throws IOException {
            return (S2C_GetChatList) GeneratedMessageV3.parseWithIOException(PARSER, input);
        }

        public static S2C_GetChatList parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (S2C_GetChatList) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(S2C_GetChatList prototype) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
            return new Builder(parent);
        }

        /* loaded from: classes.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements S2C_GetChatListOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> chatListBuilder_;
            private List<Chat> chatList_;

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ChatProto.internal_static_cs_S2C_GetChatList_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ChatProto.internal_static_cs_S2C_GetChatList_fieldAccessorTable.ensureFieldAccessorsInitialized(S2C_GetChatList.class, Builder.class);
            }

            private Builder() {
                this.chatList_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent parent) {
                super(parent);
                this.chatList_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (S2C_GetChatList.alwaysUseFieldBuilders) {
                    getChatListFieldBuilder();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.chatList_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return ChatProto.internal_static_cs_S2C_GetChatList_descriptor;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public S2C_GetChatList getDefaultInstanceForType() {
                return S2C_GetChatList.getDefaultInstance();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_GetChatList build() {
                S2C_GetChatList buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public S2C_GetChatList buildPartial() {
                S2C_GetChatList s2C_GetChatList = new S2C_GetChatList(this);
                int i = this.bitField0_;
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i & 1) == 1) {
                        this.chatList_ = Collections.unmodifiableList(this.chatList_);
                        this.bitField0_ &= -2;
                    }
                    s2C_GetChatList.chatList_ = this.chatList_;
                } else {
                    s2C_GetChatList.chatList_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return s2C_GetChatList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo10clone() {
                return (Builder) super.mo10clone();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.setField(field, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor field) {
                return (Builder) super.clearField(field);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
                return (Builder) super.clearOneof(oneof);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
                return (Builder) super.setRepeatedField(field, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
                return (Builder) super.addRepeatedField(field, value);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message other) {
                if (other instanceof S2C_GetChatList) {
                    return mergeFrom((S2C_GetChatList) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public Builder mergeFrom(S2C_GetChatList other) {
                if (other == S2C_GetChatList.getDefaultInstance()) {
                    return this;
                }
                if (this.chatListBuilder_ == null) {
                    if (!other.chatList_.isEmpty()) {
                        if (this.chatList_.isEmpty()) {
                            this.chatList_ = other.chatList_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureChatListIsMutable();
                            this.chatList_.addAll(other.chatList_);
                        }
                        onChanged();
                    }
                } else if (!other.chatList_.isEmpty()) {
                    if (!this.chatListBuilder_.isEmpty()) {
                        this.chatListBuilder_.addAllMessages(other.chatList_);
                    } else {
                        this.chatListBuilder_.dispose();
                        this.chatListBuilder_ = null;
                        this.chatList_ = other.chatList_;
                        this.bitField0_ &= -2;
                        this.chatListBuilder_ = S2C_GetChatList.alwaysUseFieldBuilders ? getChatListFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(other.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.logic.proto.ChatProto.S2C_GetChatList.Builder mergeFrom(com.google.protobuf.CodedInputStream r3, com.google.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.Parser r1 = com.logic.proto.ChatProto.S2C_GetChatList.access$17600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.logic.proto.ChatProto$S2C_GetChatList r3 = (com.logic.proto.ChatProto.S2C_GetChatList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.logic.proto.ChatProto$S2C_GetChatList r4 = (com.logic.proto.ChatProto.S2C_GetChatList) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.logic.proto.ChatProto.S2C_GetChatList.Builder.mergeFrom(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite):com.logic.proto.ChatProto$S2C_GetChatList$Builder");
            }

            private void ensureChatListIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.chatList_ = new ArrayList(this.chatList_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
            public List<Chat> getChatListList() {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return Collections.unmodifiableList(this.chatList_);
                }
                return repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
            public int getChatListCount() {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.chatList_.size();
                }
                return repeatedFieldBuilderV3.getCount();
            }

            @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
            public Chat getChatList(int index) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.chatList_.get(index);
                }
                return repeatedFieldBuilderV3.getMessage(index);
            }

            public Builder setChatList(int index, Chat value) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(value);
                    ensureChatListIsMutable();
                    this.chatList_.set(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, value);
                }
                return this;
            }

            public Builder setChatList(int index, Chat.Builder builderForValue) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChatListIsMutable();
                    this.chatList_.set(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
                }
                return this;
            }

            public Builder addChatList(Chat value) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(value);
                    ensureChatListIsMutable();
                    this.chatList_.add(value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(value);
                }
                return this;
            }

            public Builder addChatList(int index, Chat value) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(value);
                    ensureChatListIsMutable();
                    this.chatList_.add(index, value);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, value);
                }
                return this;
            }

            public Builder addChatList(Chat.Builder builderForValue) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChatListIsMutable();
                    this.chatList_.add(builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builderForValue.build());
                }
                return this;
            }

            public Builder addChatList(int index, Chat.Builder builderForValue) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChatListIsMutable();
                    this.chatList_.add(index, builderForValue.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
                }
                return this;
            }

            public Builder addAllChatList(Iterable<? extends Chat> values) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChatListIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.chatList_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(values);
                }
                return this;
            }

            public Builder clearChatList() {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.chatList_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder removeChatList(int index) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChatListIsMutable();
                    this.chatList_.remove(index);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(index);
                }
                return this;
            }

            public Chat.Builder getChatListBuilder(int index) {
                return getChatListFieldBuilder().getBuilder(index);
            }

            @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
            public ChatOrBuilder getChatListOrBuilder(int index) {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    return this.chatList_.get(index);
                }
                return repeatedFieldBuilderV3.getMessageOrBuilder(index);
            }

            @Override // com.logic.proto.ChatProto.S2C_GetChatListOrBuilder
            public List<? extends ChatOrBuilder> getChatListOrBuilderList() {
                RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> repeatedFieldBuilderV3 = this.chatListBuilder_;
                if (repeatedFieldBuilderV3 != null) {
                    return repeatedFieldBuilderV3.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.chatList_);
            }

            public Chat.Builder addChatListBuilder() {
                return getChatListFieldBuilder().addBuilder(Chat.getDefaultInstance());
            }

            public Chat.Builder addChatListBuilder(int index) {
                return getChatListFieldBuilder().addBuilder(index, Chat.getDefaultInstance());
            }

            public List<Chat.Builder> getChatListBuilderList() {
                return getChatListFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilderV3<Chat, Chat.Builder, ChatOrBuilder> getChatListFieldBuilder() {
                if (this.chatListBuilder_ == null) {
                    this.chatListBuilder_ = new RepeatedFieldBuilderV3<>(this.chatList_, (this.bitField0_ & 1) == 1, getParentForChildren(), isClean());
                    this.chatList_ = null;
                }
                return this.chatListBuilder_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.setUnknownFieldsProto3(unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
                return (Builder) super.mergeUnknownFields(unknownFields);
            }
        }

        public static S2C_GetChatList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<S2C_GetChatList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<S2C_GetChatList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public S2C_GetChatList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\nchat.proto\u0012\u0002cs\"¿\u0002\n\u0004User\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0006\u0012\u0011\n\tnick_name\u0018\u0002 \u0001(\t\u0012\u0014\n\fis_supporter\u0018\u0003 \u0001(\r\u0012\u0014\n\fdevice_model\u0018\u0004 \u0001(\t\u0012\u0016\n\u000esystem_version\u0018\u0005 \u0001(\t\u0012\u0014\n\fgame_version\u0018\u0006 \u0001(\t\u0012\r\n\u0005phone\u0018\u0007 \u0001(\t\u0012\u000f\n\u0007game_id\u0018\b \u0001(\r\u0012\u0014\n\fpush_app_key\u0018\t \u0001(\t\u0012\u001c\n\u0014push_registration_id\u0018\n \u0001(\t\u0012\r\n\u0005email\u0018\u000b \u0001(\t\u0012\u0018\n\u0010supporter_status\u0018\f \u0001(\r\u0012\u000e\n\u0006system\u0018\r \u0001(\r\u0012\u0013\n\u000bsdk_version\u0018\u000e \u0001(\t\u0012\u001c\n\u0014is_support_text_view\u0018\u000f \u0001(\r\"ª\u0002\n\u0004Chat\u0012\u0011\n\tsender_id\u0018\u0001 \u0001(\u0006\u0012\u0013\n\u000breceiver_id\u0018\u0002 \u0001(\u0006\u0012\f\n\u0004type\u0018\u0003 \u0001(\r\u0012\u000f\n\u0007content\u0018\u0004 \u0001(\t\u0012\u000b\n\u0003pic\u0018\u0005 \u0001(\f\u0012\u0011\n\tserver_id\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bserver_name\u0018\u0007 \u0001(\t\u0012\u000f\n\u0007role_id\u0018\b \u0001(\t\u0012\u0011\n\trole_name\u0018\t \u0001(\t\u0012\u0010\n\bmsg_type\u0018\n \u0001(\r\u0012\u000f\n\u0007img_url\u0018\u000b \u0001(\t\u0012\u000f\n\u0007game_id\u0018\f \u0001(\r\u0012\u0013\n\u000bcreate_time\u0018\r \u0001(\u0006\u0012\u0013\n\u000bsender_name\u0018\u000e \u0001(\t\u0012\u000e\n\u0006msg_id\u0018\u000f \u0001(\u0006\u0012\u0014\n\fis_supporter\u0018\u0010 \u0001(\r\"\u000f\n\rC2S_KeepAlive\"H\n\rS2C_KeepAlive\u0012\u0016\n\u0004code\u0018\u0001 \u0001(\u000e2\b.cs.CODE\u0012\u000e\n\u0006tv_sec\u0018\u0002 \u0001(\u0006\u0012\u000f\n\u0007tv_msec\u0018\u0003 \u0001(\u0006\"'\n\rC2S_EnterChat\u0012\u0016\n\u0004user\u0018\u0001 \u0001(\u000b2\b.cs.User\"?\n\rS2C_EnterChat\u0012\u0016\n\u0004code\u0018\u0001 \u0001(\u000e2\b.cs.CODE\u0012\u0016\n\u0004user\u0018\u0002 \u0001(\u000b2\b.cs.User\"\u000f\n\rC2S_LeaveChat\"'\n\rS2C_LeaveChat\u0012\u0016\n\u0004code\u0018\u0001 \u0001(\u000e2\b.cs.CODE\"\"\n\bC2S_Chat\u0012\u0016\n\u0004chat\u0018\u0001 \u0001(\u000b2\b.cs.Chat\":\n\bS2C_Chat\u0012\u0016\n\u0004code\u0018\u0001 \u0001(\u000e2\b.cs.CODE\u0012\u0016\n\u0004chat\u0018\u0002 \u0001(\u000b2\b.cs.Chat\"(\n\u000eS2C_NotifyChat\u0012\u0016\n\u0004chat\u0018\u0001 \u0001(\u000b2\b.cs.Chat\"#\n\u000fC2S_GetChatList\u0012\u0010\n\breadFlag\u0018\u0001 \u0001(\r\".\n\u000fS2C_GetChatList\u0012\u001b\n\tchat_list\u0018\u0001 \u0003(\u000b2\b.cs.Chat*#\n\u0004CODE\u0012\u000b\n\u0007CODE_OK\u0010\u0000\u0012\u000e\n\nCODE_ERROR\u0010\u0001*\u009f\u0002\n\u0002ID\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0017\n\u0011ID_C2S_KEEP_ALIVE\u0010\u0090¿\u0005\u0012\u0017\n\u0011ID_S2C_KEEP_ALIVE\u0010\u0091¿\u0005\u0012\u0017\n\u0011ID_C2S_ENTER_CHAT\u0010\u0092¿\u0005\u0012\u0017\n\u0011ID_S2C_ENTER_CHAT\u0010\u0093¿\u0005\u0012\u0017\n\u0011ID_C2S_LEAVE_CHAT\u0010\u0094¿\u0005\u0012\u0017\n\u0011ID_S2C_LEAVE_CHAT\u0010\u0095¿\u0005\u0012\u0011\n\u000bID_C2S_CHAT\u0010\u0096¿\u0005\u0012\u0011\n\u000bID_S2C_CHAT\u0010\u0097¿\u0005\u0012\u0018\n\u0012ID_S2C_NOTIFY_CHAT\u0010\u0098¿\u0005\u0012\u001a\n\u0014ID_C2S_GET_CHAT_LIST\u0010\u0099¿\u0005\u0012\u001a\n\u0014ID_S2C_GET_CHAT_LIST\u0010\u009a¿\u0005B\u001c\n\u000fcom.logic.protoB\tChatProtob\u0006proto3"}, new Descriptors.FileDescriptor[0], new Descriptors.FileDescriptor.InternalDescriptorAssigner() { // from class: com.logic.proto.ChatProto.1
            @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
            public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
                Descriptors.FileDescriptor unused = ChatProto.descriptor = root;
                return null;
            }
        });
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_cs_User_descriptor = descriptor2;
        internal_static_cs_User_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Id", "NickName", "IsSupporter", "DeviceModel", "SystemVersion", "GameVersion", "Phone", "GameId", "PushAppKey", "PushRegistrationId", "Email", "SupporterStatus", "System", "SdkVersion", "IsSupportTextView"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_cs_Chat_descriptor = descriptor3;
        internal_static_cs_Chat_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"SenderId", "ReceiverId", "Type", "Content", "Pic", "ServerId", "ServerName", "RoleId", "RoleName", "MsgType", "ImgUrl", "GameId", "CreateTime", "SenderName", "MsgId", "IsSupporter"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_cs_C2S_KeepAlive_descriptor = descriptor4;
        internal_static_cs_C2S_KeepAlive_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[0]);
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_cs_S2C_KeepAlive_descriptor = descriptor5;
        internal_static_cs_S2C_KeepAlive_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"Code", "TvSec", "TvMsec"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_cs_C2S_EnterChat_descriptor = descriptor6;
        internal_static_cs_C2S_EnterChat_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"User"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_cs_S2C_EnterChat_descriptor = descriptor7;
        internal_static_cs_S2C_EnterChat_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"Code", "User"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_cs_C2S_LeaveChat_descriptor = descriptor8;
        internal_static_cs_C2S_LeaveChat_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor8, new String[0]);
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_cs_S2C_LeaveChat_descriptor = descriptor9;
        internal_static_cs_S2C_LeaveChat_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor9, new String[]{"Code"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_cs_C2S_Chat_descriptor = descriptor10;
        internal_static_cs_C2S_Chat_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor10, new String[]{"Chat"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_cs_S2C_Chat_descriptor = descriptor11;
        internal_static_cs_S2C_Chat_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor11, new String[]{"Code", "Chat"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_cs_S2C_NotifyChat_descriptor = descriptor12;
        internal_static_cs_S2C_NotifyChat_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor12, new String[]{"Chat"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_cs_C2S_GetChatList_descriptor = descriptor13;
        internal_static_cs_C2S_GetChatList_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor13, new String[]{"ReadFlag"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_cs_S2C_GetChatList_descriptor = descriptor14;
        internal_static_cs_S2C_GetChatList_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor14, new String[]{"ChatList"});
    }
}
