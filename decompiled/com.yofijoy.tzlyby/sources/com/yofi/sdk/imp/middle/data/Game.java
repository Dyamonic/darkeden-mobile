package com.yofi.sdk.imp.middle.data;

/* loaded from: classes2.dex */
public class Game {
    private String id = "";
    private String gameName = "";
    private String icon = "";
    private String score = "";
    private String gameType = "";
    private String fileSize = "";
    private String downloadUrl = "";
    private String downloadCount = "";

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

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl;
    }

    public String getDownloadCount() {
        return this.downloadCount;
    }

    public void setDownloadCount(String downloadCount) {
        this.downloadCount = downloadCount;
    }

    public String getGameType() {
        return this.gameType;
    }

    public void setGameType(String gameType) {
        this.gameType = gameType;
    }

    public String getFileSize() {
        return this.fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public String toString() {
        return "Game [id=" + this.id + ", gameName=" + this.gameName + ", icon=" + this.icon + ", score=" + this.score + ", gameType=" + this.gameType + ", fileSize=" + this.fileSize + ", downloadUrl=" + this.downloadUrl + ", downloadCount=" + this.downloadCount + "]";
    }
}
