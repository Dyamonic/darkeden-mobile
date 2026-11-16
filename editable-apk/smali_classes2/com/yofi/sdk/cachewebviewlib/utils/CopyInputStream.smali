.class public Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;
.super Ljava/lang/Object;
.source "CopyInputStream.java"


# instance fields
.field private _copy:Ljava/io/ByteArrayOutputStream;

.field private _is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    .line 18
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->_is:Ljava/io/InputStream;

    .line 22
    :try_start_0
    invoke-direct {p0}, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->copy()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private copy()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    .line 36
    iget-object v4, p0, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->_is:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    add-int/lit16 v2, v2, 0x1000

    .line 39
    iget-object v3, p0, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public getCopy()Ljava/io/InputStream;
    .locals 2

    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->_copy:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
