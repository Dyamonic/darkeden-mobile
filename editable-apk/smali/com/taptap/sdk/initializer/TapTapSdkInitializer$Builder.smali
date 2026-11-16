.class public final Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
.super Ljava/lang/Object;
.source "TapTapSdkInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/initializer/TapTapSdkInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapTapSdkInitializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapTapSdkInitializer.kt\ncom/taptap/sdk/initializer/TapTapSdkInitializer$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,371:1\n1#2:372\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010B\u001a\u00020CJ\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006J\u000e\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u0006J\u0010\u0010F\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010G\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000cJ\u000e\u0010H\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000cJ\u000e\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0006J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0006J\u0010\u0010L\u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020)J\u0010\u0010O\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010P\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u0006J\u0010\u0010Q\u001a\u00020\u00002\u0008\u0010.\u001a\u0004\u0018\u00010/J\u000e\u0010R\u001a\u00020\u00002\u0006\u00104\u001a\u000205J\u000e\u0010S\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0006J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0006R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u001a\u0010\u0014\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0008\"\u0004\u0008\u001b\u0010\nR\u001a\u0010\u001c\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0008\"\u0004\u0008\u001e\u0010\nR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008!\u0010\u0010R\u001c\u0010\"\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u000e\"\u0004\u0008$\u0010\u0010R\u001a\u0010%\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0008\"\u0004\u0008\'\u0010\nR\u001a\u0010(\u001a\u00020)X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R \u00104\u001a\u000205X\u0080\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001a\u0010<\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0008\"\u0004\u0008>\u0010\nR\u001a\u0010?\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0008\"\u0004\u0008A\u0010\n\u00a8\u0006U"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "autoIAPEventEnabled",
        "",
        "getAutoIAPEventEnabled$tap_initializer_release",
        "()Z",
        "setAutoIAPEventEnabled$tap_initializer_release",
        "(Z)V",
        "channel",
        "",
        "getChannel$tap_initializer_release",
        "()Ljava/lang/String;",
        "setChannel$tap_initializer_release",
        "(Ljava/lang/String;)V",
        "clientId",
        "getClientId$tap_initializer_release",
        "setClientId$tap_initializer_release",
        "clientToken",
        "getClientToken$tap_initializer_release",
        "setClientToken$tap_initializer_release",
        "getContext$tap_initializer_release",
        "()Landroid/content/Context;",
        "enableLog",
        "getEnableLog$tap_initializer_release",
        "setEnableLog$tap_initializer_release",
        "enableToast",
        "getEnableToast$tap_initializer_release",
        "setEnableToast$tap_initializer_release",
        "gameVersion",
        "getGameVersion$tap_initializer_release",
        "setGameVersion$tap_initializer_release",
        "oaidCert",
        "getOaidCert$tap_initializer_release",
        "setOaidCert$tap_initializer_release",
        "overrideBuiltInParameters",
        "getOverrideBuiltInParameters$tap_initializer_release",
        "setOverrideBuiltInParameters$tap_initializer_release",
        "preferredLanguage",
        "Lcom/taptap/sdk/initializer/api/model/Language;",
        "getPreferredLanguage$tap_initializer_release",
        "()Lcom/taptap/sdk/initializer/api/model/Language;",
        "setPreferredLanguage$tap_initializer_release",
        "(Lcom/taptap/sdk/initializer/api/model/Language;)V",
        "properties",
        "Lorg/json/JSONObject;",
        "getProperties$tap_initializer_release",
        "()Lorg/json/JSONObject;",
        "setProperties$tap_initializer_release",
        "(Lorg/json/JSONObject;)V",
        "region",
        "",
        "getRegion$tap_initializer_release$annotations",
        "()V",
        "getRegion$tap_initializer_release",
        "()I",
        "setRegion$tap_initializer_release",
        "(I)V",
        "showSwitchAccount",
        "getShowSwitchAccount$tap_initializer_release",
        "setShowSwitchAccount$tap_initializer_release",
        "useAgeRange",
        "getUseAgeRange$tap_initializer_release",
        "setUseAgeRange$tap_initializer_release",
        "build",
        "Lcom/taptap/sdk/initializer/TapTapSdkInitializer;",
        "setAutoIAPEventEnabled",
        "enable",
        "setChannel",
        "setClientId",
        "setClientToken",
        "setEnableLog",
        "enabled",
        "setEnableToast",
        "setGameVersion",
        "setLanguage",
        "language",
        "setOaidCert",
        "setOverrideBuiltInParameters",
        "setProperties",
        "setRegion",
        "setShowSwitchAccount",
        "setUseAgeRange",
        "tap-initializer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private autoIAPEventEnabled:Z

.field private channel:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private clientToken:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private enableLog:Z

.field private enableToast:Z

.field private gameVersion:Ljava/lang/String;

.field private oaidCert:Ljava/lang/String;

.field private overrideBuiltInParameters:Z

.field private preferredLanguage:Lcom/taptap/sdk/initializer/api/model/Language;

.field private properties:Lorg/json/JSONObject;

.field private region:I

.field private showSwitchAccount:Z

.field private useAgeRange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->context:Landroid/content/Context;

    const-string p1, ""

    .line 197
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientId:Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientToken:Ljava/lang/String;

    .line 248
    sget-object p1, Lcom/taptap/sdk/initializer/api/model/Language;->AUTO:Lcom/taptap/sdk/initializer/api/model/Language;

    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->preferredLanguage:Lcom/taptap/sdk/initializer/api/model/Language;

    return-void
