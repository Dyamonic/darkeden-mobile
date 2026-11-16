.class public Lrich/u2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrich/u2$a;
    }
.end annotation


# static fields
.field public static c:Lrich/u2;


# instance fields
.field public a:Lrich/u2$a;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lrich/u2;->b:I

    return-void
.end method

.method public static a()Lrich/u2;
    .locals 2

    sget-object v0, Lrich/u2;->c:Lrich/u2;

    if-nez v0, :cond_1

    const-class v0, Lrich/u2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrich/u2;->c:Lrich/u2;

    if-nez v1, :cond_0

    new-instance v1, Lrich/u2;

    invoke-direct {v1}, Lrich/u2;-><init>()V

    sput-object v1, Lrich/u2;->c:Lrich/u2;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lrich/u2;->c:Lrich/u2;

    return-object v0
.end method
