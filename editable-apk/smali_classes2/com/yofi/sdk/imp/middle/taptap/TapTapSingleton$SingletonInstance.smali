.class Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$SingletonInstance;
.super Ljava/lang/Object;
.source "TapTapSingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    invoke-direct {v0}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;-><init>()V

    sput-object v0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$SingletonInstance;->INSTANCE:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;
    .locals 1

    .line 40
    sget-object v0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$SingletonInstance;->INSTANCE:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    return-object v0
.end method
