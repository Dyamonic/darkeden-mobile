.class public final Lcom/qq/gdt/action/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/a/a$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/qq/gdt/action/a/a$a;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/a/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/qq/gdt/action/a/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qq/gdt/action/a/a$a;->b:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/a/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qq/gdt/action/a/a$a;->b:Z

    return v0
.end method
