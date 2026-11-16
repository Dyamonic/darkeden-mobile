.class public Lrich/o1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public final f:Ljava/lang/String;

.field public g:Landroid/net/Network;

.field public h:J

.field public final i:Ljava/lang/String;

.field public j:I

.field public final k:Lrich/j1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrich/j1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrich/o1;->e:Z

    iput-object p1, p0, Lrich/o1;->a:Ljava/lang/String;

    iput-object p2, p0, Lrich/o1;->k:Lrich/j1;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lrich/o1;->b:Ljava/util/Map;

    const-string v0, ""

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lrich/j1;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lrich/o1;->c:Ljava/lang/String;

    iput-object p3, p0, Lrich/o1;->d:Ljava/lang/String;

    iput-object p4, p0, Lrich/o1;->f:Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lrich/j1;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lrich/o1;->i:Ljava/lang/String;

    const-string p2, "sdkVersion"

    const-string p3, "quick_login_android_5.9.7.1"

    .line 2
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Content-Type"

    const-string p3, "application/json"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "CMCC-EncryptType"

    const-string p3, "STD"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "traceId"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "appid"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "connection"

    const-string p3, "Keep-Alive"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lrich/o1;->f:Ljava/lang/String;

    invoke-static {v0}, Lrich/d2;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrich/o1;->a:Ljava/lang/String;

    const-string v1, "logReport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrich/o1;->a:Ljava/lang/String;

    const-string v1, "uniConfig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
