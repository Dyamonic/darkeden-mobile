.class Lcom/juhe/juhesdk/middle/common/RealRequest;
.super Ljava/lang/Object;
.source "RealRequest.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final TWO_HYPHENS:Ljava/lang/String; = "--"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/juhe/juhesdk/middle/common/RealRequest;->BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExceptonResponse(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)Lcom/juhe/juhesdk/middle/common/RealResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conn",
            "e"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    new-instance p1, Lcom/juhe/juhesdk/middle/common/RealResponse;

    invoke-direct {p1}, Lcom/juhe/juhesdk/middle/common/RealResponse;-><init>()V

    .line 236
    iput-object p2, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->exception:Ljava/lang/Exception;

    return-object p1
.end method

.method private getFileParamsString(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "fileKey",
            "fileType"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\r\n"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "--"

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    sget-object v2, Lcom/juhe/juhesdk/middle/common/RealRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"; filename=\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Content-Lenght: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestURL",
            "requestMethod"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x2710

    .line 115
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x3a98

    .line 116
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 117
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private getParamsString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "--"

    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    sget-object v3, Lcom/juhe/juhesdk/middle/common/RealRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\r\n"

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Disposition: form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Content-Type: text/plain"

    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Lenght: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRealResponse(Ljava/net/HttpURLConnection;)Lcom/juhe/juhesdk/middle/common/RealResponse;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/juhe/juhesdk/middle/common/RealResponse;

    invoke-direct {v0}, Lcom/juhe/juhesdk/middle/common/RealResponse;-><init>()V

    .line 220
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lcom/juhe/juhesdk/middle/common/RealResponse;->code:I

    .line 221
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/juhe/juhesdk/middle/common/RealResponse;->contentLength:J

    .line 222
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/juhe/juhesdk/middle/common/RealResponse;->inputStream:Ljava/io/InputStream;

    .line 223
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/juhe/juhesdk/middle/common/RealResponse;->errorStream:Ljava/io/InputStream;

    return-object v0
.end method

.method private setConnection(Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 137
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    .line 139
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Charset"

    const-string v1, "UTF-8"

    .line 140
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; BOUNDARY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/juhe/juhesdk/middle/common/RealRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conn",
            "headerMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 126
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "file",
            "fileKey",
            "fileType",
            "outputStream",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p4

    .line 171
    invoke-direct/range {p0 .. p3}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getFileParamsString(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 172
    invoke-virtual/range {p4 .. p4}, Ljava/io/DataOutputStream;->flush()V

    .line 174
    new-instance v1, Ljava/io/FileInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 175
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v9

    const/16 v2, 0x800

    new-array v11, v2, [B

    const-wide/16 v2, 0x0

    .line 179
    :goto_0
    invoke-virtual {v1, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 180
    invoke-virtual {v0, v11, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    int-to-long v4, v4

    add-long v12, v2, v4

    if-eqz p5, :cond_0

    .line 184
    sget-object v14, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->mMainHandler:Landroid/os/Handler;

    new-instance v15, Lcom/juhe/juhesdk/middle/common/RealRequest$1;

    move-object v2, v15

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-wide v5, v12

    move-wide v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/juhe/juhesdk/middle/common/RealRequest$1;-><init>(Lcom/juhe/juhesdk/middle/common/RealRequest;Lcom/juhe/juhesdk/middle/common/CallBackUtil;JJ)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    move-wide v2, v12

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/io/DataOutputStream;->flush()V

    .line 193
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method


# virtual methods
.method getData(Ljava/lang/String;Ljava/util/Map;)Lcom/juhe/juhesdk/middle/common/RealResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestURL",
            "headerMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/juhe/juhesdk/middle/common/RealResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GET"

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 p1, 0x1

    .line 33
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p2, :cond_0

    .line 35
    invoke-direct {p0, v0, p2}, Lcom/juhe/juhesdk/middle/common/RealRequest;->setHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 38
    invoke-direct {p0, v0}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getRealResponse(Ljava/net/HttpURLConnection;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getExceptonResponse(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object p1

    return-object p1
.end method

.method postData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/juhe/juhesdk/middle/common/RealResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestURL",
            "body",
            "bodyType",
            "headerMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/juhe/juhesdk/middle/common/RealResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "POST"

    .line 50
    invoke-direct {p0, p1, v1}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 p1, 0x1

    .line 51
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 52
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 54
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Content-Type"

    .line 55
    invoke-virtual {v0, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 58
    invoke-direct {p0, v0, p4}, Lcom/juhe/juhesdk/middle/common/RealRequest;->setHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 62
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance p3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    const-string v1, "UTF-8"

    invoke-direct {p3, p4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 66
    :cond_2
    invoke-direct {p0, v0}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getRealResponse(Ljava/net/HttpURLConnection;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getExceptonResponse(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object p1

    return-object p1
.end method

.method uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)Lcom/juhe/juhesdk/middle/common/RealResponse;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestURL",
            "file",
            "fileList",
            "fileMap",
            "fileKey",
            "fileType",
            "paramsMap",
            "headerMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")",
            "Lcom/juhe/juhesdk/middle/common/RealResponse;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "POST"

    move-object v5, p1

    .line 78
    invoke-direct {p0, p1, v4}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :try_start_1
    invoke-direct {p0, v8}, Lcom/juhe/juhesdk/middle/common/RealRequest;->setConnection(Ljava/net/HttpURLConnection;)V

    if-eqz v2, :cond_0

    .line 81
    invoke-direct {p0, v8, v2}, Lcom/juhe/juhesdk/middle/common/RealRequest;->setHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 83
    :cond_0
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 84
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v1, :cond_1

    .line 86
    invoke-direct {p0, v1}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getParamsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 87
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    :cond_1
    if-eqz p2, :cond_2

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, v9

    move-object/from16 v6, p9

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/juhe/juhesdk/middle/common/RealRequest;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 92
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, v9

    .line 93
    invoke-direct/range {v1 .. v6}, Lcom/juhe/juhesdk/middle/common/RealRequest;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 96
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 97
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v4, p6

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/juhe/juhesdk/middle/common/RealRequest;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    goto :goto_1

    .line 100
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/juhe/juhesdk/middle/common/RealRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 101
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 102
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 103
    invoke-direct {p0, v8}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getRealResponse(Ljava/net/HttpURLConnection;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v8

    goto :goto_3

    :catch_1
    move-exception v0

    .line 105
    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/juhe/juhesdk/middle/common/RealRequest;->getExceptonResponse(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object v0

    return-object v0
.end method
