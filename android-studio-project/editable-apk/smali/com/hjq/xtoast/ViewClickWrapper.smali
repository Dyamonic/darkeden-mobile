.class final Lcom/hjq/xtoast/ViewClickWrapper;
.super Ljava/lang/Object;
.source "ViewClickWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mListener:Lcom/hjq/xtoast/OnClickListener;

.field private final mToast:Lcom/hjq/xtoast/XToast;


# direct methods
.method constructor <init>(Lcom/hjq/xtoast/XToast;Landroid/view/View;Lcom/hjq/xtoast/OnClickListener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/hjq/xtoast/ViewClickWrapper;->mToast:Lcom/hjq/xtoast/XToast;

    .line 18
    iput-object p3, p0, Lcom/hjq/xtoast/ViewClickWrapper;->mListener:Lcom/hjq/xtoast/OnClickListener;

    .line 20
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/hjq/xtoast/ViewClickWrapper;->mListener:Lcom/hjq/xtoast/OnClickListener;

    iget-object v1, p0, Lcom/hjq/xtoast/ViewClickWrapper;->mToast:Lcom/hjq/xtoast/XToast;

    invoke-interface {v0, v1, p1}, Lcom/hjq/xtoast/OnClickListener;->onClick(Lcom/hjq/xtoast/XToast;Landroid/view/View;)V

    return-void
.end method
