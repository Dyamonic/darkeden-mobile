.class Lcom/qq/gdt/action/GDTInitProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/multioprocess/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/GDTInitProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/qq/gdt/action/GDTInitProvider;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/GDTInitProvider;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/GDTInitProvider$1;->b:Lcom/qq/gdt/action/GDTInitProvider;

    iput-object p2, p0, Lcom/qq/gdt/action/GDTInitProvider$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/multioprocess/b;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp save file not null, memory update getUserMessage =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v0

    iput-object p1, v0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    iget-object v0, p0, Lcom/qq/gdt/action/GDTInitProvider$1;->a:Landroid/os/Bundle;

    const-string v1, "result_user_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v0, 0xd4b

    invoke-static {v0, p1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "save file not null, getUserMessage null"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xd4c

    invoke-static {p1}, Lcom/qq/gdt/action/h/a;->a(I)V

    :goto_0
    return-void
.end method
