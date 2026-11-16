.class public interface abstract Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;
.super Ljava/lang/Object;
.source "Listener4Assist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener4Callback"
.end annotation


# virtual methods
.method public abstract blockEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)V
.end method

.method public abstract infoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;ZLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)V
.end method

.method public abstract progress(Lcom/taptap/sdk/update/download/DownloadTask;J)V
.end method

.method public abstract progressBlock(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
.end method

.method public abstract taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)V
.end method
