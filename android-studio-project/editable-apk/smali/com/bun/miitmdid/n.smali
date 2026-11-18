.class public abstract Lcom/bun/miitmdid/n;
.super Lcom/bun/miitmdid/o;


# instance fields
.field public f:Lcom/bun/miitmdid/g;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bun/miitmdid/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/n;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/n;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/n;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bun/miitmdid/n;->j:Z

    iput-boolean v0, p0, Lcom/bun/miitmdid/n;->k:Z

    invoke-virtual {p0}, Lcom/bun/miitmdid/n;->d()Lcom/bun/miitmdid/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bun/miitmdid/n;->f:Lcom/bun/miitmdid/g;

    return-void
.end method


# virtual methods
.method public abstract d()Lcom/bun/miitmdid/g;
.end method

.method public native doStart()V
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
