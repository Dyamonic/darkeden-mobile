.class public Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;
.super Ljava/lang/Object;
.source "UrlHttpUtil.java"


# static fields
.field public static final FILE_TYPE_AUDIO:Ljava/lang/String; = "audio/*"

.field public static final FILE_TYPE_FILE:Ljava/lang/String; = "file/*"

.field public static final FILE_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final FILE_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "callBack"
        }
    .end annotation

    const/4 v0, 0x0

    .line 235
    invoke-static {p0, v0, p1}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->downloadFile(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;)V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "paramsMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    invoke-static {p0, p1, v0, p2}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->downloadFile(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;)V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "paramsMap",
            "headerMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackFile;",
            ")V"
        }
    .end annotation

    .line 248
    invoke-static {p0, p1, p2, p3}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "callBack"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0, v0, p1}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "paramsMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, v0, p2}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "paramsMap",
            "headerMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")V"
        }
    .end annotation

    .line 47
    new-instance v6, Lcom/juhe/juhesdk/middle/common/RequestUtil;

    const-string v1, "GET"

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/juhe/juhesdk/middle/common/RequestUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    invoke-virtual {v6}, Lcom/juhe/juhesdk/middle/common/RequestUtil;->execute()V

    return-void
.end method

.method public static getBitmap(Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "callBack"
        }
    .end annotation

    const/4 v0, 0x0

    .line 222
    invoke-static {p0, v0, p1}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->getBitmap(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;)V

    return-void
.end method

.method public static getBitmap(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "paramsMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 228
    invoke-static {p0, p1, v0, p2}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static post(Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "callBack"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0, p1}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "paramsMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, v0, p2}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "paramsMap",
            "headerMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")V"
        }
    .end annotation

    .line 77
    new-instance v6, Lcom/juhe/juhesdk/middle/common/RequestUtil;

    const-string v1, "POST"

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/juhe/juhesdk/middle/common/RequestUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    invoke-virtual {v6}, Lcom/juhe/juhesdk/middle/common/RequestUtil;->execute()V

    return-void
.end method

.method public static postJson(Ljava/lang/String;Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "jsonStr",
            "callBack"
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, p1, v0, p2}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->postJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static postJson(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "jsonStr",
            "headerMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/juhe/juhesdk/middle/common/RequestUtil;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/juhe/juhesdk/middle/common/RequestUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/common/RequestUtil;->execute()V

    return-void
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "file",
            "fileKey",
            "fileType",
            "callBack"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "file",
            "fileKey",
            "fileType",
            "paramsMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 125
    invoke-static/range {v0 .. v6}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "file",
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
            ")V"
        }
    .end annotation

    .line 139
    new-instance v10, Lcom/juhe/juhesdk/middle/common/RequestUtil;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/juhe/juhesdk/middle/common/RequestUtil;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    invoke-virtual {v10}, Lcom/juhe/juhesdk/middle/common/RequestUtil;->execute()V

    return-void
.end method

.method public static uploadListFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "fileList",
            "fileKey",
            "fileType",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 152
    invoke-static/range {v0 .. v5}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->uploadListFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static uploadListFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "fileList",
            "fileKey",
            "fileType",
            "paramsMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 165
    invoke-static/range {v0 .. v6}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->uploadListFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static uploadListFile(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "fileList",
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
            "Ljava/util/List<",
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
            ")V"
        }
    .end annotation

    .line 179
    new-instance v10, Lcom/juhe/juhesdk/middle/common/RequestUtil;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/juhe/juhesdk/middle/common/RequestUtil;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    invoke-virtual {v10}, Lcom/juhe/juhesdk/middle/common/RequestUtil;->execute()V

    return-void
.end method

.method public static uploadMapFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "fileMap",
            "fileType",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-static {p0, p1, p2, v0, p3}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->uploadMapFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static uploadMapFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "fileMap",
            "fileType",
            "paramsMap",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/CallBackUtil;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 202
    invoke-static/range {v0 .. v5}, Lcom/juhe/juhesdk/middle/common/UrlHttpUtil;->uploadMapFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    return-void
.end method

.method public static uploadMapFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "fileMap",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
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
            ")V"
        }
    .end annotation

    .line 215
    new-instance v10, Lcom/juhe/juhesdk/middle/common/RequestUtil;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/juhe/juhesdk/middle/common/RequestUtil;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V

    invoke-virtual {v10}, Lcom/juhe/juhesdk/middle/common/RequestUtil;->execute()V

    return-void
.end method
