.class public Lrich/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rcs.cmpassport.com"

    iput-object v0, p0, Lrich/h0;->a:Ljava/lang/String;

    iput-object v0, p0, Lrich/h0;->b:Ljava/lang/String;

    const-string v0, "config2.cmpassport.com"

    iput-object v0, p0, Lrich/h0;->c:Ljava/lang/String;

    const-string v0, "log2.cmpassport.com:9443"

    iput-object v0, p0, Lrich/h0;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrich/h0;->e:Z

    iput-boolean v0, p0, Lrich/h0;->f:Z

    iput-boolean v0, p0, Lrich/h0;->g:Z

    iput-boolean v0, p0, Lrich/h0;->h:Z

    iput-boolean v0, p0, Lrich/h0;->i:Z

    iput-boolean v0, p0, Lrich/h0;->j:Z

    const/4 v0, 0x3

    iput v0, p0, Lrich/h0;->k:I

    const/4 v0, 0x1

    iput v0, p0, Lrich/h0;->l:I

    return-void
.end method

.method public synthetic constructor <init>(Lrich/h0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "rcs.cmpassport.com"

    iput-object p1, p0, Lrich/h0;->a:Ljava/lang/String;

    iput-object p1, p0, Lrich/h0;->b:Ljava/lang/String;

    const-string p1, "config2.cmpassport.com"

    iput-object p1, p0, Lrich/h0;->c:Ljava/lang/String;

    const-string p1, "log2.cmpassport.com:9443"

    iput-object p1, p0, Lrich/h0;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lrich/h0;->e:Z

    iput-boolean p1, p0, Lrich/h0;->f:Z

    iput-boolean p1, p0, Lrich/h0;->g:Z

    iput-boolean p1, p0, Lrich/h0;->h:Z

    iput-boolean p1, p0, Lrich/h0;->i:Z

    iput-boolean p1, p0, Lrich/h0;->j:Z

    const/4 p1, 0x3

    iput p1, p0, Lrich/h0;->k:I

    const/4 p1, 0x1

    iput p1, p0, Lrich/h0;->l:I

    return-void
.end method

.method public static synthetic a(Lrich/h0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrich/h0;->e:Z

    return p1
.end method

.method public static synthetic b(Lrich/h0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrich/h0;->f:Z

    return p1
.end method

.method public static synthetic c(Lrich/h0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrich/h0;->g:Z

    return p1
.end method

.method public static synthetic d(Lrich/h0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrich/h0;->h:Z

    return p1
.end method

.method public static synthetic e(Lrich/h0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrich/h0;->i:Z

    return p1
.end method

.method public static synthetic f(Lrich/h0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrich/h0;->j:Z

    return p1
.end method


# virtual methods
.method public a()Lrich/h0;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrich/h0;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lrich/h0;->a()Lrich/h0;

    move-result-object v0

    return-object v0
.end method
