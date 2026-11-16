.class public final Lcom/bytedance/bdtracker/y0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/y0;->a(Landroidx/viewpager/widget/ViewPager;Lcom/bytedance/applog/exposure/ViewExposureData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/y0;

.field public final synthetic b:Lcom/bytedance/applog/exposure/ViewExposureData;

.field public final synthetic c:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/y0;Lcom/bytedance/applog/exposure/ViewExposureData;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/y0$b;->a:Lcom/bytedance/bdtracker/y0;

    iput-object p2, p0, Lcom/bytedance/bdtracker/y0$b;->b:Lcom/bytedance/applog/exposure/ViewExposureData;

    iput-object p3, p0, Lcom/bytedance/bdtracker/y0$b;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/y0$b;->a:Lcom/bytedance/bdtracker/y0;

    iget-object v1, p0, Lcom/bytedance/bdtracker/y0$b;->c:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/bytedance/bdtracker/y0$b;->b:Lcom/bytedance/applog/exposure/ViewExposureData;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/bdtracker/y0;->a(Lcom/bytedance/bdtracker/y0;Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;FFI)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
