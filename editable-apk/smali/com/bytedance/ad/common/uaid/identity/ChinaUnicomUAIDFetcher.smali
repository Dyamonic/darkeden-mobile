.class public final Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;
.super Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0002J*\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001a\u0010\u0014\u001a\u00020\u00152\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u0006H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;",
        "Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;",
        "config",
        "Lcom/bytedance/ad/common/uaid/identity/Config;",
        "(Lcom/bytedance/ad/common/uaid/identity/Config;)V",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "fetchNewToken",
        "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;",
        "context",
        "Landroid/content/Context;",
        "network",
        "Landroid/net/Network;",
        "getAuthurl",
        "getPrivateIPV4",
        "realFetchToken",
        "url",
        "ipv4",
        "startGetRequest",
        "Lorg/json/JSONObject;",
        "Companion",
        "uaid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "1554778161154"

.field public static final CARRIER:Ljava/lang/String; = "3"

.field public static final Companion:Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher$Companion;

.field public static final GET_TOKEN_URL:Ljava/lang/String; = "https://nisportal.10010.com:9001/api"

.field public static final VENDOR:Ljava/lang/String; = "3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->Companion:Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ad/common/uaid/identity/Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;-><init>(Lcom/bytedance/ad/common/uaid/identity/Config;)V

    return-void
.end method

.method private final getAuthurl(Landroid/net/Network;)Ljava/lang/String;
    .locals 3

    const-string v0, "https://nisportal.10010.com:9001/api?appid=1554778161154"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->startGetRequest(Landroid/net/Network;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->setErrCode(Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v0, "authurl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object v1

    const-string v2, "81128"

    invoke-virtual {v1, v2}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->setErrCode(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    const-string v0, "61128"

    invoke-virtual {p1, v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->setErrCode(Ljava/lang/String;)V

    return-object v2
.end method

.method private final getPrivateIPV4()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    const-string v3, "networkInterface"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    const-string v4, "inetAddresses"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/net/Inet4Address;

    invoke-virtual {v3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, v0

    :cond_2
    return-object v2
.end method

.method private final realFetchToken(Landroid/content/Context;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/api?appid=1554778161154&private_ip="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->startGetRequest(Landroid/net/Network;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "err_code"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->setErrCode(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p3, "code"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lcom/bytedance/ad/common/uaid/identity/utils/SIMUtils;->getCurrentSimSubId(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v1, "3"

    const-string v2, "01128"

    const-string v4, "3"

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    return-object p1
.end method

.method private final startGetRequest(Landroid/net/Network;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p2, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    :goto_0
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    invoke-virtual {p1, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 p2, 0x0

    check-cast p2, Ljava/io/InputStream;

    :try_start_0
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const/16 v1, 0x800

    new-array v1, v1, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v0

    :cond_2
    :try_start_1
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v5, "StandardCharsets.UTF_8"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v0

    :goto_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_5
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    throw v0

    :cond_6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "err_code"

    const-string v0, "71128"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public fetchNewToken(Landroid/content/Context;Landroid/net/Network;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getAuthurl(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getPrivateIPV4()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->realFetchToken(Landroid/content/Context;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->setErrCode(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method
