.class public Lrich/l1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrich/j1;)Lrich/o1;
    .locals 1

    new-instance v0, Lrich/o1;

    invoke-direct {v0, p1, p4, p3, p2}, Lrich/o1;-><init>(Ljava/lang/String;Lrich/j1;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GET"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, v0, Lrich/o1;->b:Ljava/util/Map;

    const-string p2, "Content-Type"

    const-string p3, "application/x-www-form-urlencoded"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Lrich/o1;Lrich/s1;Lrich/l0;)Lrich/o1;
    .locals 4

    .line 1
    iget-object v0, p2, Lrich/s1;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    iget-object v1, p0, Lrich/l1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "pplocation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lrich/l1;->a:Ljava/lang/String;

    .line 3
    :cond_1
    iget p2, p2, Lrich/s1;->a:I

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lrich/l2;->b(Lrich/l0;Ljava/lang/String;)V

    const-string p2, "Location"

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :cond_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lrich/l1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "operatortype"

    const-string v1, "0"

    invoke-virtual {p3, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "getUnicomMobile"

    :goto_0
    invoke-static {p3, v0}, Lrich/l2;->a(Lrich/l0;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "getTelecomMobile"

    goto :goto_0

    :cond_5
    const-string v0, "NONE"

    goto :goto_0

    :cond_6
    :goto_1
    iget-object p3, p0, Lrich/l1;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lrich/f1;

    .line 5
    iget-object p3, p1, Lrich/o1;->k:Lrich/j1;

    .line 6
    invoke-virtual {p3}, Lrich/j1;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lrich/f1;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lrich/l1;->b:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lrich/o1;->f:Ljava/lang/String;

    const-string v1, "GET"

    .line 8
    invoke-virtual {p0, p3, v0, v1, p2}, Lrich/l1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrich/j1;)Lrich/o1;

    move-result-object p2

    .line 9
    iget-object p1, p1, Lrich/o1;->g:Landroid/net/Network;

    .line 10
    iput-object p1, p2, Lrich/o1;->g:Landroid/net/Network;

    return-object p2
.end method

.method public b(Lrich/o1;Lrich/s1;Lrich/l0;)Lrich/o1;
    .locals 4

    const-string v0, "operatortype"

    const-string v1, "0"

    invoke-virtual {p3, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "getNewUnicomPhoneNumberNotify"

    :goto_0
    invoke-static {p3, v0}, Lrich/l2;->a(Lrich/l0;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getNewTelecomPhoneNumberNotify"

    goto :goto_0

    :cond_1
    const-string v0, "NONE"

    goto :goto_0

    .line 1
    :goto_1
    iget v0, p2, Lrich/s1;->a:I

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lrich/l2;->b(Lrich/l0;Ljava/lang/String;)V

    new-instance v0, Lrich/g1;

    .line 3
    iget-object v1, p1, Lrich/o1;->k:Lrich/j1;

    .line 4
    invoke-virtual {v1}, Lrich/j1;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object p2, p2, Lrich/s1;->c:Ljava/lang/String;

    const-string v2, ""

    if-nez p2, :cond_2

    move-object p2, v2

    :cond_2
    const-string v3, "1.0"

    .line 6
    invoke-direct {v0, v1, v3, p2}, Lrich/g1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "userCapaid"

    .line 7
    invoke-virtual {p3, p2, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    iput-object p2, v0, Lrich/g1;->e:Ljava/lang/String;

    const-string p2, "logintype"

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p3, p2, v1}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    const-string p2, "isRisk"

    .line 10
    invoke-virtual {p3, p2, v1}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "authz"

    goto :goto_3

    :cond_4
    :goto_2
    const-string p2, "pre"

    .line 11
    :goto_3
    iput-object p2, v0, Lrich/g1;->d:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lrich/l1;->a:Ljava/lang/String;

    .line 13
    iget-object p3, p1, Lrich/o1;->f:Ljava/lang/String;

    const-string v1, "POST"

    .line 14
    invoke-virtual {p0, p2, p3, v1, v0}, Lrich/l1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrich/j1;)Lrich/o1;

    move-result-object p2

    .line 15
    iget-object p1, p1, Lrich/o1;->g:Landroid/net/Network;

    .line 16
    iput-object p1, p2, Lrich/o1;->g:Landroid/net/Network;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lrich/l1;->a:Ljava/lang/String;

    return-object p2
.end method
