.class public abstract Lcom/qq/gdt/action/f/b/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/qq/gdt/action/f/b/f;[B)Lcom/qq/gdt/action/f/b/h;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/qq/gdt/action/f/b/h;->a(Lcom/qq/gdt/action/f/b/f;[BII)Lcom/qq/gdt/action/f/b/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/qq/gdt/action/f/b/f;[BII)Lcom/qq/gdt/action/f/b/h;
    .locals 7

    const-string v0, "content == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/qq/gdt/action/f/b/k;->a(JJJ)V

    new-instance v0, Lcom/qq/gdt/action/f/b/h$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/qq/gdt/action/f/b/h$1;-><init>(Lcom/qq/gdt/action/f/b/f;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/qq/gdt/action/f/b/f;
.end method

.method public abstract a(Ljava/io/BufferedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method
