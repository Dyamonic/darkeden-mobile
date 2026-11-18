.class public Lrich/w1$a;
.super Lrich/k2$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/w1;->a(Landroid/content/Context;Lrich/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lrich/y1;

.field public final synthetic c:Lrich/l0;


# direct methods
.method public constructor <init>(Lrich/y1;Lrich/l0;)V
    .locals 0

    iput-object p1, p0, Lrich/w1$a;->b:Lrich/y1;

    iput-object p2, p0, Lrich/w1$a;->c:Lrich/l0;

    invoke-direct {p0}, Lrich/k2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Lrich/a2;

    invoke-direct {v0}, Lrich/a2;-><init>()V

    iget-object v1, p0, Lrich/w1$a;->b:Lrich/y1;

    invoke-virtual {v1}, Lrich/y1;->b()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lrich/w1$a;->c:Lrich/l0;

    .line 1
    iput-object v2, v0, Lrich/a2;->a:Lrich/l0;

    .line 2
    invoke-static {}, Lrich/m1;->a()Lrich/m1;

    move-result-object v2

    iget-object v3, v0, Lrich/a2;->a:Lrich/l0;

    new-instance v4, Lrich/z1;

    invoke-direct {v4, v0}, Lrich/z1;-><init>(Lrich/a2;)V

    invoke-virtual {v2, v1, v3, v4}, Lrich/m1;->a(Lorg/json/JSONObject;Lrich/l0;Lrich/p1;)V

    return-void
.end method
