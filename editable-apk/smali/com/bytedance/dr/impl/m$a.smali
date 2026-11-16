.class public Lcom/bytedance/dr/impl/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/u5$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/dr/impl/m;->a()Lcom/bytedance/bdtracker/u5$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/bdtracker/u5$b<",
        "Lcom/bytedance/dr/aidl/b;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/dr/impl/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/dr/aidl/b$a;->a(Landroid/os/IBinder;)Lcom/bytedance/dr/aidl/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/bytedance/dr/aidl/b$a$a;

    invoke-virtual {p1}, Lcom/bytedance/dr/aidl/b$a$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
