.class public Lrich/n3$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/t2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/n3;->a(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;Lcom/rich/oauth/core/UIConfigBuild;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/n3;


# direct methods
.method public constructor <init>(Lrich/n3;)V
    .locals 0

    iput-object p1, p0, Lrich/n3$d;->a:Lrich/n3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "200087"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrich/n3$d;->a:Lrich/n3;

    .line 1
    iget-object p1, p1, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 2
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->getmAuthPageInListener()Lcom/rich/oauth/callback/AuthPageInListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrich/n3$d;->a:Lrich/n3;

    .line 3
    iget-object p1, p1, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 4
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->getmAuthPageInListener()Lcom/rich/oauth/callback/AuthPageInListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/AuthPageInListener;->onAuthPageInSuccess(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lrich/n3$d;->a:Lrich/n3;

    .line 5
    iget-object p1, p1, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 6
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->getmAuthPageInListener()Lcom/rich/oauth/callback/AuthPageInListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrich/n3$d;->a:Lrich/n3;

    .line 7
    iget-object p1, p1, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 8
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->getmAuthPageInListener()Lcom/rich/oauth/callback/AuthPageInListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/rich/oauth/callback/AuthPageInListener;->onAuthPageInFailure(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method
