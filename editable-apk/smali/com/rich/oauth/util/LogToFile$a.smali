.class public final Lcom/rich/oauth/util/LogToFile$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/oauth/util/LogToFile;->writeToFile(CLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:C

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(CLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-char p1, p0, Lcom/rich/oauth/util/LogToFile$a;->a:C

    iput-object p2, p0, Lcom/rich/oauth/util/LogToFile$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/rich/oauth/util/LogToFile$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-char v0, p0, Lcom/rich/oauth/util/LogToFile$a;->a:C

    iget-object v1, p0, Lcom/rich/oauth/util/LogToFile$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/oauth/util/LogToFile$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/rich/oauth/util/LogToFile;->access$000(CLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
