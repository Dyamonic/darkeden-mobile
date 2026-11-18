.class public Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;
.super Landroid/view/View;
.source "TTMGifView.java"


# static fields
.field private static final DEFAULT_MOVIEW_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimationTime:I

.field private mLeft:F

.field private mMeasuredMovieHeight:I

.field private mMeasuredMovieWidth:I

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieResourceId:I

.field private mMovieStart:J

.field private volatile mPaused:Z

.field private mScale:F

.field private mTop:F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mCurrentAnimationTime:I

    .line 52
    iput-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mPaused:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mVisible:Z

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawMovieFrame(Landroid/graphics/Canvas;)V
    .locals 4

    .line 229
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 230
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mCurrentAnimationTime:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 232
    iget v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 233
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mLeft:F

    iget v2, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mScale:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mTop:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private invalidateView()V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method private setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private updateAnimationTime()V
    .locals 6

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 212
    iget-wide v2, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovieStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 213
    iput-wide v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovieStart:J

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    .line 222
    :cond_1
    iget-wide v3, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovieStart:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mCurrentAnimationTime:I

    return-void
.end method


# virtual methods
.method public getMovie()Landroid/graphics/Movie;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mPaused:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 184
    iget-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mPaused:Z

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->updateAnimationTime()V

    .line 186
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    .line 187
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->invalidateView()V

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 170
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 175
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMeasuredMovieWidth:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mLeft:F

    .line 176
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->getHeight()I

    move-result p1

    iget p3, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMeasuredMovieHeight:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mTop:F

    .line 178
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mVisible:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v0, p1, :cond_0

    int-to-float v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 141
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v1, p1, :cond_1

    int-to-float p2, v1

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_1

    :cond_1
    move p2, v3

    .line 153
    :goto_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    iput v3, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mScale:F

    int-to-float p1, v0

    mul-float/2addr p1, v3

    float-to-int p1, p1

    .line 155
    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMeasuredMovieWidth:I

    int-to-float p2, v1

    mul-float/2addr p2, v3

    float-to-int p2, p2

    .line 156
    iput p2, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMeasuredMovieHeight:I

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setMeasuredDimension(II)V

    goto :goto_2

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 240
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 241
    :goto_0
    iput-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mVisible:Z

    .line 242
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->invalidateView()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 248
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 249
    :goto_0
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mVisible:Z

    .line 250
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->invalidateView()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 256
    :goto_0
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mVisible:Z

    .line 257
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->invalidateView()V

    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    .line 87
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->requestLayout()V

    return-void
.end method

.method public setMovieResource(I)V
    .locals 1

    .line 80
    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovieResourceId:I

    .line 81
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovieResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovie:Landroid/graphics/Movie;

    .line 82
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->requestLayout()V

    return-void
.end method

.method public setMovieTime(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mCurrentAnimationTime:I

    .line 96
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->invalidate()V

    return-void
.end method

.method public setPaused(Z)V
    .locals 4

    .line 100
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mPaused:Z

    if-nez p1, :cond_0

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mCurrentAnimationTime:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->mMovieStart:J

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->invalidate()V

    return-void
.end method
