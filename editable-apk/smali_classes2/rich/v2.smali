.class public Lrich/v2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lrich/x2;


# direct methods
.method public constructor <init>(Lrich/x2;)V
    .locals 0

    iput-object p1, p0, Lrich/v2;->a:Lrich/x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lrich/v2;->a:Lrich/x2;

    .line 1
    iget-object p1, p1, Lrich/x2;->a:Landroid/webkit/WebView;

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object p1, p0, Lrich/v2;->a:Lrich/x2;

    invoke-virtual {p1}, Lrich/x2;->a()V

    return-void
.end method
