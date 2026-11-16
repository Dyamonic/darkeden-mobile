.class public abstract Lrich/c1;
.super Ljavax/net/ssl/SSLSocketFactory;
.source ""


# instance fields
.field public a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lrich/c1;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
