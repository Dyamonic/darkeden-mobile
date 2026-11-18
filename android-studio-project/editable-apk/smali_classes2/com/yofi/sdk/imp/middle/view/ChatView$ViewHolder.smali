.class Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;
.super Ljava/lang/Object;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field ivContentEnd:Landroid/widget/ImageView;

.field ivMsgFailed:Landroid/widget/ImageView;

.field ivReceive:Landroid/widget/ImageView;

.field ivSend:Landroid/widget/ImageView;

.field tvReceive:Landroid/widget/TextView;

.field tvReceiveTime:Landroid/widget/TextView;

.field tvSend:Landroid/widget/TextView;

.field tvSendTime:Landroid/widget/TextView;

.field tvServerRole:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView$1;)V
    .locals 0

    .line 942
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;-><init>()V

    return-void
.end method
