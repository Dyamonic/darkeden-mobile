.class public Lcom/yofi/sdk/widget/WidgetUtil;
.super Ljava/lang/Object;
.source "WidgetUtil.java"


# static fields
.field public static final BUTTON_PRESSED:[F

.field public static final BUTTON_RELEASED:[F

.field private static final touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 12
    fill-array-data v1, :array_0

    sput-object v1, Lcom/yofi/sdk/widget/WidgetUtil;->BUTTON_PRESSED:[F

    new-array v0, v0, [F

    .line 15
    fill-array-data v0, :array_1

    sput-object v0, Lcom/yofi/sdk/widget/WidgetUtil;->BUTTON_RELEASED:[F

    .line 18
    new-instance v0, Lcom/yofi/sdk/widget/WidgetUtil$1;

    invoke-direct {v0}, Lcom/yofi/sdk/widget/WidgetUtil$1;-><init>()V

    sput-object v0, Lcom/yofi/sdk/widget/WidgetUtil;->touchListener:Landroid/view/View$OnTouchListener;

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x40000000    # 2.0f
        0x0
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x0
        0x0
        0x40a00000    # 5.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setButtonStateChangeListener(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/yofi/sdk/widget/WidgetUtil;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
