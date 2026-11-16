.class Lcom/juhe/juhesdk/middle/view/CheckUpdateView$3;
.super Ljava/lang/Object;
.source "CheckUpdateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/view/CheckUpdateView;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/view/CheckUpdateView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$3;->this$0:Lcom/juhe/juhesdk/middle/view/CheckUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 104
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$3;->this$0:Lcom/juhe/juhesdk/middle/view/CheckUpdateView;

    invoke-static {p1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->access$100(Lcom/juhe/juhesdk/middle/view/CheckUpdateView;)V

    return-void
.end method
