.class public Lcom/bytedance/ads/convert/BDConvertInfo;
.super Ljava/lang/Object;


# instance fields
.field public clickId:Ljava/lang/String;

.field public clickIdNature:Ljava/lang/String;

.field public from:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

.field public humeChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ads/convert/BDConvertInfo;->clickId:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ads/convert/BDConvertInfo;->clickIdNature:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ads/convert/BDConvertInfo;->humeChannelId:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ads/convert/BDConvertInfo;->from:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    return-void
.end method

.method public static sourceToEnum(Ljava/lang/String;)Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->valueOf(Ljava/lang/String;)Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ads/convert/BDConvertInfo;->from:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
