.class public Lrich/e3;
.super Lrich/e0;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lrich/q$b;Lrich/q$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lrich/e0;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lrich/q$b;Lrich/q$a;)V

    return-void
.end method


# virtual methods
.method public a(Lrich/k;)Lrich/q;
    .locals 0

    invoke-super {p0, p1}, Lrich/e0;->a(Lrich/k;)Lrich/q;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
