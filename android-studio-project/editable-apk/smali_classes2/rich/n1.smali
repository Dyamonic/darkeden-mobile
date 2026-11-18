.class public Lrich/n1;
.super Lrich/o1;
.source ""


# instance fields
.field public final l:Lrich/h1;

.field public m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrich/h1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lrich/o1;-><init>(Ljava/lang/String;Lrich/j1;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lrich/n1;->m:Z

    iput-object p2, p0, Lrich/n1;->l:Lrich/h1;

    return-void
.end method


# virtual methods
.method public a(Lrich/l0;)V
    .locals 6

    iget-object v0, p0, Lrich/n1;->l:Lrich/h1;

    .line 1
    iget-object v0, v0, Lrich/h1;->a:Lrich/d1;

    const-string v1, "socketip"

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v1, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    iput-object v3, v0, Lrich/d1;->x:Ljava/lang/String;

    const-string v3, "socket socketip = "

    .line 4
    invoke-static {v3}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v1, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GetPrePhonescripParam"

    invoke-static {v3, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lrich/n1;->m:Z

    const/4 v3, 0x1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const-string v4, "isCloseIpv4"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lrich/b0;->a(Z)[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v5

    if-nez v4, :cond_0

    move-object v4, v2

    .line 7
    :cond_0
    iput-object v4, v0, Lrich/d1;->s:Ljava/lang/String;

    :cond_1
    const-string v4, "isCloseIpv6"

    .line 8
    invoke-virtual {p1, v4, v5}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v1, :cond_2

    invoke-static {v3}, Lrich/b0;->a(Z)[Ljava/lang/String;

    move-result-object v1

    :cond_2
    aget-object v1, v1, v3

    if-nez v1, :cond_3

    move-object v1, v2

    .line 9
    :cond_3
    iput-object v1, v0, Lrich/d1;->t:Ljava/lang/String;

    .line 10
    :cond_4
    iput-boolean v3, p0, Lrich/n1;->m:Z

    :cond_5
    const-string v1, "appkey"

    .line 11
    invoke-virtual {p1, v1, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lrich/j1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move-object v2, p1

    .line 13
    :goto_0
    iput-object v2, v0, Lrich/d1;->p:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lrich/n1;->l:Lrich/h1;

    .line 15
    iput-object v0, p1, Lrich/h1;->a:Lrich/d1;

    .line 16
    iput-boolean v3, p1, Lrich/h1;->f:Z

    .line 17
    invoke-virtual {p1}, Lrich/h1;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrich/o1;->c:Ljava/lang/String;

    return-void
.end method
