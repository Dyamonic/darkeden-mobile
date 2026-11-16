.class public Lcom/yofi/sdk/utils/UploadUtil;
.super Ljava/lang/Object;
.source "UploadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/utils/UploadUtil$uploadProcessListener;,
        Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field private static final CHARSET:Ljava/lang/String; = "utf-8"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final PREFIX:Ljava/lang/String; = "--"

.field private static final TAG:Ljava/lang/String; = "UploadUtil"

.field public static final UPLOAD_FILE_NOT_EXISTS_CODE:I = 0x2

.field public static final UPLOAD_SERVER_ERROR_CODE:I = 0x3

.field public static final UPLOAD_SUCCESS_CODE:I = 0x1

.field protected static final WHAT_TO_UPLOAD:I = 0x1

.field protected static final WHAT_UPLOAD_DONE:I = 0x2

.field private static requestTime:I

.field private static uploadUtil:Lcom/yofi/sdk/utils/UploadUtil;


# instance fields
.field private connectTimeout:I

.field private onUploadProcessListener:Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;

.field private readTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yofi/sdk/utils/UploadUtil;->BOUNDARY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    sput v0, Lcom/yofi/sdk/utils/UploadUtil;->requestTime:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 46
    iput v0, p0, Lcom/yofi/sdk/utils/UploadUtil;->readTimeOut:I

    .line 47
    iput v0, p0, Lcom/yofi/sdk/utils/UploadUtil;->connectTimeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/utils/UploadUtil;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/yofi/sdk/utils/UploadUtil;->toUploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V

    return-void
.end method

.method public static getInstance()Lcom/yofi/sdk/utils/UploadUtil;
    .locals 1

    .line 39
    sget-object v0, Lcom/yofi/sdk/utils/UploadUtil;->uploadUtil:Lcom/yofi/sdk/utils/UploadUtil;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/yofi/sdk/utils/UploadUtil;

    invoke-direct {v0}, Lcom/yofi/sdk/utils/UploadUtil;-><init>()V

    sput-object v0, Lcom/yofi/sdk/utils/UploadUtil;->uploadUtil:Lcom/yofi/sdk/utils/UploadUtil;

    .line 42
    :cond_0
    sget-object v0, Lcom/yofi/sdk/utils/UploadUtil;->uploadUtil:Lcom/yofi/sdk/utils/UploadUtil;

    return-object v0
.end method

.method public static getRequestTime()I
    .locals 1

    .line 312
    sget v0, Lcom/yofi/sdk/utils/UploadUtil;->requestTime:I

    return v0
.end method

