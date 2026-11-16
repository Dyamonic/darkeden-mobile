.class public Lrich/r0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/p1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/r0;->b(Lrich/l0;Lrich/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/l0;

.field public final synthetic b:Lrich/s0;

.field public final synthetic c:Lrich/r0;


# direct methods
.method public constructor <init>(Lrich/r0;Lrich/l0;Lrich/s0;)V
    .locals 0

    iput-object p1, p0, Lrich/r0$a;->c:Lrich/r0;

    iput-object p2, p0, Lrich/r0$a;->a:Lrich/l0;

    iput-object p3, p0, Lrich/r0$a;->b:Lrich/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    iget-object v0, p0, Lrich/r0$a;->c:Lrich/r0;

    iget-object v1, p0, Lrich/r0$a;->a:Lrich/l0;

    iget-object v2, p0, Lrich/r0$a;->b:Lrich/s0;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lrich/r0;->a(Lrich/l0;Lrich/s0;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
