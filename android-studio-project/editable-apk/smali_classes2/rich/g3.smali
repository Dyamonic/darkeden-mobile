.class public Lrich/g3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rich/oauth/callback/TokenResultCallback;


# instance fields
.field public final synthetic a:Lcom/rich/oauth/core/RichAuth;


# direct methods
.method public constructor <init>(Lcom/rich/oauth/core/RichAuth;)V
    .locals 0

    iput-object p1, p0, Lrich/g3;->a:Lcom/rich/oauth/core/RichAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTokenFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lrich/g3;->a:Lcom/rich/oauth/core/RichAuth;

    .line 1
    iget-object v0, v0, Lcom/rich/oauth/core/RichAuth;->h:Lcom/rich/oauth/callback/TokenCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/TokenCallback;->onTokenFailureResult(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lrich/g3;->a:Lcom/rich/oauth/core/RichAuth;

    .line 3
    iget-object p1, p1, Lcom/rich/oauth/core/RichAuth;->o:Lcom/rich/oauth/core/UIConfigBuild;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->isAutoClosAuthPage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrich/g3;->a:Lcom/rich/oauth/core/RichAuth;

    invoke-virtual {p1}, Lcom/rich/oauth/core/RichAuth;->closeOauthPage()V

    :cond_1
    return-void
.end method

.method public getTokenSuccess(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lrich/g3;->a:Lcom/rich/oauth/core/RichAuth;

    .line 1
    iget-object v1, v0, Lcom/rich/oauth/core/RichAuth;->h:Lcom/rich/oauth/callback/TokenCallback;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    iget-object v3, v0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "telecom"

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "mobile"

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/rich/oauth/core/RichAuth;->n:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unicom"

    goto :goto_0

    :cond_2
    const-string v0, "unknown"

    .line 3
    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/rich/oauth/callback/TokenCallback;->onTokenSuccessResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lrich/g3;->a:Lcom/rich/oauth/core/RichAuth;

    .line 4
    iget-object p1, p1, Lcom/rich/oauth/core/RichAuth;->o:Lcom/rich/oauth/core/UIConfigBuild;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->isAutoClosAuthPage()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lrich/g3;->a:Lcom/rich/oauth/core/RichAuth;

    invoke-virtual {p1}, Lcom/rich/oauth/core/RichAuth;->closeOauthPage()V

    :cond_4
    return-void
.end method
