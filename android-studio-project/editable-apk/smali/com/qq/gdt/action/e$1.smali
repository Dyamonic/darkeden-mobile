.class Lcom/qq/gdt/action/e$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/e;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/e$1;->a:Lcom/qq/gdt/action/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/qq/gdt/action/e$1;->a:Lcom/qq/gdt/action/e;

    invoke-static {p1}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/e;)V

    iget-object p1, p0, Lcom/qq/gdt/action/e$1;->a:Lcom/qq/gdt/action/e;

    invoke-static {p1}, Lcom/qq/gdt/action/e;->b(Lcom/qq/gdt/action/e;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "TICKET"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/qq/gdt/action/e$1;->a:Lcom/qq/gdt/action/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/e;J)J

    :cond_0
    return-void
.end method
