package com.yofi.sdk.imp.middle.data;

/* loaded from: classes2.dex */
public class GameDetail {
    private String id = "";
    private String gameName = "";
    private String icon = "";
    private String score = "";
    private String gameType = "";
    private String tags = "";
    private String fileSize = "";
    private String language = "";
    private String gameScore = "";
    private String desc = "";
    private String downloadUrl = "";

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getScore() {
        return this.score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getGameType() {
        return this.gameType;
    }

    public void setGameType(String gameType) {
        this.gameType = gameType;
    }

    public String getTags() {
        return this.tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getFileSize() {
        return this.fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getGameScore() {
        return this.gameScore;
    }

    public void setGameScore(String gameScore) {
        this.gameScore = gameScore;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl;
    }

    public String toString() {
        return "GameDetail [id=" + this.id + ", gameName=" + this.gameName + ", icon=" + this.icon + ", score=" + this.score + ", gameType=" + this.gameType + ", tags=" + this.tags + ", fileSize=" + this.fileSize + ", language=" + this.language + ", gameScore=" + this.gameScore + ", desc=" + this.desc + ", downloadUrl=" + this.downloadUrl + "]";
    }
}
