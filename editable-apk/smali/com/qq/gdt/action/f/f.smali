.class public Lcom/qq/gdt/action/f/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/qq/gdt/action/f/f;->a:I

    const-string v0, "Unknown message"

    iput-object v0, p0, Lcom/qq/gdt/action/f/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qq/gdt/action/f/f;->a:I

    iput-object p2, p0, Lcom/qq/gdt/action/f/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/f/f;->a:I

    return v0
.end method

.method public a(I)Lcom/qq/gdt/action/f/f;
    .locals 0

    iput p1, p0, Lcom/qq/gdt/action/f/f;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/qq/gdt/action/f/f;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/f/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/f;->b:Ljava/lang/String;

    return-object v0
.end method
