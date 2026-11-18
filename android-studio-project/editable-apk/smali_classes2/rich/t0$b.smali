.class public Lrich/t0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/t0;->a(Lrich/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/t0$d;

.field public final synthetic b:Lrich/t0;


# direct methods
.method public constructor <init>(Lrich/t0;Lrich/t0$d;)V
    .locals 0

    iput-object p1, p0, Lrich/t0$b;->b:Lrich/t0;

    iput-object p2, p0, Lrich/t0$b;->a:Lrich/t0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lrich/t0$b;->b:Lrich/t0;

    iget-object v0, v0, Lrich/t0;->d:Landroid/os/Handler;

    iget-object v1, p0, Lrich/t0$b;->a:Lrich/t0$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lrich/t0$b;->b:Lrich/t0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrich/t0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    return-void
.end method
