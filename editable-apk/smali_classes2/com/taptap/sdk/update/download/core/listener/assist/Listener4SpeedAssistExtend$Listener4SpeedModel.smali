.class public Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;
.super Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;
.source "Listener4SpeedAssistExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener4SpeedModel"
.end annotation


# instance fields
.field blockSpeeds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/taptap/sdk/update/download/SpeedCalculator;",
            ">;"
        }
    .end annotation
.end field

.field taskSpeed:Lcom/taptap/sdk/update/download/SpeedCalculator;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBlockSpeed(I)Lcom/taptap/sdk/update/download/SpeedCalculator;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/update/download/SpeedCalculator;

    return-object p1
.end method

.method public getTaskSpeed()Lcom/taptap/sdk/update/download/SpeedCalculator;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/taptap/sdk/update/download/SpeedCalculator;

    return-object v0
.end method

.method public onInfoValid(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 3

    .line 120
    invoke-super {p0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->onInfoValid(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    .line 121
    new-instance v0, Lcom/taptap/sdk/update/download/SpeedCalculator;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/SpeedCalculator;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/taptap/sdk/update/download/SpeedCalculator;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    .line 124
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    new-instance v2, Lcom/taptap/sdk/update/download/SpeedCalculator;

    invoke-direct {v2}, Lcom/taptap/sdk/update/download/SpeedCalculator;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