.method private sendMessage(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "responseCode",
            "responseMessage",
            "msg"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/yofi/sdk/utils/UploadUtil;->onUploadProcessListener:Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;->onUploadDone(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V

    return-void
.end method

.method private toUploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "fileKey",
            "RequestURL",
            "param",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    const-string v3, "\u4e0a\u4f20\u5931\u8d25\uff1aerror="

    const/4 v4, 0x0

    .line 128
    sput v4, Lcom/yofi/sdk/utils/UploadUtil;->requestTime:I

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 134
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v9, p3

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 136
    iget v9, v1, Lcom/yofi/sdk/utils/UploadUtil;->readTimeOut:I

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 137
    iget v9, v1, Lcom/yofi/sdk/utils/UploadUtil;->connectTimeout:I

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v9, 0x1

    .line 138
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 139
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 140
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v10, "POST"

    .line 141
    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v10, "clientId"

    .line 142
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "accessToken"

    .line 143
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Charset"

    const-string v11, "utf-8"

    .line 144
    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "connection"

    const-string v11, "keep-alive"

    .line 145
    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "user-agent"

    const-string v11, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"

    .line 146
    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Type"

    .line 147
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "multipart/form-data;boundary="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/yofi/sdk/utils/UploadUtil;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v11, "##"

    const-string v12, "="

    const-string v13, "\""

    const-string v14, "--"

    const-string v15, "UploadUtil"

    const-string v7, "\r\n"

    if-eqz v0, :cond_0

    .line 160
    :try_start_1
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 161
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 162
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 164
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    .line 166
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v17, v3

    :try_start_2
    sget-object v3, Lcom/yofi/sdk/utils/UploadUtil;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "Content-Disposition: form-data; name=\""

    .line 168
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    move-object/from16 v0, p4

    move-object/from16 v3, v17

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v17, v3

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/yofi/sdk/utils/UploadUtil;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Disposition:form-data; name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"; filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "Content-Type:image/pjpeg\r\n"

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 195
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    iget-object v4, v1, Lcom/yofi/sdk/utils/UploadUtil;->onUploadProcessListener:Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v3, v11

    invoke-interface {v4, v3}, Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;->initUpload(I)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 200
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_1

    add-int/2addr v4, v9

    const/4 v11, 0x0

    .line 202
    invoke-virtual {v10, v3, v11, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 203
    iget-object v9, v1, Lcom/yofi/sdk/utils/UploadUtil;->onUploadProcessListener:Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;

    invoke-interface {v9, v4}, Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;->onUploadProcess(I)V

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 207
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/yofi/sdk/utils/UploadUtil;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 209
    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 210
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 216
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    .line 218
    div-long/2addr v3, v5

    long-to-int v3, v3

    sput v3, Lcom/yofi/sdk/utils/UploadUtil;->requestTime:I

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_3

    const-string v0, "request success"

    .line 221
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 223
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v11, :cond_2

    int-to-char v4, v4

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 228
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4f20\u7ed3\u679c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0, v2}, Lcom/yofi/sdk/utils/UploadUtil;->sendMessage(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V

    return-void

    :cond_3
    const-string v3, "request error"

    .line 234
    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4f20\u5931\u8d25\uff1acode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x3

    :try_start_3
    invoke-direct {v1, v3, v0, v2}, Lcom/yofi/sdk/utils/UploadUtil;->sendMessage(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_0
    move-exception v0

    move v5, v3

    move-object/from16 v4, v17

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    .line 243
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-direct {v1, v5, v3, v2}, Lcom/yofi/sdk/utils/UploadUtil;->sendMessage(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_4
    move-exception v0

    move-object v4, v3

    :goto_4
    const/4 v5, 0x3

    .line 239
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3, v2}, Lcom/yofi/sdk/utils/UploadUtil;->sendMessage(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V

    .line 240
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/yofi/sdk/utils/UploadUtil;->connectTimeout:I

    return v0
.end method

.method public getReadTimeOut()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/yofi/sdk/utils/UploadUtil;->readTimeOut:I

    return v0
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectTimeout"
        }
    .end annotation

    .line 305
    iput p1, p0, Lcom/yofi/sdk/utils/UploadUtil;->connectTimeout:I

    return-void
.end method

.method public setOnUploadProcessListener(Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onUploadProcessListener"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/yofi/sdk/utils/UploadUtil;->onUploadProcessListener:Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;

    return-void
.end method

.method public setReadTimeOut(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readTimeOut"
        }
    .end annotation

    .line 297
    iput p1, p0, Lcom/yofi/sdk/utils/UploadUtil;->readTimeOut:I

    return-void
.end method

.method public uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "file",
            "fileKey",
            "RequestURL",
            "param",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u7684URL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u7684fileName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u7684fileKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/yofi/sdk/utils/UploadUtil$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/yofi/sdk/utils/UploadUtil$1;-><init>(Lcom/yofi/sdk/utils/UploadUtil;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x2

    const-string p2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 109
    invoke-direct {p0, p1, p2, p5}, Lcom/yofi/sdk/utils/UploadUtil;->sendMessage(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileKey",
            "RequestURL",
            "param",
            "msg"
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
            ">;",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ")V"
        }
    .end annotation

    const-string v0, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 83
    invoke-direct {p0, v1, v0, p5}, Lcom/yofi/sdk/utils/UploadUtil;->sendMessage(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V

    return-void

    .line 87
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 88
    invoke-virtual/range {v2 .. v7}, Lcom/yofi/sdk/utils/UploadUtil;->uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    invoke-direct {p0, v1, v0, p5}, Lcom/yofi/sdk/utils/UploadUtil;->sendMessage(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
