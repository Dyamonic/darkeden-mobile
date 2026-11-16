.class public Lcom/qq/gdt/action/g/e;
.super Ljava/lang/Object;


# static fields
.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->z()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/qq/gdt/action/g/e;->a:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/qq/gdt/action/g/b;->a()Lcom/qq/gdt/action/g/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/g/b;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/qq/gdt/action/g/e;->a:Z

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->z()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/qq/gdt/action/g/b;->a()Lcom/qq/gdt/action/g/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/g/b;->b()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/qq/gdt/action/g/e;->a:Z

    return-void
.end method
