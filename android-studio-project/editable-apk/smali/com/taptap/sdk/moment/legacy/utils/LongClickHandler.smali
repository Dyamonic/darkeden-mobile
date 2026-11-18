.class public Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;
.super Ljava/lang/Object;
.source "LongClickHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;
    }
.end annotation


# static fields
.field private static final SAVE_IMAGE:I = 0x1


# instance fields
.field private mCallback:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;

.field private mData:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->mData:Lorg/json/JSONObject;

    .line 43
    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;)Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;Landroid/app/Activity;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->notifyMediaRefresh(Landroid/app/Activity;)V

    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;)Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;
    .locals 1

    .line 47
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;-><init>(Lorg/json/JSONObject;Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;)V

    return-object v0
.end method

.method private notifyMediaRefresh(Landroid/app/Activity;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->mData:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;-><init>(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->download(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V

    return-void
.end method


# virtual methods
.method public handler(Landroid/app/Activity;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->mData:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "type"

    .line 54
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->saveImageToMedia(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public saveImageToMedia(Landroid/app/Activity;)V
    .locals 4

    .line 60
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;-><init>(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_save_image:I

    .line 89
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 60
    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->newInstance(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;[Ljava/lang/String;)Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    sget-object v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
