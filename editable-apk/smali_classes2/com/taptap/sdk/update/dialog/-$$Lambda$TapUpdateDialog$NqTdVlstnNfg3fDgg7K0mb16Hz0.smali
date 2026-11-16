.class public final synthetic Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View$OnClickListener;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;ZLcom/taptap/sdk/update/dialog/TapUpdateDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;->f$0:Landroid/view/View$OnClickListener;

    iput-boolean p2, p0, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;->f$1:Z

    iput-object p3, p0, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;->f$2:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;->f$0:Landroid/view/View$OnClickListener;

    iget-boolean v1, p0, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;->f$1:Z

    iget-object v2, p0, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;->f$2:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->lambda$NqTdVlstnNfg3fDgg7K0mb16Hz0(Landroid/view/View$OnClickListener;ZLcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V

    return-void
.end method
