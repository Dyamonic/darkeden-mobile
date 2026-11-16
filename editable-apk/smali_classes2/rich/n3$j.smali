.class public Lrich/n3$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/q2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/n3;->a(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;Lcom/rich/oauth/core/UIConfigBuild;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/n3;


# direct methods
.method public constructor <init>(Lrich/n3;)V
    .locals 0

    iput-object p1, p0, Lrich/n3$j;->a:Lrich/n3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lrich/n3$j;->a:Lrich/n3;

    .line 1
    iget-object v0, v0, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 2
    invoke-virtual {v0}, Lcom/rich/oauth/core/UIConfigBuild;->getCheckboxUnCheckedClickListener()Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrich/n3$j;->a:Lrich/n3;

    .line 3
    iget-object v0, v0, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 4
    invoke-virtual {v0}, Lcom/rich/oauth/core/UIConfigBuild;->getCheckboxUnCheckedClickListener()Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;->onCheckboxChecked(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
