.class Lcom/juhe/juhesdk/middle/common/RealRequest$1;
.super Ljava/lang/Object;
.source "RealRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/common/RealRequest;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/common/RealRequest;

.field final synthetic val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

.field final synthetic val$finalSum:J

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/common/RealRequest;Lcom/juhe/juhesdk/middle/common/CallBackUtil;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$total",
            "val$finalSum",
            "val$callBack"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/RealRequest$1;->this$0:Lcom/juhe/juhesdk/middle/common/RealRequest;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/common/RealRequest$1;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    iput-wide p3, p0, Lcom/juhe/juhesdk/middle/common/RealRequest$1;->val$finalSum:J

    iput-wide p5, p0, Lcom/juhe/juhesdk/middle/common/RealRequest$1;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/common/RealRequest$1;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    iget-wide v1, p0, Lcom/juhe/juhesdk/middle/common/RealRequest$1;->val$finalSum:J

    long-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lcom/juhe/juhesdk/middle/common/RealRequest$1;->val$total:J

    long-to-float v4, v2

    div-float/2addr v1, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onProgress(FJ)V

    return-void
.end method
