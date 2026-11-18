.class public Lcom/rich/oauth/core/RichAuth$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rich/oauth/callback/InitResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/oauth/core/RichAuth;->a(Lcom/rich/oauth/callback/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/InitCallback;

.field public final synthetic b:Lcom/rich/oauth/core/RichAuth;


# direct methods
.method public constructor <init>(Lcom/rich/oauth/core/RichAuth;Lcom/rich/oauth/callback/InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/oauth/core/RichAuth$a;->b:Lcom/rich/oauth/core/RichAuth;

    iput-object p2, p0, Lcom/rich/oauth/core/RichAuth$a;->a:Lcom/rich/oauth/callback/InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailure(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth$a;->b:Lcom/rich/oauth/core/RichAuth;

    const/4 v1, -0x1

    .line 1
    iput v1, v0, Lcom/rich/oauth/core/RichAuth;->a:I

    .line 2
    iput-object p1, v0, Lcom/rich/oauth/core/RichAuth;->k:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/rich/oauth/core/RichAuth;->a(Lcom/rich/oauth/core/RichAuth;Z)Z

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth$a;->a:Lcom/rich/oauth/callback/InitCallback;

    invoke-interface {v0, p1}, Lcom/rich/oauth/callback/InitCallback;->onInitFailure(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFailure(String msg)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RichAuth"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initResultSuccess(Lrich/f3;)V
    .locals 3

    iget-object v0, p0, Lcom/rich/oauth/core/RichAuth$a;->b:Lcom/rich/oauth/core/RichAuth;

    .line 1
    iput-object p1, v0, Lcom/rich/oauth/core/RichAuth;->d:Lrich/f3;

    const/4 p1, 0x0

    .line 2
    iput p1, v0, Lcom/rich/oauth/core/RichAuth;->a:I

    .line 3
    invoke-static {v0, p1}, Lcom/rich/oauth/core/RichAuth;->a(Lcom/rich/oauth/core/RichAuth;Z)Z

    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth$a;->b:Lcom/rich/oauth/core/RichAuth;

    .line 4
    iget-object v0, p1, Lcom/rich/oauth/core/RichAuth;->d:Lrich/f3;

    .line 5
    iget-object v0, v0, Lrich/f3;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrich/f3$a;

    .line 7
    iget v1, v0, Lrich/f3$a;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 8
    iget-object v1, p0, Lcom/rich/oauth/core/RichAuth$a;->b:Lcom/rich/oauth/core/RichAuth;

    .line 9
    iput-object v0, v1, Lcom/rich/oauth/core/RichAuth;->e:Lrich/f3$a;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth$a;->a:Lcom/rich/oauth/callback/InitCallback;

    invoke-interface {p1}, Lcom/rich/oauth/callback/InitCallback;->onInitSuccess()V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 11
    iput v0, p1, Lcom/rich/oauth/core/RichAuth;->a:I

    .line 12
    iget-object p1, p0, Lcom/rich/oauth/core/RichAuth$a;->a:Lcom/rich/oauth/callback/InitCallback;

    const-string v0, "\u5e73\u53f0\u521d\u59cb\u5316\u5931\u8d25\uff0cinitbean\u4e3a\u7a7a"

    invoke-interface {p1, v0}, Lcom/rich/oauth/callback/InitCallback;->onInitFailure(Ljava/lang/String;)V

    const-string p1, "RichAuth"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
