package com.yofi.sdk.imp.middle.data;

import com.logic.proto.ChatProto;

/* loaded from: classes2.dex */
public class User {
    private String deviceModel;
    private Integer gameId;
    private String gameVersion;
    private Long id;
    private Integer isSupportTextView;
    private Integer isSupporter;
    private String nickName;
    private String phone;
    private String pushAppKey;
    private String pushRegistrationId;
    private String sdkVersion;
    private Integer system;
    private String systemVersion;

    public User() {
    }

    public User(Long id, String nickName, String deviceModel, String systemVersion, String gameVersion, String phone, int gameId, String pushAppKey, String pushRegistrationId, int system, String sdkVersion, int isSupportTextView) {
        this.id = id;
        this.nickName = nickName;
        this.isSupporter = 0;
        this.deviceModel = deviceModel;
        this.systemVersion = systemVersion;
        this.gameVersion = gameVersion;
        this.phone = phone;
        this.gameId = Integer.valueOf(gameId);
        this.pushAppKey = pushAppKey;
        this.pushRegistrationId = pushRegistrationId;
        this.system = Integer.valueOf(system);
        this.sdkVersion = sdkVersion;
        this.isSupportTextView = Integer.valueOf(isSupportTextView);
    }

    public User(ChatProto.User proto) {
        this.id = Long.valueOf(proto.getId());
        this.nickName = proto.getNickName();
        this.isSupporter = Integer.valueOf(proto.getIsSupporter());
        this.deviceModel = proto.getDeviceModel();
        this.systemVersion = proto.getSystemVersion();
        this.gameVersion = proto.getGameVersion();
        this.phone = proto.getPhone();
        this.gameId = Integer.valueOf(proto.getGameId());
        this.pushAppKey = proto.getPushAppKey();
        this.pushRegistrationId = proto.getPushRegistrationId();
        this.system = Integer.valueOf(proto.getSystem());
        this.sdkVersion = proto.getSdkVersion();
        this.isSupportTextView = Integer.valueOf(proto.getIsSupportTextView());
    }

    public void flush(ChatProto.User.Builder proto) {
        proto.setId(this.id.longValue());
        proto.setNickName(this.nickName);
        proto.setIsSupporter(this.isSupporter.intValue());
        proto.setDeviceModel(this.deviceModel);
        proto.setSystemVersion(this.systemVersion);
        proto.setGameVersion(this.gameVersion);
        proto.setPhone(this.phone);
        proto.setGameId(this.gameId.intValue());
        proto.setPushAppKey(this.pushAppKey);
        proto.setPushRegistrationId(this.pushRegistrationId);
        proto.setSystem(this.system.intValue());
        proto.setSdkVersion(this.sdkVersion);
        proto.setIsSupportTextView(this.isSupportTextView.intValue());
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNickName() {
        return this.nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public Integer getIsSupporter() {
        return this.isSupporter;
    }

    public void setIsSupporter(Integer isSupporter) {
        this.isSupporter = isSupporter;
    }

    public String getDeviceModel() {
        return this.deviceModel;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel;
    }

    public String getSystemVersion() {
        return this.systemVersion;
    }

    public void setSystemVersion(String systemVersion) {
        this.systemVersion = systemVersion;
    }

    public String getGameVersion() {
        return this.gameVersion;
    }

    public void setGameVersion(String gameVersion) {
        this.gameVersion = gameVersion;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getGameId() {
        return this.gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }

    public String getPushAppKey() {
        return this.pushAppKey;
    }

    public void setPushAppKey(String pushAppKey) {
        this.pushAppKey = pushAppKey;
    }

    public String getPushRegistrationId() {
        return this.pushRegistrationId;
    }

    public void setPushRegistrationId(String pushRegistrationId) {
        this.pushRegistrationId = pushRegistrationId;
    }

    public Integer getSystem() {
        return this.system;
    }

    public void setSystem(Integer system) {
        this.system = system;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public void setSdkVersion(String sdkVersion) {
        this.sdkVersion = sdkVersion;
    }

    public Integer getIsSupportTextView() {
        return this.isSupportTextView;
    }

    public void setIsSupportTextView(Integer isSupportTextView) {
        this.isSupportTextView = isSupportTextView;
    }
}
