.class public final synthetic Lcom/taptap/sdk/review/internal/-$$Lambda$TapReviewApiKt$reviewScope$2$9pmPWcEyjxomlsednfmM4_AF8SY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/taptap/sdk/review/internal/-$$Lambda$TapReviewApiKt$reviewScope$2$9pmPWcEyjxomlsednfmM4_AF8SY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/review/internal/-$$Lambda$TapReviewApiKt$reviewScope$2$9pmPWcEyjxomlsednfmM4_AF8SY;

    invoke-direct {v0}, Lcom/taptap/sdk/review/internal/-$$Lambda$TapReviewApiKt$reviewScope$2$9pmPWcEyjxomlsednfmM4_AF8SY;-><init>()V

    sput-object v0, Lcom/taptap/sdk/review/internal/-$$Lambda$TapReviewApiKt$reviewScope$2$9pmPWcEyjxomlsednfmM4_AF8SY;->INSTANCE:Lcom/taptap/sdk/review/internal/-$$Lambda$TapReviewApiKt$reviewScope$2$9pmPWcEyjxomlsednfmM4_AF8SY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/taptap/sdk/review/internal/TapReviewApiKt$reviewScope$2;->lambda$9pmPWcEyjxomlsednfmM4_AF8SY(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
