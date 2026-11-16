.class public Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPost(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;)V
    .locals 7

    if-nez p1, :cond_0

    invoke-interface {p3}, Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;->onFailure()V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    :goto_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :goto_2
    if-nez p0, :cond_4

    :try_start_1
    invoke-interface {p3}, Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;->onFailure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    return-void

    :cond_4
    :try_start_2
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    :cond_5
    move-object p1, v0

    :goto_3
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_7

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 p2, 0x800

    new-array p2, p2, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;->onResponse(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    invoke-interface {p3}, Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;->onFailure()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    if-eqz p1, :cond_9

    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_7

    :cond_9
    :goto_6
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    :goto_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_8

    :catchall_1
    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_8

    :catchall_2
    move-object p0, v0

    move-object p1, p0

    :goto_8
    :try_start_5
    invoke-interface {p3}, Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;->onFailure()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_a
    if-eqz p1, :cond_b

    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    :catch_1
    move-exception p0

    goto :goto_a

    :cond_b
    :goto_9
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b

    :goto_a
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_c
    :goto_b
    return-void

    :catchall_3
    move-exception p2

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_d
    if-eqz p1, :cond_e

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_c

    :catch_2
    move-exception p0

    goto :goto_d

    :cond_e
    :goto_c
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_e

    :goto_d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_f
    :goto_e
    throw p2
.end method
