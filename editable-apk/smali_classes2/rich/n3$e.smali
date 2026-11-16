.class public Lrich/n3$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/r2;


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

    iput-object p1, p0, Lrich/n3$e;->a:Lrich/n3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iget-object p1, p0, Lrich/n3$e;->a:Lrich/n3;

    .line 1
    iget-object p1, p1, Lrich/n3;->c:Lcom/rich/oauth/core/UIConfigBuild;

    .line 2
    invoke-virtual {p1}, Lcom/rich/oauth/core/UIConfigBuild;->getCheckedChangeListener()V

    return-void
.end method
