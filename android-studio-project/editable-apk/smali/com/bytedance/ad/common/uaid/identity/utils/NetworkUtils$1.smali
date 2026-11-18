.class Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->requestCellular(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

.field final val$networkCallback:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;


# direct methods
.method constructor <init>(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    iput-object p2, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;->val$networkCallback:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    invoke-static {v0, p1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->access$002(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;Landroid/net/Network;)Landroid/net/Network;

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;->val$networkCallback:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;

    invoke-interface {v0, p1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;->networkAvailable(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->access$102(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->access$002(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;Landroid/net/Network;)Landroid/net/Network;

    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;->val$networkCallback:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;

    invoke-interface {p1, v0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;->networkAvailable(Landroid/net/Network;)V

    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->access$102(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;Z)Z

    return-void
.end method
