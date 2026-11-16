.class public Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;
.super Ljava/lang/Object;
.source "AbstractAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field listener:Landroid/view/View$OnClickListener;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;->text:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method
