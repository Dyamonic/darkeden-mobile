.class public Lcom/qq/gdt/action/multioprocess/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lcom/qq/gdt/action/ChannelType;

.field h:Lcom/qq/gdt/action/ChannelType;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/qq/gdt/action/multioprocess/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/ChannelType;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->h:Lcom/qq/gdt/action/ChannelType;

    return-object p0
.end method

.method public a(Lcom/qq/gdt/action/multioprocess/b/a;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->l:Lcom/qq/gdt/action/multioprocess/b/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->h:Lcom/qq/gdt/action/ChannelType;

    if-eqz v1, :cond_0

    const-string v2, "ipcChannelType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->g:Lcom/qq/gdt/action/ChannelType;

    if-eqz v1, :cond_1

    const-string v2, "ipcChannelTypeByRemote"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->a:Ljava/lang/String;

    const-string v2, "ipcUserActionSetId"

    invoke-direct {p0, v0, v2, v1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->b:Ljava/lang/String;

    const-string v2, "ipcAppSecretKey"

    invoke-direct {p0, v0, v2, v1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->c:Ljava/lang/String;

    const-string v2, "ipcChannelId"

    invoke-direct {p0, v0, v2, v1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->d:Ljava/lang/String;

    const-string v2, "ipcUserActionSetIdByRemote"

    invoke-direct {p0, v0, v2, v1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->e:Ljava/lang/String;

    const-string v2, "ipcAppSecretKeyByRemote"

    invoke-direct {p0, v0, v2, v1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->f:Ljava/lang/String;

    const-string v2, "ipcChannelIdByRemote"

    invoke-direct {p0, v0, v2, v1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->k:Ljava/lang/String;

    const-string v2, "ipcUserUniqueId"

    invoke-direct {p0, v0, v2, v1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->j:Ljava/lang/String;

    const-string v2, "ipcPrivacyStatus"

    invoke-direct {p0, v0, v2, v1}, Lcom/qq/gdt/action/multioprocess/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Lcom/qq/gdt/action/ChannelType;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->g:Lcom/qq/gdt/action/ChannelType;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/qq/gdt/action/ChannelType;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->h:Lcom/qq/gdt/action/ChannelType;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()Lcom/qq/gdt/action/ChannelType;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->g:Lcom/qq/gdt/action/ChannelType;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/qq/gdt/action/multioprocess/b/a;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->l:Lcom/qq/gdt/action/multioprocess/b/a;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteChannelIds = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/qq/gdt/action/multioprocess/b;->f:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRemoteChannelIds each = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    const-string v2, "getRemoteChannelIds ipcChannelIdByRemote e "

    invoke-static {v2, v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\"ipcUserActionSetId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcAppSecretKey\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcChannelId\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcUserActionSetIdByRemote\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcAppSecretKeyByRemote\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcChannelIdByRemote\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcChannelTypeByRemote\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->g:Lcom/qq/gdt/action/ChannelType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcChannelType\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->h:Lcom/qq/gdt/action/ChannelType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",\"fromByRemote\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcPrivacyStatus\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"ipcUserUniqueId\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ",\"deviceInfo\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b;->l:Lcom/qq/gdt/action/multioprocess/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
