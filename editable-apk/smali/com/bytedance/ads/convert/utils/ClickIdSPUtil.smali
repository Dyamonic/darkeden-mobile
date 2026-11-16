.class public Lcom/bytedance/ads/convert/utils/ClickIdSPUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "Convert:ClickIdSPUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchClickId(Landroid/content/Context;)Lcom/bytedance/ads/convert/BDConvertInfo;
    .locals 7

    const-string v0, "sp_name_bd_convert_hume_sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "has_read"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/ads/convert/utils/ClickIdSPUtil;->readClickId(Landroid/content/Context;)Lcom/bytedance/ads/convert/BDConvertInfo;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->getExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "click_id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "click_id_nature"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hume_channel_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/bytedance/ads/convert/BDConvertInfo;

    sget-object v6, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->APK:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    invoke-direct {v5, v1, v4, v3, v6}, Lcom/bytedance/ads/convert/BDConvertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;)V

    invoke-static {p0, v5}, Lcom/bytedance/ads/convert/utils/ClickIdSPUtil;->saveByPriority(Landroid/content/Context;Lcom/bytedance/ads/convert/BDConvertInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/bytedance/ads/convert/utils/ClickIdSPUtil;->readClickId(Landroid/content/Context;)Lcom/bytedance/ads/convert/BDConvertInfo;

    move-result-object p0

    return-object p0
.end method

.method public static readClickId(Landroid/content/Context;)Lcom/bytedance/ads/convert/BDConvertInfo;
    .locals 6

    const-string v0, "sp_name_bd_convert_click_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "click_id"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "click_id_source"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/ads/convert/BDConvertInfo;

    const-string v4, "click_id_nature"

    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hume_channel_id"

    invoke-interface {p0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lcom/bytedance/ads/convert/BDConvertInfo;->sourceToEnum(Ljava/lang/String;)Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    move-result-object v1

    invoke-direct {v3, v0, v4, p0, v1}, Lcom/bytedance/ads/convert/BDConvertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;)V

    return-object v3
.end method

.method public static saveByPriority(Landroid/content/Context;Lcom/bytedance/ads/convert/BDConvertInfo;)V
    .locals 5

    const-string v0, "sp_name_bd_convert_click_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "click_id_source"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ads/convert/BDConvertInfo;->sourceToEnum(Ljava/lang/String;)Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->ordinal()I

    move-result v3

    iget-object v4, p1, Lcom/bytedance/ads/convert/BDConvertInfo;->from:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    invoke-virtual {v4}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->ordinal()I

    move-result v4

    if-gt v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveByPriority: ignore:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/bytedance/ads/convert/BDConvertInfo;->from:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Convert:ClickIdSPUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget-object v1, p1, Lcom/bytedance/ads/convert/BDConvertInfo;->clickId:Ljava/lang/String;

    const-string v2, "click_id"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/BDConvertInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget-object v0, p1, Lcom/bytedance/ads/convert/BDConvertInfo;->clickIdNature:Ljava/lang/String;

    const-string v1, "click_id_nature"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget-object p1, p1, Lcom/bytedance/ads/convert/BDConvertInfo;->humeChannelId:Ljava/lang/String;

    const-string v0, "hume_channel_id"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
