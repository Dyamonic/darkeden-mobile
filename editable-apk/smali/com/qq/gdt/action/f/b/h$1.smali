.class Lcom/qq/gdt/action/f/b/h$1;
.super Lcom/qq/gdt/action/f/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/f/b/h;->a(Lcom/qq/gdt/action/f/b/f;[BII)Lcom/qq/gdt/action/f/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/f/b/f;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f/b/f;I[BI)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/f/b/h$1;->a:Lcom/qq/gdt/action/f/b/f;

    iput p2, p0, Lcom/qq/gdt/action/f/b/h$1;->b:I

    iput-object p3, p0, Lcom/qq/gdt/action/f/b/h$1;->c:[B

    iput p4, p0, Lcom/qq/gdt/action/f/b/h$1;->d:I

    invoke-direct {p0}, Lcom/qq/gdt/action/f/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/f/b/f;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/h$1;->a:Lcom/qq/gdt/action/f/b/f;

    return-object v0
.end method

.method public a(Ljava/io/BufferedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/h$1;->c:[B

    iget v1, p0, Lcom/qq/gdt/action/f/b/h$1;->d:I

    iget v2, p0, Lcom/qq/gdt/action/f/b/h$1;->b:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public b()J
    .locals 2

    iget v0, p0, Lcom/qq/gdt/action/f/b/h$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
