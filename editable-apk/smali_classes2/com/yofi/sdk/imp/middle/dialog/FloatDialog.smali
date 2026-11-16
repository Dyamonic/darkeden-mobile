.class public Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;
.super Landroid/app/Dialog;
.source "FloatDialog.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private floatButton:Landroid/widget/ImageView;

.field handler:Landroid/os/Handler;

.field private initialTouchX:F

.field private initialTouchY:F

.field private jh_x:I

.field private jh_y:F

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private secondTouchOnFloatView:I

.field private timeCount:I

.field private timer:Ljava/util/Timer;

.field private view:Landroid/view/View;

.field private windowSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramActivity",
            "paramInt",
            "paramFloat"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YoFi_Dialog"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->accessToken:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;-><init>(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->secondTouchOnFloatView:I

    const/16 v0, 0x8

    .line 113
    iput v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timeCount:I

    .line 119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->windowSize:Landroid/graphics/Point;

    .line 124
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->activity:Landroid/app/Activity;

    .line 125
    iput p2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->jh_x:I

    .line 126
    iput p3, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->jh_y:F

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timeCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timeCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->floatButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->startTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->windowSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->secondTouchOnFloatView:I

    return p0
.end method

.method static synthetic access$602(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->secondTouchOnFloatView:I

    return p1
.end method

.method static synthetic access$700(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Ljava/util/Timer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->initialTouchX:F

    return p0
.end method

.method static synthetic access$802(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->initialTouchX:F

    return p1
.end method

.method static synthetic access$900(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->initialTouchY:F

    return p0
.end method

.method static synthetic access$902(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->initialTouchY:F

    return p1
.end method

.method private startTimer()V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timer:Ljava/util/Timer;

    .line 134
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timer:Ljava/util/Timer;

    const/16 v0, 0x14

    .line 135
    iput v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->timeCount:I

    .line 136
    new-instance v2, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$2;

    invoke-direct {v2, p0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$2;-><init>(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V

    const-wide/16 v3, 0x5dc

    const-wide/16 v5, 0x32

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 304
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramBundle"
        }
    .end annotation

    .line 148
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->activity:Landroid/app/Activity;

    .line 151
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yofi_float_combine"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->view:Landroid/view/View;

    .line 152
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->setContentView(Landroid/view/View;)V

    .line 153
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->activity:Landroid/app/Activity;

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btn_float"

    const-string v2, "id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->floatButton:Landroid/widget/ImageView;

    .line 155
    new-instance v0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$3;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$3;-><init>(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->floatButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;-><init>(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x0

    .line 268
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->setCancelable(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    .line 271
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 272
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x28

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 273
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 274
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 275
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 276
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->windowSize:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 277
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->windowSize:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, v3, Landroid/graphics/Point;->y:I

    .line 278
    iget v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->jh_x:I

    if-ne v1, v2, :cond_0

    .line 279
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 283
    :goto_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->windowSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    .line 284
    iget v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->jh_y:F

    .line 285
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/yofi/sdk/notchlib/utils/ScreenUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 288
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 289
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 292
    :goto_1
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 293
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->startTimer()V

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramString"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->accessToken:Ljava/lang/String;

    return-void
.end method
