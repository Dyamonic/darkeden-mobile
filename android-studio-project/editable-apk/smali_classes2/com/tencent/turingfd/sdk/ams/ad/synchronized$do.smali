.class public Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;

.field public volatile b:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;->b:I

    .line 5
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([B)Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;->b:I

    aget-object v0, v0, v1

    const-string v1, "application/octet-stream"

    .line 3
    const-class v2, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit v2

    const/4 v2, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    const-string v7, "connectivity"

    .line 6
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 7
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    .line 20
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v8, v9, :cond_0

    goto :goto_2

    .line 24
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v5, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_2

    .line 27
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 29
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->b(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v2

    goto :goto_3

    :cond_2
    const/4 v3, 0x3

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v7, "ACCESS_NETWORK_STATE"

    .line 33
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v6

    :goto_0
    if-eqz v3, :cond_4

    :goto_1
    move v3, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v4

    :goto_3
    const/4 v7, 0x0

    if-ne v3, v4, :cond_5

    const/16 v0, -0x41c

    move-object v2, v7

    goto/16 :goto_c

    .line 34
    :cond_5
    :try_start_2
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-ne v3, v2, :cond_6

    .line 37
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 39
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/case;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/case;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->b(Landroid/content/Context;)I

    move-result v8

    .line 41
    invoke-static {v3, v8}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 44
    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_4

    .line 46
    :cond_6
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_4
    const/16 v2, 0x3a98

    .line 48
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 49
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v0

    move v0, v6

    goto/16 :goto_c

    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_7

    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_8

    :catch_3
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_9

    :catch_4
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v7

    :goto_5
    const/16 v3, -0x3e8

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v2, v7

    :goto_6
    const/16 v3, -0x420

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v2, v7

    :goto_7
    const/16 v3, -0x423

    .line 77
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v2, v7

    :goto_8
    const/16 v3, -0x422

    .line 78
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v2, v7

    :goto_9
    const/16 v3, -0x421

    .line 79
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v2, v7

    :goto_a
    const/16 v3, -0x41d

    .line 80
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_b
    move v0, v3

    :goto_c
    const/4 v3, -0x1

    const/16 v4, -0x7d0

    if-eqz v0, :cond_7

    :goto_d
    move v5, v6

    goto/16 :goto_f

    .line 81
    :cond_7
    :try_start_4
    array-length v0, p1

    .line 84
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 85
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 86
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v8, "POST"

    .line 87
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "Pragma"

    const-string v9, "no-cache"

    .line 89
    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Cache-Control"

    const-string v9, "no-cache"

    .line 90
    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v8, "User-Agent"

    const-string v9, "Turing"

    .line 94
    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Accept"

    const-string v9, "*/*"

    .line 95
    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Accept-Charset"

    const-string v9, "utf-8"

    .line 96
    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Content-Type"

    .line 97
    invoke-virtual {v2, v8, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-length"

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessError; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 101
    :try_start_5
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_8

    const-string v0, "Connection"

    const-string v1, "close"

    .line 102
    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalAccessError; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 108
    :catch_a
    :cond_8
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 110
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 111
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 113
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_9

    move v0, v6

    goto/16 :goto_f

    :cond_9
    if-ne p1, v3, :cond_a

    goto :goto_e

    :cond_a
    rsub-int v0, p1, -0x7d0

    goto/16 :goto_d

    :catchall_3
    move-exception p1

    const-string v0, "TuringHttpUtil"

    .line 145
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    move v0, v4

    goto/16 :goto_d

    :catch_b
    move-exception p1

    const/16 v0, -0x808

    const-string v1, "post io error:"

    .line 147
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TuringHttpUtil"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    :catch_c
    move-exception p1

    const/16 v0, -0x803

    const-string v1, "protocol error:"

    .line 149
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TuringHttpUtil"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_d

    :catch_d
    move-exception p1

    const/16 v0, -0x80d

    const-string v1, "illegal state error:"

    .line 151
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TuringHttpUtil"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_d

    :catch_e
    move-exception p1

    const/16 v0, -0x80c

    const-string v1, "illegal access error:"

    .line 153
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TuringHttpUtil"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p1}, Ljava/lang/IllegalAccessError;->printStackTrace()V

    goto/16 :goto_d

    :goto_f
    if-eqz v0, :cond_b

    .line 155
    new-instance p1, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;

    new-array v1, v6, [B

    invoke-direct {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;-><init>(I[B)V

    return-object p1

    .line 158
    :cond_b
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/16 v0, -0xfa0

    if-eqz v2, :cond_e

    if-nez v5, :cond_c

    goto :goto_12

    .line 159
    :cond_c
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 160
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    :goto_10
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v5

    if-eq v5, v3, :cond_d

    .line 163
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_10

    .line 165
    :cond_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f

    move v0, v6

    goto :goto_11

    :catch_f
    move-exception v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :catch_10
    move-exception v0

    const/16 v1, -0xfd8

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 174
    :goto_11
    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    :goto_12
    if-eqz v0, :cond_f

    .line 177
    new-instance p1, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;

    new-array v1, v6, [B

    invoke-direct {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;-><init>(I[B)V

    return-object p1

    .line 181
    :cond_f
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v1, v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/CanisMinor$do;-><init>(I[B)V

    return-object v1

    :catchall_4
    move-exception p1

    .line 182
    monitor-exit v2

    throw p1
.end method
