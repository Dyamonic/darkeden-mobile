.class public abstract Lcom/bun/miitmdid/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdProvider;


# static fields
.field public static final a:[C


# instance fields
.field public b:Lcom/bun/miitmdid/interfaces/IIdentifierListener;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bun/miitmdid/o;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x2ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native a(Landroid/content/Context;)Landroid/content/Context;
.end method

.method public native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public native a()Z
.end method

.method public native b()Z
.end method

.method public native c()Z
.end method

.method public native doStartInThreadPool(Lcom/bun/miitmdid/interfaces/IIdentifierListener;)V
.end method

.method public native doStartSync(Lcom/bun/miitmdid/interfaces/IIdentifierListener;)V
.end method

.method public native setGetIdFlag(ZZZ)V
.end method
