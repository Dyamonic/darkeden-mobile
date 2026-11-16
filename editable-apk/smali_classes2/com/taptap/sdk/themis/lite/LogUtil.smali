.class public Lcom/taptap/sdk/themis/lite/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThemisLite"

.field private static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "ThemisLite"

    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThemisLite"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static err(Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "ThemisLite"

    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static err(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "ThemisLite"

    .line 50
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs err(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 79
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThemisLite"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "ThemisLite"

    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 55
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThemisLite"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "ThemisLite"

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 73
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThemisLite"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "ThemisLite"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/taptap/sdk/themis/lite/LogUtil;->isDebug:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThemisLite"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
