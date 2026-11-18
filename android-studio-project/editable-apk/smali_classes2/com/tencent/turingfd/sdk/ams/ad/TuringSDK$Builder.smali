.class public final Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;

.field public t:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

.field public u:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;

.field public v:Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->b:Ljava/lang/String;

    const/16 v1, 0x1388

    .line 3
    iput v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->c:I

    const-wide/32 v1, 0xea60

    .line 4
    iput-wide v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->d:J

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->e:I

    .line 6
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->f:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->h:I

    .line 9
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->i:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->j:I

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->k:Ljava/util/Map;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->l:Z

    .line 14
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->m:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->n:Ljava/lang/String;

    .line 16
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->o:Z

    .line 17
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->p:Z

    .line 18
    iput-boolean v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->q:Z

    .line 19
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->r:Z

    .line 24
    iput-boolean v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->w:Z

    .line 25
    iput-boolean v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->x:Z

    .line 26
    iput-boolean v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->y:Z

    .line 27
    iput-boolean v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->z:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->s:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->j:I

    return p0
.end method

.method public static synthetic d(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->l:Z

    return p0
.end method

.method public static synthetic e(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->o:Z

    return p0
.end method

.method public static synthetic h(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->p:Z

    return p0
.end method

.method public static synthetic i(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->q:Z

    return p0
.end method

.method public static synthetic j(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->r:Z

    return p0
.end method

.method public static synthetic k(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->s:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;

    return-object p0
.end method

.method public static synthetic l(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->t:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    return-object p0
.end method

.method public static synthetic m(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->c:I

    return p0
.end method

.method public static synthetic n(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->u:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;

    return-object p0
.end method

.method public static synthetic o(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->v:Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;

    return-object p0
.end method

.method public static synthetic p(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->w:Z

    return p0
.end method

.method public static synthetic q(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->x:Z

    return p0
.end method

.method public static synthetic r(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->y:Z

    return p0
.end method

.method public static synthetic s(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->z:Z

    return p0
.end method

.method public static synthetic t(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->d:J

    return-wide v0
.end method

.method public static synthetic u(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->e:I

    return p0
.end method

.method public static synthetic v(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic w(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->h:I

    return p0
.end method

.method public static synthetic y(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic z(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->k:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final appid(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final autoRequestBg(Z)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->p:Z

    return-object p0
.end method

.method public final build()Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;

    .line 2
    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;)V

    return-object v0
.end method

.method public final channel(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->j:I

    return-object p0
.end method

.method public final clientBuildNo(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->h:I

    return-object p0
.end method

.method public final clientChannel(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final clientLc(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final clientMetaDataMap(Ljava/util/Map;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->k:Ljava/util/Map;

    return-object p0
.end method

.method public final clientVersion(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final enableClickRisk()Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->x:Z

    return-object p0
.end method

.method public final enableDRM()Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->y:Z

    return-object p0
.end method

.method public final forceReqServiceEveryTime(Z)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->q:Z

    return-object p0
.end method

.method public final honorOAIDPreferred()Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->z:Z

    return-object p0
.end method

.method public final initNetwork(Z)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->r:Z

    return-object p0
.end method

.method public final loadLibrary(Z)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->l:Z

    return-object p0
.end method

.method public final phyFeature(Z)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->o:Z

    return-object p0
.end method

.method public final retryTime(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->e:I

    return-object p0
.end method

.method public final riskDetectTimeout(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 2

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const v0, 0xea60

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->d:J

    return-object p0
.end method

.method public final soFilePath(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final timeout(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const v0, 0xea60

    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->c:I

    return-object p0
.end method

.method public final turingDeviceInfoProvider(Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->t:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    return-object p0
.end method

.method public final turingIoTFeatureMap(Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->v:Lcom/tencent/turingfd/sdk/ams/ad/ITuringIoTFeatureMap;

    return-object p0
.end method

.method public final turingPkgProvider(Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->u:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;

    return-object p0
.end method

.method public final tvOS(Z)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->w:Z

    return-object p0
.end method

.method public final uniqueId(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
