.class final Lorg/joor/Compile$ClassFileManager;
.super Ljavax/tools/ForwardingJavaFileManager;
.source "Compile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joor/Compile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClassFileManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/tools/ForwardingJavaFileManager<",
        "Ljavax/tools/StandardJavaFileManager;",
        ">;"
    }
.end annotation


# instance fields
.field private classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final fileObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joor/Compile$JavaFileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/tools/StandardJavaFileManager;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Ljavax/tools/ForwardingJavaFileManager;-><init>(Ljavax/tools/JavaFileManager;)V

    .line 214
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/joor/Compile$ClassFileManager;->fileObjectMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method classes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/joor/Compile$ClassFileManager;->classes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/joor/Compile$ClassFileManager;->classes:Ljava/util/Map;

    .line 237
    iget-object v0, p0, Lorg/joor/Compile$ClassFileManager;->fileObjectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 238
    iget-object v2, p0, Lorg/joor/Compile$ClassFileManager;->classes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joor/Compile$JavaFileObject;

    invoke-virtual {v1}, Lorg/joor/Compile$JavaFileObject;->getBytes()[B

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/joor/Compile$ClassFileManager;->classes:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joor/Compile$ClassFileManager;->getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Lorg/joor/Compile$JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method public getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Lorg/joor/Compile$JavaFileObject;
    .locals 0

    .line 224
    new-instance p1, Lorg/joor/Compile$JavaFileObject;

    invoke-direct {p1, p2, p3}, Lorg/joor/Compile$JavaFileObject;-><init>(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)V

    .line 225
    iget-object p3, p0, Lorg/joor/Compile$ClassFileManager;->fileObjectMap:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method isEmpty()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/joor/Compile$ClassFileManager;->fileObjectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method loadAndReturnMainClass(Ljava/lang/String;Lorg/joor/Compile$ThrowingBiFunction;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/joor/Compile$ThrowingBiFunction<",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lorg/joor/Compile$ClassFileManager;->classes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lorg/joor/Compile$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 249
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method
