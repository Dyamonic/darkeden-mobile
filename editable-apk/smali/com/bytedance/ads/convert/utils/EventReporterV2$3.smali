.class Lcom/bytedance/ads/convert/utils/EventReporterV2$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/utils/EventReporterV2;->postEventInternal(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/bytedance/ads/convert/utils/EventReporterV2;

.field final val$event:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/bytedance/ads/convert/utils/EventReporterV2;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2$3;->this$0:Lcom/bytedance/ads/convert/utils/EventReporterV2;

    iput-object p2, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2$3;->val$event:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2$3;->val$event:Lorg/json/JSONObject;

    const-string v1, "Convert:EventReporterV2"

    invoke-static {v0, v1}, Lcom/bytedance/ads/convert/utils/NetWorkUtils;->post(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method
