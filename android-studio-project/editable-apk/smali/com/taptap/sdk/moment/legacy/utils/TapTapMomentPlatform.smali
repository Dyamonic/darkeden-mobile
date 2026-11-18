.class public Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;
.super Ljava/lang/Object;
.source "TapTapMomentPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoginResultCallback;,
        Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoadingProgressHandler;
    }
.end annotation


# static fields
.field private static final MSG_PROGRESS_TIMEOUT:Ljava/lang/String; = "msg_progress_timeout"

.field private static final PUBLISH_FROM:Ljava/lang/String; = "sdk"

.field private static activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingDialogWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static loginResultCallback:Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoginResultCallback;

.field private static momentDialogWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PUBLISH_CONTENT:Ljava/lang/String;

.field private final PUBLISH_VIDEO:Ljava/lang/String;

.field private current:Landroid/app/Fragment;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "video-editor"

    .line 31
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->PUBLISH_VIDEO:Ljava/lang/String;

    const-string v0, "moment-editor"

    .line 32
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->PUBLISH_CONTENT:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 25
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 25
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->dismissLoading()V

    return-void
.end method

.method public static closeMomentDialog()V
    .locals 1

    .line 102
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->dismiss()V

    .line 104
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method private static constructorParams(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    new-array v2, v5, [Ljava/lang/Object;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "&%s=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "?%s=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dismissLoading()V
    .locals 1

    .line 144
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 2

    .line 49
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->activityWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getUrlExtra(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->COMMON:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    iget v0, v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    const-string v1, ""

    if-ne p0, v0, :cond_0

    return-object v1

    .line 172
    :cond_0
    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->SCENE:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    iget v0, v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    const-string v2, "id"

    if-ne p0, v0, :cond_2

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 175
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "?entry="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 183
    :cond_2
    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->toComponent(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "from"

    const-string v3, "sdk"

    .line 185
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 189
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "openId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p1, "tap_id"

    .line 190
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_4
    :goto_0
    sget-object p1, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/TapMomentInternal;->getRegionType()I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "itkMoments"

    goto :goto_1

    :cond_5
    const-string p1, "itkmomentsintl"

    .line 195
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://forum/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->constructorParams(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "?to="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 41
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->setApplication(Landroid/app/Application;)V

    goto :goto_0

    .line 43
    :cond_0
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;

    move-result-object v0

    check-cast p0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->setApplication(Landroid/app/Application;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isShowing()Z
    .locals 2

    .line 160
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 162
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static setMomentShowCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 153
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->setResultCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static showLoading()V
    .locals 4

    .line 130
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;

    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 134
    :cond_0
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->show()V

    .line 138
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string v1, "msg_progress_timeout"

    .line 139
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    new-instance v1, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoadingProgressHandler;

    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoadingProgressHandler;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform$LoadingProgressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static showMomentDialog(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    .line 56
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "type"

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "moment"

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "client_id"

    .line 60
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "locale"

    .line 61
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    const-string v7, "access_token"

    .line 62
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "token_type"

    .line 63
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mac_algorithm"

    .line 64
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "kid"

    .line 65
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "mac_key"

    move-object/from16 v16, v1

    .line 66
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v2

    const/4 v2, 0x0

    move-object/from16 v18, v5

    const-string v5, "show_type"

    .line 67
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "data"

    move-object/from16 v19, v6

    .line 68
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v5

    const-string v5, "params"

    .line 69
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v5, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {v5}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;-><init>()V

    move-object/from16 p0, v5

    .line 71
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 72
    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "url_extra"

    .line 79
    invoke-static {v2, v0}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getUrlExtra(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v19, :cond_1

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    .line 84
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    .line 86
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v20

    .line 87
    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 88
    invoke-virtual {v1, v5}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const v2, 0x103000b

    .line 89
    invoke-virtual {v1, v0, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->setStyle(II)V

    .line 90
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 92
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->momentDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v1, "appear.moment.taptap.action"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
