.class public Lrich/k2$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/k2$a;-><init>(Landroid/content/Context;Lrich/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/l0;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lrich/k2$a;Lrich/l0;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lrich/k2$a$b;->a:Lrich/l0;

    iput-object p3, p0, Lrich/k2$a$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lrich/k2$a$b;->a:Lrich/l0;

    invoke-virtual {p1}, Lrich/l0;->a()Lrich/x1;

    move-result-object p1

    iget-object p1, p1, Lrich/x1;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lrich/k2$a$b;->b:Landroid/content/Context;

    invoke-static {p1}, Lrich/t0;->b(Landroid/content/Context;)Lrich/t0;

    move-result-object p1

    iget-object p2, p0, Lrich/k2$a$b;->a:Lrich/l0;

    const-string v0, "200025"

    const-string v1, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lrich/t0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    return-void
.end method
