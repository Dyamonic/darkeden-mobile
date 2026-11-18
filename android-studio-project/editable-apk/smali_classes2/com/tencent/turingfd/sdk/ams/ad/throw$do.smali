.class public Lcom/tencent/turingfd/sdk/ams/ad/throw$do;
.super Lcom/tencent/turingfd/sdk/ams/ad/do;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/new;
.implements Lcom/tencent/turingfd/sdk/ams/ad/Dew;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/throw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Lcom/tencent/turingfd/sdk/ams/ad/const;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/const;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/do;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;->b:Lcom/tencent/turingfd/sdk/ams/ad/const;

    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/throw;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    instance-of v2, p1, Lcom/tencent/turingfd/sdk/ams/ad/Olive;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Olive;

    invoke-direct {v2, p1, v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Olive;-><init>(Landroid/view/Window$Callback;Ljava/lang/String;Lcom/tencent/turingfd/sdk/ams/ad/Dew;)V

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 25
    :cond_5
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/super;

    invoke-direct {v2, v0, p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/super;-><init>(Landroid/view/Window;Lcom/tencent/turingfd/sdk/ams/ad/new;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :catchall_0
    :goto_1
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
