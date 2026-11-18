.class public abstract Lcom/bun/miitmdid/m;
.super Lcom/bun/miitmdid/o;


# instance fields
.field public volatile f:Ljava/lang/String;

.field public volatile g:Ljava/lang/String;

.field public volatile h:Ljava/lang/String;

.field public volatile i:Z

.field public volatile j:Z

.field public volatile k:J

.field public volatile l:J

.field public volatile m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bun/miitmdid/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/m;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/m;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/m;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bun/miitmdid/m;->i:Z

    iput-boolean v0, p0, Lcom/bun/miitmdid/m;->j:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/bun/miitmdid/m;->l:J

    return-void
.end method


# virtual methods
.method public native d()V
.end method

.method public native e()V
.end method

.method public native f()V
.end method

.method public native g()Z
.end method

.method public native getAAID()Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getVAID()Ljava/lang/String;
.end method

.method public native h()V
.end method

.method public native isLimited()Z
.end method

.method public native isSupported()Z
.end method

.method public native isSync()Z
.end method
