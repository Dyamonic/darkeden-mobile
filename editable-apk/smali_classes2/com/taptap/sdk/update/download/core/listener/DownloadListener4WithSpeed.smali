.class public abstract Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed;
.super Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;
.source "DownloadListener4WithSpeed.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;-><init>()V

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed;-><init>(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;)V

    return-void
.end method

.method private constructor <init>(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;)V
    .locals 3

    .line 34
    new-instance v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    new-instance v1, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;-><init>(Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed$1;)V

    invoke-direct {v0, v1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;-><init>(Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ModelCreator;)V

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;-><init>(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;)V

    .line 36
    invoke-virtual {p1, p0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;->setCallback(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed;->setAssistExtend(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;)V

    return-void
.end method


# virtual methods
.method public final blockEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)V
    .locals 0

    return-void
.end method

.method public final infoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;ZLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)V
    .locals 0

    return-void
.end method

.method public final progress(Lcom/taptap/sdk/update/download/DownloadTask;J)V
    .locals 0

    return-void
.end method

.method public final progressBlock(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    return-void
.end method

.method public final taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)V
    .locals 0

    return-void
.end method
