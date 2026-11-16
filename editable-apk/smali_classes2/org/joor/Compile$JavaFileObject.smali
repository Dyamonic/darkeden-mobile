.class final Lorg/joor/Compile$JavaFileObject;
.super Ljavax/tools/SimpleJavaFileObject;
.source "Compile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joor/Compile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JavaFileObject"
.end annotation


# instance fields
.field final os:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)V
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljavax/tools/SimpleJavaFileObject;-><init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;)V

    .line 186
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/joor/Compile$JavaFileObject;->os:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/joor/Compile$JavaFileObject;->os:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 2

    .line 203
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/joor/Compile$JavaFileObject;->os:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/joor/Compile$JavaFileObject;->os:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
