.class public Lcom/bun/miitmdid/c0$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/c0;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bun/miitmdid/d0;

.field public final synthetic b:Lcom/bun/miitmdid/c0;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/c0;Lcom/bun/miitmdid/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/c0$a;->b:Lcom/bun/miitmdid/c0;

    iput-object p2, p0, Lcom/bun/miitmdid/c0$a;->a:Lcom/bun/miitmdid/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronized native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
