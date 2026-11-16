.class public interface abstract Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;
.super Ljava/lang/Object;
.source "UploadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/utils/UploadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUploadProcessListener"
.end annotation


# virtual methods
.method public abstract initUpload(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation
.end method

.method public abstract onUploadDone(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "responseCode",
            "message",
            "msg"
        }
    .end annotation
.end method

.method public abstract onUploadProcess(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadSize"
        }
    .end annotation
.end method
