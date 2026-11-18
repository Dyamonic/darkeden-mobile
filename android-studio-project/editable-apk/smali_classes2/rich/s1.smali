.class public Lrich/s1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:Ljava/util/Map;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrich/s1;->a:I

    iput-object p2, p0, Lrich/s1;->b:Ljava/util/Map;

    iput-object p3, p0, Lrich/s1;->c:Ljava/lang/String;

    return-void
.end method
