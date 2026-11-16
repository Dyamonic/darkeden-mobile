.class public Lrich/t0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/t0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/q0;

.field public final synthetic b:I

.field public final synthetic c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lrich/t0;Lrich/q0;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p2, p0, Lrich/t0$c;->a:Lrich/q0;

    iput p3, p0, Lrich/t0$c;->b:I

    iput-object p4, p0, Lrich/t0$c;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lrich/t0$c;->a:Lrich/q0;

    iget v1, p0, Lrich/t0$c;->b:I

    iget-object v2, p0, Lrich/t0$c;->c:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lrich/q0;->a(ILorg/json/JSONObject;)V

    return-void
.end method
