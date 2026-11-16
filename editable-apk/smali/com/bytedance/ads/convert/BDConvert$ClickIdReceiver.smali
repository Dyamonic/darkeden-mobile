.class Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/IClickIdReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/BDConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickIdReceiver"
.end annotation


# instance fields
.field final this$0:Lcom/bytedance/ads/convert/BDConvert;


# direct methods
.method private constructor <init>(Lcom/bytedance/ads/convert/BDConvert;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;->this$0:Lcom/bytedance/ads/convert/BDConvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ads/convert/BDConvert;Lcom/bytedance/ads/convert/BDConvert$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;-><init>(Lcom/bytedance/ads/convert/BDConvert;)V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert$2;->$SwitchMap$com$bytedance$ads$convert$IClickIdReceiver$ClickIdFrom:[I

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "click_id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;->this$0:Lcom/bytedance/ads/convert/BDConvert;

    invoke-static {p2}, Lcom/bytedance/ads/convert/BDConvert;->access$100(Lcom/bytedance/ads/convert/BDConvert;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/bytedance/ads/convert/BDConvertInfo;

    sget-object v1, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->StickyBroadcast:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/bytedance/ads/convert/BDConvertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;)V

    invoke-static {p2, v0}, Lcom/bytedance/ads/convert/utils/ClickIdSPUtil;->saveByPriority(Landroid/content/Context;Lcom/bytedance/ads/convert/BDConvertInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "BDConvert"

    const-string v0, "onReceive: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
