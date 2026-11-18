.class public Lcom/bytedance/applog/convert/ClickIdProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/applog/convert/IIdProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClickIdProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdAndSetIntoJson(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p2}, Lcom/bytedance/ads/convert/utils/ClickIdSPUtil;->fetchClickId(Landroid/content/Context;)Lcom/bytedance/ads/convert/BDConvertInfo;

    move-result-object p2

    iget-object v0, p2, Lcom/bytedance/ads/convert/BDConvertInfo;->clickId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "click_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p2, Lcom/bytedance/ads/convert/BDConvertInfo;->clickIdNature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "click_id_nature"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p2, Lcom/bytedance/ads/convert/BDConvertInfo;->humeChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hume_channel_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object p2, p2, Lcom/bytedance/ads/convert/BDConvertInfo;->from:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "click_id_source"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-void
.end method
