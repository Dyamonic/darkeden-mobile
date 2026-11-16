.class public final Lcom/tencent/turingfd/sdk/ams/ad/Lynx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->b:Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    const-string v1, "locale"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    check-cast p0, Landroid/app/LocaleManager;

    .line 5
    invoke-virtual {p0}, Landroid/app/LocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 6
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Leo;

    invoke-direct {v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Leo;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/LeoMinor;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/16 v0, 0x18

    if-lt v1, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->a(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    .line 9
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 10
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->a(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    .line 15
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Hydra;->a([Ljava/util/Locale;)Lcom/tencent/turingfd/sdk/ams/ad/Hydra;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method
