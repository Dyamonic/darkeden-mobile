.class public Lcom/bun/miitmdid/p;
.super Lcom/bun/miitmdid/n;


# instance fields
.field public l:Landroid/content/Context;

.field public m:Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/bun/miitmdid/n;-><init>()V

    invoke-virtual {p0, p1}, Lcom/bun/miitmdid/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bun/miitmdid/p;->l:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public native d()Lcom/bun/miitmdid/g;
.end method

.method public native getAAID()Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getVAID()Ljava/lang/String;
.end method

.method public native isLimited()Z
.end method

.method public native isSupported()Z
.end method

.method public native isSync()Z
.end method

.method public native shutDown()V
.end method
