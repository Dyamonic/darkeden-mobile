.class public Lcom/bytedance/bdtracker/d2;
.super Lcom/bytedance/bdtracker/q1;
.source ""


# instance fields
.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/bytedance/bdtracker/q1;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d2;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Net"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/d2;->e:Landroid/content/Context;

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/z4;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "access"

    .line 2
    invoke-static {p1, v2, v0}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
