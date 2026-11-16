.class Lcom/bytedance/ads/convert/utils/EventReporterV2$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/utils/EventReporterV2;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/bytedance/ads/convert/utils/EventReporterV2;


# direct methods
.method constructor <init>(Lcom/bytedance/ads/convert/utils/EventReporterV2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2$1;->this$0:Lcom/bytedance/ads/convert/utils/EventReporterV2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2$1;->this$0:Lcom/bytedance/ads/convert/utils/EventReporterV2;

    invoke-static {v0}, Lcom/bytedance/ads/convert/utils/EventReporterV2;->access$000(Lcom/bytedance/ads/convert/utils/EventReporterV2;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2$1;->this$0:Lcom/bytedance/ads/convert/utils/EventReporterV2;

    invoke-static {v2}, Lcom/bytedance/ads/convert/utils/EventReporterV2;->access$100(Lcom/bytedance/ads/convert/utils/EventReporterV2;)Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ads/convert/utils/EventReporterV2;->postEvent(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    return-void
.end method
