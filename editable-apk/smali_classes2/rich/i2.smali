.class public Lrich/i2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lrich/i2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
