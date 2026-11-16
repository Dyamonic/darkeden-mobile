.class public interface abstract Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist$Listener1Callback;
.super Ljava/lang/Object;
.source "Listener1Assist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener1Callback"
.end annotation


# virtual methods
.method public abstract connected(Lcom/taptap/sdk/update/download/DownloadTask;IJJ)V
.end method

.method public abstract progress(Lcom/taptap/sdk/update/download/DownloadTask;JJ)V
.end method

.method public abstract retry(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
.end method

.method public abstract taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist$Listener1Model;)V
.end method

.method public abstract taskStart(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist$Listener1Model;)V
.end method
