.class public final synthetic Lcom/taptap/sdk/update/internal/-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/taptap/sdk/update/internal/-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/internal/-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8;

    invoke-direct {v0}, Lcom/taptap/sdk/update/internal/-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/internal/-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8;->INSTANCE:Lcom/taptap/sdk/update/internal/-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8;

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

    invoke-static {p1}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;->lambda$neJjMhYLrRrwikzgvXz5lv0lyB8(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
