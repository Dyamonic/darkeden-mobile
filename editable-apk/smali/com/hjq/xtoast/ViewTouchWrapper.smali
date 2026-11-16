.class final Lcom/hjq/xtoast/ViewTouchWrapper;
.super Ljava/lang/Object;
.source "ViewTouchWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mListener:Lcom/hjq/xtoast/OnTouchListener;

.field private final mToast:Lcom/hjq/xtoast/XToast;


# direct methods
.method constructor <init>(Lcom/hjq/xtoast/XToast;Landroid/view/View;Lcom/hjq/xtoast/OnTouchListener;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/hjq/xtoast/ViewTouchWrapper;->mToast:Lcom/hjq/xtoast/XToast;

    .line 20
    iput-object p3, p0, Lcom/hjq/xtoast/ViewTouchWrapper;->mListener:Lcom/hjq/xtoast/OnTouchListener;

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 25
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/hjq/xtoast/ViewTouchWrapper;->mListener:Lcom/hjq/xtoast/OnTouchListener;

    iget-object v1, p0, Lcom/hjq/xtoast/ViewTouchWrapper;->mToast:Lcom/hjq/xtoast/XToast;

    invoke-interface {v0, v1, p1, p2}, Lcom/hjq/xtoast/OnTouchListener;->onTouch(Lcom/hjq/xtoast/XToast;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
