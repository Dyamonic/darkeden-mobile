.class Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;
.super Ljava/lang/Object;
.source "FloatDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param1View",
            "param1MotionEvent"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$700(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$700(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 168
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$702(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;Ljava/util/Timer;)Ljava/util/Timer;

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$100(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    const/high16 v3, 0x41200000    # 10.0f

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_1

    return v2

    .line 256
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$800(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$900(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    return v2

    .line 262
    :cond_2
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 263
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 264
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return v2

    .line 205
    :cond_3
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/yofi/sdk/notchlib/utils/ScreenUtil;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    const-string v4, "urlType"

    const-string v5, "isLoginOut"

    const-string v6, "button no"

    const-string v7, "YofiSdk"

    const-string v8, "button"

    const-string v9, "YoFiSdk"

    const/16 v10, 0x14

    if-eqz p1, :cond_7

    .line 206
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v11}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    div-int/2addr v11, v0

    if-gt p1, v11, :cond_4

    .line 207
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 208
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v11}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 210
    :cond_4
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v11}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    iput v11, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 211
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v11}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 213
    :goto_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1, v10}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$002(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;I)I

    .line 214
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$1000(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v10, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v10}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$800(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)F

    move-result v10

    sub-float/2addr p1, v10

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_6

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$900(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_6

    .line 217
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$600(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I

    move-result p1

    if-lt p1, v0, :cond_5

    .line 219
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;

    move-result-object p2

    const-class v3, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p1, p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 223
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    return v1

    .line 227
    :cond_6
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 230
    :cond_7
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v11}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    div-int/2addr v11, v0

    if-gt p1, v11, :cond_8

    .line 231
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 232
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v11}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 234
    :cond_8
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v11}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    iput v11, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 235
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v11, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v11}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 237
    :goto_1
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1, v10}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$002(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;I)I

    .line 238
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$1000(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v10, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v10}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$900(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)F

    move-result v10

    sub-float/2addr p1, v10

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_a

    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$800(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_a

    .line 241
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$600(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I

    move-result p1

    if-lt p1, v0, :cond_9

    .line 243
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;

    move-result-object p2

    const-class v3, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p1, p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 247
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_9
    return v1

    .line 251
    :cond_a
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 175
    :cond_b
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    .line 176
    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$600(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {p1, v3}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$602(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;I)I

    .line 177
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$600(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I

    move-result p1

    if-ge p1, v0, :cond_d

    .line 178
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v3}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v0

    const-wide/16 v4, 0x64

    const/4 v0, 0x0

    if-gt p1, v3, :cond_c

    .line 179
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 180
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x3de00000    # -40.0f

    invoke-direct {v3, v6, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 181
    invoke-virtual {p1, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 182
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 184
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$802(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;F)F

    .line 186
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$902(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;F)F

    return v2

    .line 194
    :cond_c
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 195
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v6, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v6}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1e

    int-to-float v6, v6

    invoke-direct {v3, v6, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 197
    invoke-virtual {p1, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 198
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 199
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 200
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$802(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;F)F

    .line 202
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$902(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;F)F

    return v2

    .line 190
    :cond_d
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$802(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;F)F

    .line 191
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$4;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$902(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;F)F

    return v2
.end method
