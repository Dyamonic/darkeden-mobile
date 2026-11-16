.class Lcom/qq/gdt/action/g/a$1;
.super Lcom/qq/gdt/action/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/g/a;->a(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/qq/gdt/action/g/a;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/g/a;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/g/a$1;->c:Lcom/qq/gdt/action/g/a;

    iput p2, p0, Lcom/qq/gdt/action/g/a$1;->a:I

    iput-object p3, p0, Lcom/qq/gdt/action/g/a$1;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/qq/gdt/action/f/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/gdt/action/f/a;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dp3Service onSuccess statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qq/gdt/action/g/a$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dp3Response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/qq/gdt/action/f/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/qq/gdt/action/g/a$1;->c:Lcom/qq/gdt/action/g/a;

    iget-object p2, p0, Lcom/qq/gdt/action/g/a$1;->b:Ljava/util/List;

    iget v0, p0, Lcom/qq/gdt/action/g/a$1;->a:I

    invoke-static {p1, p2, v0}, Lcom/qq/gdt/action/g/a;->a(Lcom/qq/gdt/action/g/a;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/qq/gdt/action/g/a$1;->c:Lcom/qq/gdt/action/g/a;

    iget-object v2, p0, Lcom/qq/gdt/action/g/a$1;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/qq/gdt/action/f/a;->a()I

    move-result v3

    invoke-virtual {p2}, Lcom/qq/gdt/action/f/a;->b()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/qq/gdt/action/g/a$1;->a:I

    move v5, p1

    invoke-static/range {v1 .. v6}, Lcom/qq/gdt/action/g/a;->a(Lcom/qq/gdt/action/g/a;Ljava/util/List;ILjava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/qq/gdt/action/f/a;

    invoke-virtual {p0, p1, p2}, Lcom/qq/gdt/action/g/a$1;->a(ILcom/qq/gdt/action/f/a;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dp3Service onFail:"

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

    const/4 v1, -0x2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.net.UnknownHostException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, -0x9

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.net.ConnectException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, -0x4

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.net.ProtocolException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, -0x5

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.net.UnknownServiceException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, -0x6

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "body null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x7

    move v1, v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unexpected end of stream on com.android.okhttp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x8

    :cond_6
    move v4, v1

    iget-object v2, p0, Lcom/qq/gdt/action/g/a$1;->c:Lcom/qq/gdt/action/g/a;

    iget-object v3, p0, Lcom/qq/gdt/action/g/a$1;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    iget v7, p0, Lcom/qq/gdt/action/g/a$1;->a:I

    invoke-static/range {v2 .. v7}, Lcom/qq/gdt/action/g/a;->a(Lcom/qq/gdt/action/g/a;Ljava/util/List;ILjava/lang/String;II)V

    return-void
.end method
