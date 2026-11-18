.class public Lcom/huawei/android/hwgamesdk/HwGameSDK;
.super Ljava/lang/Object;
.source "HwGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwgamesdk/HwGameSDK$GameEngineCallBack;,
        Lcom/huawei/android/hwgamesdk/HwGameSDK$GameScene;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwGameSDK"


# instance fields
.field private mGameEngineCallback:Lcom/huawei/android/hwgamesdk/HwGameSDK$GameEngineCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/huawei/android/hwgamesdk/HwGameSDK;->mGameEngineCallback:Lcom/huawei/android/hwgamesdk/HwGameSDK$GameEngineCallBack;

    return-void
.end method


# virtual methods
.method public getApiLevel()I
    .locals 2

    .line 16
    new-instance v0, Lcom/huawei/android/hwgamesdk/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/hwgamesdk/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyContinuousFpsMissed(III)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyContinuousFpsMissed, cycle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", maxFrameMissed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", times: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HwGameSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p1, Lcom/huawei/android/hwgamesdk/NoExtAPIException;

    const-string p2, "notifyContinuousFpsMissed isn\'t supported."

    invoke-direct {p1, p2}, Lcom/huawei/android/hwgamesdk/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyFpsChanged(FF)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyFpsChanged, oldFps:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", newFps: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HwGameSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Lcom/huawei/android/hwgamesdk/NoExtAPIException;

    const-string p2, "notifyFpsChanged isn\'t supported."

    invoke-direct {p1, p2}, Lcom/huawei/android/hwgamesdk/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyFpsDx(IFI)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyFpsDx, cycle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", maxFrameDx:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", frame: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HwGameSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p1, Lcom/huawei/android/hwgamesdk/NoExtAPIException;

    const-string p2, "notifyFpsDx isn\'t supported."

    invoke-direct {p1, p2}, Lcom/huawei/android/hwgamesdk/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyGameScene(Lcom/huawei/android/hwgamesdk/HwGameSDK$GameScene;II)V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gameScene:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", cpuLevel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", gpuLevel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HwGameSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance p1, Lcom/huawei/android/hwgamesdk/NoExtAPIException;

    const-string p2, "notifyGameScene isn\'t supported."

    invoke-direct {p1, p2}, Lcom/huawei/android/hwgamesdk/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerGame(Lcom/huawei/android/hwgamesdk/HwGameSDK$GameEngineCallBack;)Z
    .locals 2

    const-string v0, "HwGameSDK"

    const-string v1, "registerGame"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p1, p0, Lcom/huawei/android/hwgamesdk/HwGameSDK;->mGameEngineCallback:Lcom/huawei/android/hwgamesdk/HwGameSDK$GameEngineCallBack;

    .line 30
    new-instance p1, Lcom/huawei/android/hwgamesdk/NoExtAPIException;

    const-string v0, "registerGame isn\'t supported."

    invoke-direct {p1, v0}, Lcom/huawei/android/hwgamesdk/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
