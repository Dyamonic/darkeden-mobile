.class public Lcom/bun/miitmdid/l;
.super Lcom/bun/miitmdid/m;

# interfaces
.implements Lcom/android/msasdk/IConnect;


# instance fields
.field public n:Landroid/content/Context;

.field public o:Ljava/lang/String;

.field public p:Lcom/android/msasdk/FreemeIdsSupplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/bun/miitmdid/m;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/l;->n:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public native connectSuccess(Z)V
.end method

.method public native doStart()V
.end method

.method public native shutDown()V
.end method
