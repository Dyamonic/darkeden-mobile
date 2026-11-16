.class public Lcom/bun/miitmdid/c0;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "MsaClient"


# instance fields
.field public b:Landroid/content/ServiceConnection;

.field public c:Landroid/content/Context;

.field public d:Lcom/bun/lib/MsaIdInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bun/miitmdid/d0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bun/miitmdid/c0;->c:Landroid/content/Context;

    new-instance p1, Lcom/bun/miitmdid/c0$a;

    invoke-direct {p1, p0, p2}, Lcom/bun/miitmdid/c0$a;-><init>(Lcom/bun/miitmdid/c0;Lcom/bun/miitmdid/d0;)V

    iput-object p1, p0, Lcom/bun/miitmdid/c0;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static native a(Landroid/content/Context;Ljava/lang/String;)V
.end method


# virtual methods
.method public native a()Ljava/lang/String;
.end method

.method public native a(Ljava/lang/String;)V
.end method

.method public native b()Ljava/lang/String;
.end method

.method public native c()Ljava/lang/String;
.end method

.method public native d()Z
.end method

.method public native e()V
.end method
