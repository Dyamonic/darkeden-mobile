.class public Lrich/c3;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lrich/c3;->a:Landroid/content/Context;

    iput-object p2, p0, Lrich/c3;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lrich/c3;->b:Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrich/c3;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrich/x2;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lrich/c3;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrich/x2;

    invoke-virtual {p1}, Lrich/x2;->show()V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :try_start_0
    iget-object v0, p0, Lrich/c3;->a:Landroid/content/Context;

    invoke-static {v0}, Lrich/p0;->b(Landroid/content/Context;)Lrich/p0;

    move-result-object v0

    invoke-virtual {v0}, Lrich/p0;->c()Lrich/o2;

    move-result-object v0

    .line 1
    iget v0, v0, Lrich/o2;->e0:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, -0xf441fa

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    return-void
.end method
