.class public Lrich/t0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrich/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lrich/l0;

.field public final synthetic b:Lrich/t0;


# direct methods
.method public constructor <init>(Lrich/t0;Lrich/l0;)V
    .locals 0

    iput-object p1, p0, Lrich/t0$d;->b:Lrich/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrich/t0$d;->a:Lrich/l0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "200023"

    const-string v1, "\u767b\u5f55\u8d85\u65f6"

    invoke-static {v0, v1}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lrich/t0$d;->b:Lrich/t0;

    const-string v4, "resultCode"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "desc"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lrich/t0$d;->a:Lrich/l0;

    invoke-virtual {v3, v0, v1, v4, v2}, Lrich/t0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    return-void
.end method
