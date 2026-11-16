.class public Lcom/bytedance/ads/convert/utils/ClickIdHeaderTimelyCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/applog/IHeaderCustomTimelyCallback;


# static fields
.field public static final KEY_CLICK_ID:Ljava/lang/String; = "click_id"

.field public static final KEY_CLICK_ID_NATURE:Ljava/lang/String; = "click_id_nature"

.field private static final TAG:Ljava/lang/String; = "ClickIdHeaderTimelyCall"


# instance fields
.field private final clickId:Ljava/lang/String;

.field private lastCallback:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/applog/IHeaderCustomTimelyCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ads/convert/utils/ClickIdHeaderTimelyCallback;->clickId:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ads/convert/utils/ClickIdHeaderTimelyCallback;->lastCallback:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    return-void
.end method


# virtual methods
.method public updateHeader(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "click_id"

    const-string v1, "updateHeader: "

    const-string v2, "ClickIdHeaderTimelyCall"

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/ads/convert/utils/ClickIdHeaderTimelyCallback;->lastCallback:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/bytedance/applog/IHeaderCustomTimelyCallback;->updateHeader(Lorg/json/JSONObject;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/ads/convert/utils/ClickIdHeaderTimelyCallback;->clickId:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/ads/convert/utils/ClickIdHeaderTimelyCallback;->clickId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
