.class public final Lcom/taptap/sdk/login/internal/LoginActivityImpl;
.super Ljava/lang/Object;
.source "LoginActivityImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/LoginActivityImpl$Companion;,
        Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginActivityImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginActivityImpl.kt\ncom/taptap/sdk/login/internal/LoginActivityImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0002\u0017\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ(\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/LoginActivityImpl;",
        "",
        "()V",
        "loginHandlers",
        "",
        "Lcom/taptap/sdk/login/internal/handlers/LoginHandler;",
        "[Lcom/taptap/sdk/login/internal/handlers/LoginHandler;",
        "webHandler",
        "Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;",
        "fallbackToWeb",
        "",
        "activity",
        "Landroid/app/Activity;",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onCreate",
        "Companion",
        "TapLoginActivityCallback",
        "tap-login_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/taptap/sdk/login/internal/LoginActivityImpl$Companion;

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "login_fragment"

.field public static final PARAM_REQUEST:Ljava/lang/String; = "request"


# instance fields
.field private final loginHandlers:[Lcom/taptap/sdk/login/internal/handlers/LoginHandler;

.field private final webHandler:Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/LoginActivityImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/LoginActivityImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->Companion:Lcom/taptap/sdk/login/internal/LoginActivityImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taptap/sdk/login/internal/handlers/LoginHandler;

    .line 23
    new-instance v1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;

    invoke-direct {v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;-><init>()V

    check-cast v1, Lcom/taptap/sdk/login/internal/handlers/LoginHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginHandler;

    invoke-direct {v1}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginHandler;-><init>()V

    check-cast v1, Lcom/taptap/sdk/login/internal/handlers/LoginHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    check-cast v1, Lcom/taptap/sdk/login/internal/handlers/LoginHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->loginHandlers:[Lcom/taptap/sdk/login/internal/handlers/LoginHandler;

    .line 24
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->webHandler:Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;

    return-void
.end method


# virtual methods
.method public final fallbackToWeb(Landroid/app/Activity;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "activity"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 93
    sget-object v4, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    sget-object v5, Lcom/taptap/sdk/login/internal/LoginEntrance;->WEB:Lcom/taptap/sdk/login/internal/LoginEntrance;

    invoke-virtual {v4, v5}, Lcom/taptap/sdk/login/internal/LoginManager;->setCurrentLoginEntrance$tap_login_release(Lcom/taptap/sdk/login/internal/LoginEntrance;)V

    .line 94
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getTrackInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    sget-object v5, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v5}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tapsdk_login_type"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSONObject(it.trackInfo)\u2026\n            }.toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v4}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->setTrackInfo(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "login_fragment"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v7, "findFragmentByTag(FRAGMENT_TAG)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 101
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v7, v1

    check-cast v7, Landroid/os/Parcelable;

    const-string v8, "request"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const v7, 0x1020002

    .line 104
    iget-object v8, v0, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->webHandler:Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;

    invoke-virtual {v8}, Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;->getFragment()Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    invoke-virtual {v4, v7, v8, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 107
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 108
    sget-object v4, Lcom/taptap/sdk/login/internal/LoginTracker;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginTracker;

    .line 110
    sget-object v5, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v5}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lkotlin/Pair;

    const/4 v7, 0x0

    .line 112
    sget-object v8, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v8}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object v8

    const-string v9, "login_type"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 113
    invoke-virtual/range {p2 .. p2}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getScopes()[Ljava/lang/String;

    move-result-object v8

    const-string v1, ","

    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "scopes"

    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v6, v7

    .line 111
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v6, "loginWithScopes"

    .line 108
    invoke-virtual {v4, v6, v5, v1}, Lcom/taptap/sdk/login/internal/LoginTracker;->trackLoginStart$tap_login_release(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 116
    move-object v1, v0

    check-cast v1, Lcom/taptap/sdk/login/internal/LoginActivityImpl;

    .line 117
    sget-object v1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    new-instance v4, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string v5, "request cannot be null"

    invoke-direct {v4, v5}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "login_fragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "login_fragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    instance-of v0, p1, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/app/Activity;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "activity"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "request"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 42
    :try_start_0
    iget-object v0, v1, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->loginHandlers:[Lcom/taptap/sdk/login/internal/handlers/LoginHandler;

    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v9, v0, v8

    .line 43
    invoke-interface {v9, v2, v4}, Lcom/taptap/sdk/login/internal/handlers/LoginHandler;->canHandle(Landroid/app/Activity;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 44
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    .line 45
    instance-of v6, v9, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/taptap/sdk/login/internal/LoginEntrance;->CLOUD:Lcom/taptap/sdk/login/internal/LoginEntrance;

    goto :goto_1

    .line 46
    :cond_0
    instance-of v6, v9, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginHandler;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/taptap/sdk/login/internal/LoginEntrance;->CLIENT:Lcom/taptap/sdk/login/internal/LoginEntrance;

    goto :goto_1

    .line 47
    :cond_1
    instance-of v6, v9, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/taptap/sdk/login/internal/LoginEntrance;->CLIENT:Lcom/taptap/sdk/login/internal/LoginEntrance;

    goto :goto_1

    .line 48
    :cond_2
    sget-object v6, Lcom/taptap/sdk/login/internal/LoginEntrance;->WEB:Lcom/taptap/sdk/login/internal/LoginEntrance;

    .line 44
    :goto_1
    invoke-virtual {v0, v6}, Lcom/taptap/sdk/login/internal/LoginManager;->setCurrentLoginEntrance$tap_login_release(Lcom/taptap/sdk/login/internal/LoginEntrance;)V

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getTrackInfo()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "tapsdk_login_type"

    .line 52
    sget-object v8, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v8}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "JSONObject(it.trackInfo)\u2026             }.toString()"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->setTrackInfo(Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v4

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v6, 0x1020002

    .line 59
    invoke-interface {v9}, Lcom/taptap/sdk/login/internal/handlers/LoginHandler;->getFragment()Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "login_fragment"

    .line 57
    invoke-virtual {v3, v6, v8, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 62
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 63
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginTracker;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginTracker;

    const-string v3, "loginWithScopes"

    .line 65
    sget-object v6, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v6}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "login_type"

    .line 67
    sget-object v10, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v10}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v7, "scopes"

    .line 68
    invoke-virtual {v4}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getScopes()[Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    .line 66
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 63
    invoke-virtual {v0, v3, v6, v7}, Lcom/taptap/sdk/login/internal/LoginTracker;->trackLoginStart$tap_login_release(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 75
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "TapLoginLog"

    const-string v6, "login handler error"

    invoke-static {v3, v6, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_4
    invoke-virtual {v1, v2, v4}, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->fallbackToWeb(Landroid/app/Activity;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    .line 40
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_5
    move-object v0, v5

    :goto_2
    if-nez v0, :cond_6

    .line 78
    move-object v0, v1

    check-cast v0, Lcom/taptap/sdk/login/internal/LoginActivityImpl;

    .line 79
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    new-instance v3, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string v4, "request cannot be null"

    invoke-direct {v3, v4}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v3}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    :cond_6
    return-void
.end method
