.class public Lrich/y$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrich/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lrich/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrich/y$b;->b:Ljava/lang/String;

    iget-object p1, p2, Lrich/c$a;->a:[B

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lrich/y$b;->a:J

    iget-object p1, p2, Lrich/c$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lrich/y$b;->c:Ljava/lang/String;

    iget-wide v0, p2, Lrich/c$a;->c:J

    iput-wide v0, p0, Lrich/y$b;->d:J

    iget-wide v0, p2, Lrich/c$a;->d:J

    iput-wide v0, p0, Lrich/y$b;->e:J

    iget-wide v0, p2, Lrich/c$a;->e:J

    iput-wide v0, p0, Lrich/y$b;->f:J

    iget-wide v0, p2, Lrich/c$a;->f:J

    iput-wide v0, p0, Lrich/y$b;->g:J

    iget-object p1, p2, Lrich/c$a;->g:Ljava/util/Map;

    iput-object p1, p0, Lrich/y$b;->h:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lrich/y$b;
    .locals 6

    new-instance v0, Lrich/y$b;

    invoke-direct {v0}, Lrich/y$b;-><init>()V

    invoke-static {p0}, Lrich/y;->a(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20150306

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lrich/y;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lrich/y$b;->b:Ljava/lang/String;

    invoke-static {p0}, Lrich/y;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lrich/y$b;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lrich/y$b;->c:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lrich/y;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lrich/y$b;->d:J

    invoke-static {p0}, Lrich/y;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lrich/y$b;->e:J

    invoke-static {p0}, Lrich/y;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lrich/y$b;->f:J

    invoke-static {p0}, Lrich/y;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lrich/y$b;->g:J

    .line 1
    invoke-static {p0}, Lrich/y;->a(Ljava/io/InputStream;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-static {p0}, Lrich/y;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lrich/y;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2
    :cond_2
    iput-object v2, v0, Lrich/y$b;->h:Ljava/util/Map;

    return-object v0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a([B)Lrich/c$a;
    .locals 3

    new-instance v0, Lrich/c$a;

    invoke-direct {v0}, Lrich/c$a;-><init>()V

    iput-object p1, v0, Lrich/c$a;->a:[B

    iget-object p1, p0, Lrich/y$b;->c:Ljava/lang/String;

    iput-object p1, v0, Lrich/c$a;->b:Ljava/lang/String;

    iget-wide v1, p0, Lrich/y$b;->d:J

    iput-wide v1, v0, Lrich/c$a;->c:J

    iget-wide v1, p0, Lrich/y$b;->e:J

    iput-wide v1, v0, Lrich/c$a;->d:J

    iget-wide v1, p0, Lrich/y$b;->f:J

    iput-wide v1, v0, Lrich/c$a;->e:J

    iget-wide v1, p0, Lrich/y$b;->g:J

    iput-wide v1, v0, Lrich/c$a;->f:J

    iget-object p1, p0, Lrich/y$b;->h:Ljava/util/Map;

    iput-object p1, v0, Lrich/c$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 5

    const v0, 0x20150306

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lrich/y;->a(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lrich/y$b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lrich/y;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lrich/y$b;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :try_start_1
    invoke-static {p1, v0}, Lrich/y;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lrich/y$b;->d:J

    invoke-static {p1, v3, v4}, Lrich/y;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lrich/y$b;->e:J

    invoke-static {p1, v3, v4}, Lrich/y;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lrich/y$b;->f:J

    invoke-static {p1, v3, v4}, Lrich/y;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lrich/y$b;->g:J

    invoke-static {p1, v3, v4}, Lrich/y;->a(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lrich/y$b;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {p1, v3}, Lrich/y;->a(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lrich/y;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lrich/y;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v2}, Lrich/y;->a(Ljava/io/OutputStream;I)V

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s"

    invoke-static {p1, v0}, Lrich/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
