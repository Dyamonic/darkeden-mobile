.class public Lcom/huawei/hms/ads/identifier/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/ads/identifier/a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/IBinder;

.field public final synthetic b:Lcom/huawei/hms/ads/identifier/a;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/ads/identifier/a;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/ads/identifier/a$1;->b:Lcom/huawei/hms/ads/identifier/a;

    iput-object p2, p0, Lcom/huawei/hms/ads/identifier/a$1;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
