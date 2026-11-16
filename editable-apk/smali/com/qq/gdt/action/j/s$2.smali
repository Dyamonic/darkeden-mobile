.class Lcom/qq/gdt/action/j/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/j/s;->a(Lcom/qq/gdt/action/multioprocess/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/multioprocess/c;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/multioprocess/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/j/s$2;->a:Lcom/qq/gdt/action/multioprocess/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qq/gdt/action/j/s$2;->a:Lcom/qq/gdt/action/multioprocess/c;

    invoke-static {}, Lcom/qq/gdt/action/j/s;->a()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qq/gdt/action/multioprocess/c;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    return-void
.end method
