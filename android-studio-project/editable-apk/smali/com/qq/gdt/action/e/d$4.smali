.class Lcom/qq/gdt/action/e/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/e/d;->b(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/e/d$4;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/qq/gdt/action/e/d$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "updateForAidTicketAndTaidTicket"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/qq/gdt/action/e/d$4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService;->getTuringDID(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "updateForAidTicketAndTaidTicket TuringDIDService.getTuringDID return null"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getAIDTicket()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getExpiredTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "updateForAidTicketAndTaidTicket errorCode:%d, aidTicket:%s, taid:%s, expiredTimestamp:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/gdt/action/e/d$4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/b;->f()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/qq/gdt/action/e/d;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/qq/gdt/action/e/d$4;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/b;->f()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v0

    const/16 v2, -0x2714

    if-eq v0, v2, :cond_2

    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v0

    const/16 v2, -0x271c

    if-eq v0, v2, :cond_2

    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v0

    const/16 v2, -0x523c

    if-eq v0, v2, :cond_2

    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v0

    const/16 v2, -0x5628

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/qq/gdt/action/e/d;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/qq/gdt/action/e/d$4;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/b;->x()I

    move-result v2

    :goto_0
    int-to-long v2, v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/qq/gdt/action/e/d;->c()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v2, "errorCode"

    invoke-interface {v1}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const/16 v1, 0xdb0

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    :cond_4
    return-void
.end method
