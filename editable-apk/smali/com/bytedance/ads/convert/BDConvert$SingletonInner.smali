.class Lcom/bytedance/ads/convert/BDConvert$SingletonInner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/BDConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonInner"
.end annotation


# static fields
.field private static final instance:Lcom/bytedance/ads/convert/BDConvert;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ads/convert/BDConvert;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/BDConvert;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/BDConvert$SingletonInner;->instance:Lcom/bytedance/ads/convert/BDConvert;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/bytedance/ads/convert/BDConvert;
    .locals 1

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert$SingletonInner;->instance:Lcom/bytedance/ads/convert/BDConvert;

    return-object v0
.end method
