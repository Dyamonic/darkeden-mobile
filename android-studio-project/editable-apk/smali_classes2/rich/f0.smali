.class public abstract Lrich/f0;
.super Lrich/o;
.source ""


# static fields
.field public static final q:Ljava/lang/String;


# instance fields
.field public o:Lrich/q$b;

.field public final p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrich/f0;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lrich/q$b;Lrich/q$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lrich/o;-><init>(ILjava/lang/String;Lrich/q$a;)V

    iput-object p4, p0, Lrich/f0;->o:Lrich/q$b;

    iput-object p3, p0, Lrich/f0;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 5

    const-string v0, "utf-8"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lrich/f0;->p:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lrich/f0;->p:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    .line 1
    invoke-static {v0, v2}, Lrich/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Volley"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public d()[B
    .locals 1

    invoke-virtual {p0}, Lrich/f0;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lrich/f0;->q:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 1

    invoke-super {p0}, Lrich/o;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lrich/f0;->o:Lrich/q$b;

    return-void
.end method
