.class public Lcom/tencent/turingfd/sdk/ams/ad/volatile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 v2, 0x13

    :try_start_1
    const-string v3, "AndroidManifest.xml"

    .line 17
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 18
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 19
    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 20
    :try_start_3
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/return;

    invoke-direct {v1}, Lcom/tencent/turingfd/sdk/ams/ad/return;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tencent/turingfd/sdk/ams/ad/return;->a(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "package"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 27
    :try_start_4
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/default;->b()I

    move-result p1

    if-lt p1, v2, :cond_2

    .line 28
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_1
    move-object v1, p1

    goto :goto_1

    :catchall_2
    move-object v4, v1

    .line 31
    :catchall_3
    :goto_1
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 33
    :try_start_5
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/default;->b()I

    move-result p1

    if-lt p1, v2, :cond_3

    .line 34
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :goto_2
    return-object p0
.end method
