.class public final Lcom/taptap/sdk/moment/Moment;
.super Ljava/lang/Object;
.source "Moment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Moment.kt\ncom/taptap/sdk/moment/Moment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,119:1\n1#2:120\n37#3,2:121\n37#3,2:123\n*S KotlinDebug\n*F\n+ 1 Moment.kt\ncom/taptap/sdk/moment/Moment\n*L\n96#1:121,2\n100#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\"\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J&\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/Moment;",
        "",
        "()V",
        "closeMomentWithConfirmDialog",
        "",
        "createAlertDialog",
        "Lkotlin/Function0;",
        "Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;",
        "getNoticeData",
        "Lkotlin/Result;",
        "Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;",
        "getNoticeData-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "idToJSONObject",
        "Lorg/json/JSONObject;",
        "id",
        "",
        "openTapMoment",
        "type",
        "",
        "mediaData",
        "params",
        "videoMetaDataToJSONObject",
        "publishMetaData",
        "Lcom/taptap/sdk/moment/model/PublishMetaData;",
        "tap-moment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/moment/Moment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/moment/Moment;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/Moment;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final closeMomentWithConfirmDialog$lambda$2(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;)V
    .locals 2

    const-string v0, "$alert"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->TAG:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final closeMomentWithConfirmDialog$lambda$3()V
    .locals 0

    .line 67
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->dismissWhenShow()V

    .line 68
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->closeMomentDialog()V

    return-void
.end method

.method public static synthetic lambda$Pe0o9xxEixT1tWcybZNeLCIC1M0(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;)V
    .locals 0

    invoke-static {p0}, Lcom/taptap/sdk/moment/Moment;->closeMomentWithConfirmDialog$lambda$2(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;)V

    return-void
.end method

.method public static synthetic lambda$l6zNT2A1ReShfgFJR1Ny5pWihak()V
    .locals 0

    invoke-static {}, Lcom/taptap/sdk/moment/Moment;->closeMomentWithConfirmDialog$lambda$3()V

    return-void
.end method

.method public static synthetic openTapMoment$default(Lcom/taptap/sdk/moment/Moment;ILorg/json/JSONObject;Lorg/json/JSONObject;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 21
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/taptap/sdk/moment/Moment;->openTapMoment(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final closeMomentWithConfirmDialog()V
    .locals 2

    .line 64
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 65
    sget-object v0, Lcom/taptap/sdk/moment/-$$Lambda$Moment$l6zNT2A1ReShfgFJR1Ny5pWihak;->INSTANCE:Lcom/taptap/sdk/moment/-$$Lambda$Moment$l6zNT2A1ReShfgFJR1Ny5pWihak;

    .line 66
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->setMomentShowCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 73
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->dismissWhenShow()V

    .line 74
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->closeMomentDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final closeMomentWithConfirmDialog(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;",
            ">;)V"
        }
    .end annotation

    const-string v0, "createAlertDialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;

    .line 42
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->TAG:Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/taptap/sdk/moment/-$$Lambda$Moment$Pe0o9xxEixT1tWcybZNeLCIC1M0;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/moment/-$$Lambda$Moment$Pe0o9xxEixT1tWcybZNeLCIC1M0;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;)V

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->setMomentShowCallback(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final getNoticeData-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;

    iget v1, v0, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;-><init>(Lcom/taptap/sdk/moment/Moment;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 116
    iget v2, v0, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    sget-object p1, Lcom/taptap/sdk/moment/wrapper/NoticeUtils;->Companion:Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion;

    sget-object v2, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {v2}, Lcom/taptap/sdk/moment/TapMomentInternal;->getClientId()Ljava/lang/String;

    move-result-object v2

    iput v3, v0, Lcom/taptap/sdk/moment/Moment$getNoticeData$1;->label:I

    invoke-virtual {p1, v2, v0}, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion;->getNoticeInfo-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final idToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 85
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final openTapMoment(ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "moment"

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/TapMomentInternal;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "show_type"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 31
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "params"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->showMomentDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public final videoMetaDataToJSONObject(Lcom/taptap/sdk/moment/model/PublishMetaData;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "publishMetaData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/model/PublishMetaData;->getVideoPaths()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 122
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 95
    invoke-static {v1, v3}, Lcom/taptap/sdk/moment/legacy/widget/FilePicker;->getFileValidPathArray([Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/model/PublishMetaData;->getImagePaths()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-array v2, v2, [Ljava/lang/String;

    .line 124
    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 99
    invoke-static {v2, v3}, Lcom/taptap/sdk/moment/legacy/widget/FilePicker;->getFileValidPathArray([Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "video_paths"

    .line 104
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "image_paths"

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/model/PublishMetaData;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
