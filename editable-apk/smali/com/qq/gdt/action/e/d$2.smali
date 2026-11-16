.class Lcom/qq/gdt/action/e/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/e/d;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/e/d$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e/d$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/j/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/e/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
