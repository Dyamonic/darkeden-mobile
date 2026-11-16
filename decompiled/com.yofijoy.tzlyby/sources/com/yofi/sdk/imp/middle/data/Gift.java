package com.yofi.sdk.imp.middle.data;

/* loaded from: classes2.dex */
public class Gift {
    private String giftId = "";
    private String giftName = "";
    private String content = "";
    private String gameName = "";
    private String icon = "";

    public String getGiftId() {
        return this.giftId;
    }

    public void setGiftId(String giftId) {
        this.giftId = giftId;
    }

    public String getGiftName() {
        return this.giftName;
    }

    public void setGiftName(String giftName) {
        this.giftName = giftName;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getGameName() {
        return this.gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String toString() {
        return "Gift [giftId=" + this.giftId + ", giftName=" + this.giftName + ", content=" + this.content + ", gameName=" + this.gameName + ", icon=" + this.icon + "]";
    }
}
