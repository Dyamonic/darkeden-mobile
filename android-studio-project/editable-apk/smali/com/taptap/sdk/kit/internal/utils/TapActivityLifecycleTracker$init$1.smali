.class public final Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker$init$1;
.super Ljava/lang/Object;
.source "TapActivityLifecycleTracker.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapActivityLifecycleTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapActivityLifecycleTracker.kt\ncom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker$init$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,375:1\n13543#2,2:376\n13543#2,2:378\n13543#2,2:380\n13543#2,2:382\n13543#2,2:384\n13543#2,2:386\n13543#2,2:388\n13543#2,2:390\n13543#2,2:392\n13543#2,2:394\n13543#2,2:396\n13543#2,2:398\n13543#2,2:400\n13543#2,2:402\n13543#2,2:404\n13543#2,2:406\n13543#2,2:408\n13543#2,2:410\n13543#2,2:412\n13543#2,2:414\n13543#2,2:416\n13543#2,2:418\n13543#2,2:420\n*S KotlinDebug\n*F\n+ 1 TapActivityLifecycleTracker.kt\ncom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker$init$1\n*L\n74#1:376,2\n89#1:378,2\n100#1:380,2\n104#1:382,2\n111#1:384,2\n124#1:386,2\n129#1:388,2\n135#1:390,2\n142#1:392,2\n150#1:394,2\n159#1:396,2\n168#1:398,2\n177#1:400,2\n186#1:402,2\n195#1:404,2\n204#1:406,2\n213#1:408,2\n222#1:410,2\n231#1:412,2\n240#1:414,2\n249#1:416,2\n258#1:418,2\n267#1:420,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "com/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker$init$1",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityPostCreated",
        "onActivityPostDestroyed",
        "onActivityPostPaused",
        "onActivityPostResumed",
        "onActivityPostSaveInstanceState",
        "outState",
        "onActivityPostStarted",
        "onActivityPostStopped",
        "onActivityPreCreated",
        "onActivityPreDestroyed",
        "onActivityPrePaused",
        "onActivityPreResumed",
        "onActivityPreSaveInstanceState",
        "onActivityPreStarted",
        "onActivityPreStopped",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "onActivityStarted",
        "onActivityStopped",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$log(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setTopActivity(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Landroid/app/Activity;)V

    .line 74
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 376
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 75
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getActivityList$p()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 392
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 143
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$log(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 384
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 112
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-super {p0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 159
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 396
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 160
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPostDestroyed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 267
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 420
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 268
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPostPaused(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 213
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 408
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 214
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 195
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 404
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 196
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-super {p0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 249
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 416
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 250
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 177
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 400
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 178
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPostStopped(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 231
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 412
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 232
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 150
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 394
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 151
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 258
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 418
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 259
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 204
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 406
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 205
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPreResumed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 186
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 402
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 187
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-super {p0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 240
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 414
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 241
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 168
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 398
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 169
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-super {p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 222
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 410
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 223
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$log(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setTopActivity(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Landroid/app/Activity;)V

    .line 97
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$isBackground$p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "TapActivityLifecycleTracker"

    const-string v2, "App onForeground"

    .line 98
    invoke-static {v0, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setBackground$p(Z)V

    .line 100
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 101
    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onForeground(Landroid/content/Context;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 105
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 390
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 136
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStarted ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$log(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$isBackground$p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setTopActivity(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Landroid/app/Activity;)V

    .line 84
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getConfigCount$p()I

    move-result v0

    if-gez v0, :cond_1

    .line 85
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getConfigCount$p()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setConfigCount$p(I)V

    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getConfigCount$p()I

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getForegroundCount$p()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setForegroundCount$p(I)V

    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getForegroundCount$p()I

    .line 89
    :goto_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 378
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 90
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$log(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getConfigCount$p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setConfigCount$p(I)V

    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getConfigCount$p()I

    goto :goto_1

    .line 121
    :cond_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getForegroundCount$p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setForegroundCount$p(I)V

    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getForegroundCount$p()I

    .line 122
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$getForegroundCount$p()I

    move-result v0

    if-gtz v0, :cond_1

    .line 123
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$setBackground$p(Z)V

    .line 124
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 125
    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onBackground(Landroid/content/Context;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_1
    :goto_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 388
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 130
    invoke-interface {v3, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
