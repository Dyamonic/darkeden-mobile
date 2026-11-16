.class final Lcom/qq/gdt/action/e/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/qq/gdt/action/e/f;->a([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/qq/gdt/action/e/e;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "md5 error"

    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    const-string p1, "md5"

    invoke-static {p1, p0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static a(Ljava/lang/String;[B)[B
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "digest"

    invoke-static {p1, p0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "md5"

    invoke-static {v1, p0}, Lcom/qq/gdt/action/e/f;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    return-object p0

    :cond_1
    const-string p0, "md5 error"

    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method
