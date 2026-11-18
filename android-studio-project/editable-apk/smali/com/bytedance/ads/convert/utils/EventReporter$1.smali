.class Lcom/bytedance/ads/convert/utils/EventReporter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/utils/EventReporter;->postEvent(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/bytedance/ads/convert/utils/EventReporter;

.field final val$appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

.field final val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bytedance/ads/convert/utils/EventReporter;Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/utils/EventReporter$1;->this$0:Lcom/bytedance/ads/convert/utils/EventReporter;

    iput-object p2, p0, Lcom/bytedance/ads/convert/utils/EventReporter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/ads/convert/utils/EventReporter$1;->val$appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/ads/convert/utils/EventReporter$1;->this$0:Lcom/bytedance/ads/convert/utils/EventReporter;

    iget-object v1, p0, Lcom/bytedance/ads/convert/utils/EventReporter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/ads/convert/utils/EventReporter$1;->val$appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    invoke-static {v0, v1, v2}, Lcom/bytedance/ads/convert/utils/EventReporter;->access$000(Lcom/bytedance/ads/convert/utils/EventReporter;Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    return-void
.end method
