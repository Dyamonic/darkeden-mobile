.class public Lrich/p3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q$a;


# instance fields
.field public final synthetic a:Lcom/rich/oauth/callback/InitResultCallback;


# direct methods
.method public constructor <init>(Lrich/q3;Lcom/rich/oauth/callback/InitResultCallback;)V
    .locals 0

    iput-object p2, p0, Lrich/p3;->a:Lcom/rich/oauth/callback/InitResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrich/u;)V
    .locals 5

    iget-object v0, p1, Lrich/u;->a:Lrich/k;

    if-nez v0, :cond_0

    iget-object p1, p0, Lrich/p3;->a:Lcom/rich/oauth/callback/InitResultCallback;

    const v0, 0x13c72

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {v0, v1}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rich/oauth/callback/InitResultCallback;->initFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lrich/p3;->a:Lcom/rich/oauth/callback/InitResultCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u59cb\u5316\u63a5\u53e3\u5931\u8d25\uff1a"

    invoke-static {v3}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0xc354

    invoke-static {v4, v3}, Lcom/rich/oauth/util/JsonBuildUtil;->getJsonString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lrich/k;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/rich/oauth/callback/InitResultCallback;->initFailure(Ljava/lang/String;)V

    return-void
.end method
