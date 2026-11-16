package com.yofi.sdk.imp.middle.data;

/* loaded from: classes2.dex */
public class NewAndInfo {
    private String id = "";
    private String title = "";
    private String createDate = "";
    private String content = "";
    private String detailUrl = "";

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCreateDate() {
        return this.createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDetailUrl() {
        return this.detailUrl;
    }

    public void setDetailUrl(String detailUrl) {
        this.detailUrl = detailUrl;
    }

    public String toString() {
        return "NewAndInfo [id=" + this.id + ", title=" + this.title + ", createDate=" + this.createDate + ", content=" + this.content + ", detailUrl=" + this.detailUrl + "]";
    }
}
