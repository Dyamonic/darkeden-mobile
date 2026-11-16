.class public interface abstract Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;
.super Ljava/lang/Object;
.source "Listener4Assist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssistExtend"
.end annotation


# virtual methods
.method public abstract dispatchBlockEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z
.end method

.method public abstract dispatchFetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z
.end method

.method public abstract dispatchInfoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;ZLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z
.end method

.method public abstract dispatchTaskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z
.end method