.end method

.method public static synthetic getRegion$tap_initializer_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final build()Lcom/taptap/sdk/initializer/TapTapSdkInitializer;
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientToken:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 361
    new-instance v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;-><init>(Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 360
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "clientToken \u4e0d\u53ef\u4e3a\u7a7a"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "clientId \u4e0d\u53ef\u4e3a\u7a7a"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enableLog(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 260
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 261
    iput-boolean p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->enableLog:Z

    return-object v0
.end method

.method public final getAutoIAPEventEnabled$tap_initializer_release()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->autoIAPEventEnabled:Z

    return v0
.end method

.method public final getChannel$tap_initializer_release()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientId$tap_initializer_release()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientToken$tap_initializer_release()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext$tap_initializer_release()Landroid/content/Context;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getEnableLog$tap_initializer_release()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->enableLog:Z

    return v0
.end method

.method public final getEnableToast$tap_initializer_release()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->enableToast:Z

    return v0
.end method

.method public final getGameVersion$tap_initializer_release()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getOaidCert$tap_initializer_release()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->oaidCert:Ljava/lang/String;

    return-object v0
.end method

.method public final getOverrideBuiltInParameters$tap_initializer_release()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->overrideBuiltInParameters:Z

    return v0
.end method

.method public final getPreferredLanguage$tap_initializer_release()Lcom/taptap/sdk/initializer/api/model/Language;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->preferredLanguage:Lcom/taptap/sdk/initializer/api/model/Language;

    return-object v0
.end method

.method public final getProperties$tap_initializer_release()Lorg/json/JSONObject;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getRegion$tap_initializer_release()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->region:I

    return v0
.end method

.method public final getShowSwitchAccount$tap_initializer_release()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->showSwitchAccount:Z

    return v0
.end method

.method public final getUseAgeRange$tap_initializer_release()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->useAgeRange:Z

    return v0
.end method

.method public final setAutoIAPEventEnabled(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 309
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 310
    iput-boolean p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->autoIAPEventEnabled:Z

    return-object v0
.end method

.method public final setAutoIAPEventEnabled$tap_initializer_release(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->autoIAPEventEnabled:Z

    return-void
.end method

.method public final setChannel(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 302
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 303
    iput-object p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final setChannel$tap_initializer_release(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setClientId(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 254
    iput-object p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final setClientId$tap_initializer_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientId:Ljava/lang/String;

    return-void
.end method

.method public final setClientToken(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    const-string v0, "clientToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 282
    iput-object p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public final setClientToken$tap_initializer_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->clientToken:Ljava/lang/String;

    return-void
.end method

.method public final setEnableLog(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 330
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 331
    iput-boolean p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->enableLog:Z

    return-object v0
.end method

.method public final setEnableLog$tap_initializer_release(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->enableLog:Z

    return-void
.end method

.method public final setEnableToast(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 337
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 338
    iput-boolean p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->enableToast:Z

    return-object v0
.end method

.method public final setEnableToast$tap_initializer_release(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->enableToast:Z

    return-void
.end method

.method public final setGameVersion(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 323
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 324
    iput-object p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final setGameVersion$tap_initializer_release(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->gameVersion:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Lcom/taptap/sdk/initializer/api/model/Language;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 289
    iput-object p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->preferredLanguage:Lcom/taptap/sdk/initializer/api/model/Language;

    return-object v0
.end method

.method public final setOaidCert(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 267
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 268
    iput-object p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->oaidCert:Ljava/lang/String;

    return-object v0
.end method

.method public final setOaidCert$tap_initializer_release(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->oaidCert:Ljava/lang/String;

    return-void
.end method

.method public final setOverrideBuiltInParameters(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 316
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 317
    iput-boolean p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->overrideBuiltInParameters:Z

    return-object v0
.end method

.method public final setOverrideBuiltInParameters$tap_initializer_release(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->overrideBuiltInParameters:Z

    return-void
.end method

.method public final setPreferredLanguage$tap_initializer_release(Lcom/taptap/sdk/initializer/api/model/Language;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->preferredLanguage:Lcom/taptap/sdk/initializer/api/model/Language;

    return-void
.end method

.method public final setProperties(Lorg/json/JSONObject;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 295
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 296
    iput-object p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final setProperties$tap_initializer_release(Lorg/json/JSONObject;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->properties:Lorg/json/JSONObject;

    return-void
.end method

.method public final setRegion(I)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 274
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 275
    iput p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->region:I

    return-object v0
.end method

.method public final setRegion$tap_initializer_release(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->region:I

    return-void
.end method

.method public final setShowSwitchAccount(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 344
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 345
    iput-boolean p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->showSwitchAccount:Z

    return-object v0
.end method

.method public final setShowSwitchAccount$tap_initializer_release(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->showSwitchAccount:Z

    return-void
.end method

.method public final setUseAgeRange(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;
    .locals 1

    .line 351
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    .line 352
    iput-boolean p1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->useAgeRange:Z

    return-object v0
.end method

.method public final setUseAgeRange$tap_initializer_release(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->useAgeRange:Z

    return-void
.end method
