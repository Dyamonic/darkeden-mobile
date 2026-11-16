.class Lcom/juhe/juhesdk/middle/view/CheckUpdateView$4;
.super Ljava/lang/Object;
.source "CheckUpdateView.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->hideBottomUIMenu()V
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

    .line 136
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$4;->this$0:Lcom/juhe/juhesdk/middle/view/CheckUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    const-string p1, "CheckUpdateView"

    const-string v0, "onSystemUiVisibilityChange: "

    .line 139
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/CheckUpdateView$4;->this$0:Lcom/juhe/juhesdk/middle/view/CheckUpdateView;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/view/CheckUpdateView;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
