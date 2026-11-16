.class public Lrich/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrich/q$a;,
        Lrich/q$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lrich/c$a;

.field public final c:Lrich/u;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrich/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrich/q;->d:Z

    iput-object p1, p0, Lrich/q;->a:Ljava/lang/Object;

    iput-object p2, p0, Lrich/q;->b:Lrich/c$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lrich/q;->c:Lrich/u;

    return-void
.end method

.method public constructor <init>(Lrich/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrich/q;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lrich/q;->a:Ljava/lang/Object;

    iput-object v0, p0, Lrich/q;->b:Lrich/c$a;

    iput-object p1, p0, Lrich/q;->c:Lrich/u;

    return-void
.end method
