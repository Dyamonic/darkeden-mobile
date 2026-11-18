.class Lcom/bytedance/ads/convert/BDConvert$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/applog/IHeaderCustomTimelyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/BDConvert;->init(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/bytedance/ads/convert/BDConvert;

.field final val$appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

.field final val$callback:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;


# direct methods
.method constructor <init>(Lcom/bytedance/ads/convert/BDConvert;Lcom/bytedance/applog/IHeaderCustomTimelyCallback;Lcom/bytedance/applog/IAppLogInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/BDConvert$1;->this$0:Lcom/bytedance/ads/convert/BDConvert;

    iput-object p2, p0, Lcom/bytedance/ads/convert/BDConvert$1;->val$callback:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    iput-object p3, p0, Lcom/bytedance/ads/convert/BDConvert$1;->val$appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHeader(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/ads/convert/BDConvert$1;->val$callback:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IHeaderCustomTimelyCallback;->updateHeader(Lorg/json/JSONObject;)V

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ads/convert/BDConvert$1;->this$0:Lcom/bytedance/ads/convert/BDConvert;

    invoke-static {v0}, Lcom/bytedance/ads/convert/BDConvert;->access$100(Lcom/bytedance/ads/convert/BDConvert;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ads/convert/BDConvert$1;->val$appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    invoke-static {v0, v1}, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->getAppUniqueId(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)Lcom/bytedance/ads/convert/hume/readapk/Pair;

    move-result-object v0

    const-string v1, "app_unique_id_source"

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_unique_id"

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
