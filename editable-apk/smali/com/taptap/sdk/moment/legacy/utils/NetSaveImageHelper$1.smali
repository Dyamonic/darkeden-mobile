.class Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;
.super Ljava/lang/Object;
.source "NetSaveImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->download(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;->val$urlStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;->val$callback:Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;->val$urlStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$1;->val$callback:Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;

    invoke-static {v0, v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->access$000(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/taptap/sdk/moment/legacy/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
