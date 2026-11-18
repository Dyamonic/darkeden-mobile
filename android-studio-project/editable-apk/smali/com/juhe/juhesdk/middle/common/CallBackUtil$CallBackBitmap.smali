.class public abstract Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;
.super Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juhe/juhesdk/middle/common/CallBackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallBackBitmap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/juhe/juhesdk/middle/common/CallBackUtil<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mTargetHeight:I

.field private mTargetWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetWidth",
            "targetHeight"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;-><init>()V

    .line 100
    iput p1, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->mTargetWidth:I

    .line 101
    iput p2, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->mTargetHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    .line 109
    iput v0, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->mTargetWidth:I

    .line 110
    iput p1, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->mTargetHeight:I

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u65e0\u6cd5\u83b7\u53d6ImageView\u7684width\u6216height"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getZoomBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-static {p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->input2byte(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    .line 131
    :goto_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 132
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 134
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 135
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 136
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    .line 138
    iget v5, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->mTargetWidth:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    int-to-float v4, v4

    .line 139
    iget v5, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->mTargetHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-gt v2, v1, :cond_0

    if-le v4, v1, :cond_1

    .line 141
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 143
    :cond_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 144
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 145
    array-length v1, p1

    invoke-static {p1, v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 148
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to decode stream."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 114
    iget v0, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->mTargetWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->mTargetHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->getZoomBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/juhe/juhesdk/middle/common/RealResponse;->inputStream:Ljava/io/InputStream;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil$CallBackBitmap;->onParseResponse(Lcom/juhe/juhesdk/middle/common/RealResponse;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
