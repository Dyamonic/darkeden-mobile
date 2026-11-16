.class Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;
.super Ljava/lang/Object;
.source "NetSaveImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper;->notifyResult(Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;ZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;ZLjava/io/File;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;->val$callback:Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;

    iput-boolean p2, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;->val$success:Z

    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;->val$callback:Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;

    iget-boolean v1, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;->val$success:Z

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/utils/NetSaveImageHelper$2;->val$file:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;->callback(ZLjava/io/File;)V

    return-void
.end method
