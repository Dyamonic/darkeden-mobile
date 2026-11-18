.class Lcom/qq/gdt/action/i/c$1;
.super Lcom/qq/gdt/action/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/i/c;->a(Ljava/util/List;Lcom/qq/gdt/action/i/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/qq/gdt/action/i/c$a;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;JLcom/qq/gdt/action/i/c$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/i/c$1;->a:Ljava/util/List;

    iput-wide p2, p0, Lcom/qq/gdt/action/i/c$1;->b:J

    iput-object p4, p0, Lcom/qq/gdt/action/i/c$1;->c:Lcom/qq/gdt/action/i/c$a;

    iput-object p5, p0, Lcom/qq/gdt/action/i/c$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qq/gdt/action/f/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/gdt/action/f/f;)V
    .locals 7

    iget-object v0, p0, Lcom/qq/gdt/action/i/c$1;->a:Ljava/util/List;

    iget-wide v1, p0, Lcom/qq/gdt/action/i/c$1;->b:J

    invoke-virtual {p2}, Lcom/qq/gdt/action/f/f;->a()I

    move-result v4

    invoke-virtual {p2}, Lcom/qq/gdt/action/f/f;->b()Ljava/lang/String;

    move-result-object v5

    const-string v3, "https://api.datanexus.qq.com/data-nexus-cgi/sdk"

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/qq/gdt/action/i/c;->a(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;I)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/qq/gdt/action/f/f;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/qq/gdt/action/i/c$1;->c:Lcom/qq/gdt/action/i/c$a;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/qq/gdt/action/i/c$1;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/qq/gdt/action/i/c$1;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/qq/gdt/action/i/c$a;->a(Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/i/c$1;->c:Lcom/qq/gdt/action/i/c$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qq/gdt/action/i/c$1;->a:Ljava/util/List;

    invoke-virtual {p2}, Lcom/qq/gdt/action/f/f;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/qq/gdt/action/f/f;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/qq/gdt/action/i/c$a;->a(Ljava/util/List;ILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/qq/gdt/action/f/f;

    invoke-virtual {p0, p1, p2}, Lcom/qq/gdt/action/i/c$1;->a(ILcom/qq/gdt/action/f/f;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.net.SocketTimeoutException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, -0x9

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.ConnectException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, -0x4

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.ProtocolException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, -0x5

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownServiceException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, -0x6

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "body null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, -0x7

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unexpected end of stream on com.android.okhttp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, -0x8

    goto :goto_1

    :cond_6
    move v0, v1

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/qq/gdt/action/i/c$1;->a:Ljava/util/List;

    iget-wide v3, p0, Lcom/qq/gdt/action/i/c$1;->b:J

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const-string v5, "https://api.datanexus.qq.com/data-nexus-cgi/sdk"

    move v6, v0

    invoke-static/range {v2 .. v8}, Lcom/qq/gdt/action/i/c;->a(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;I)V

    iget-object v2, p0, Lcom/qq/gdt/action/i/c$1;->c:Lcom/qq/gdt/action/i/c$a;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/qq/gdt/action/i/c$1;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, v0, p1, v1}, Lcom/qq/gdt/action/i/c$a;->a(Ljava/util/List;ILjava/lang/String;I)V

    :cond_8
    return-void
.end method
