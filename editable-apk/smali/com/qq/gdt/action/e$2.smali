.class Lcom/qq/gdt/action/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/qq/gdt/action/GDTAction$a;

.field final synthetic c:Lcom/qq/gdt/action/e;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/e;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/e$2;->c:Lcom/qq/gdt/action/e;

    iput-object p2, p0, Lcom/qq/gdt/action/e$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/qq/gdt/action/e$2;->b:Lcom/qq/gdt/action/GDTAction$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/j/e;->a()V

    iget-object v0, p0, Lcom/qq/gdt/action/e$2;->c:Lcom/qq/gdt/action/e;

    iget-object v1, p0, Lcom/qq/gdt/action/e$2;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/qq/gdt/action/j/a;->a(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/e;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aesKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/e$2;->c:Lcom/qq/gdt/action/e;

    invoke-static {v1}, Lcom/qq/gdt/action/e;->c(Lcom/qq/gdt/action/e;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/j/u;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/qq/gdt/action/i/b;->a()Lcom/qq/gdt/action/f/f;

    iget-object v0, p0, Lcom/qq/gdt/action/e$2;->c:Lcom/qq/gdt/action/e;

    invoke-static {v0}, Lcom/qq/gdt/action/e;->d(Lcom/qq/gdt/action/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    iget-object v0, p0, Lcom/qq/gdt/action/e$2;->c:Lcom/qq/gdt/action/e;

    iget-object v1, p0, Lcom/qq/gdt/action/e$2;->b:Lcom/qq/gdt/action/GDTAction$a;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/e;Lcom/qq/gdt/action/GDTAction$a;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cErrorCode:01\uff0c\u8bf7\u8054\u7cfb\u5e7f\u70b9\u901a\u8fd0\u8425"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/e$2;->c:Lcom/qq/gdt/action/e;

    iget-object v3, p0, Lcom/qq/gdt/action/e$2;->b:Lcom/qq/gdt/action/GDTAction$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/e;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    return-void
.end method
