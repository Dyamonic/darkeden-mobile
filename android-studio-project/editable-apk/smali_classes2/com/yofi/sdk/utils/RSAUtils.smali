.class public Lcom/yofi/sdk/utils/RSAUtils;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCvpbgcdrpv5jRD4JZ33M3XVm8yOetRUGKoMx2uKoXZWazlqN9GboxnPQUFL6bALm2mZBN6nsZl2/FINcSciBMjPnyttmN28Fe0x7YQSEG6wms5XonHFMnJOplRj8ufwxSjsNeAuYWZ/paUEkM+RUEpRW19Nf4My7WBm17/NvQXOQIDAQAB"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptByPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCvpbgcdrpv5jRD4JZ33M3XVm8yOetRUGKoMx2uKoXZWazlqN9GboxnPQUFL6bALm2mZBN6nsZl2/FINcSciBMjPnyttmN28Fe0x7YQSEG6wms5XonHFMnJOplRj8ufwxSjsNeAuYWZ/paUEkM+RUEpRW19Nf4My7WBm17/NvQXOQIDAQAB"

    .line 63
    invoke-static {v0}, Lcom/yofi/sdk/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 64
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    .line 65
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 69
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 70
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 73
    invoke-static {p0}, Lcom/yofi/sdk/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 76
    array-length v0, p0

    .line 80
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_0
    sub-int v4, v0, v3

    if-lez v4, :cond_1

    const/16 v5, 0x80

    if-le v4, v5, :cond_0

    .line 84
    invoke-virtual {v1, p0, v3, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v1, p0, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    .line 88
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit16 v3, v3, 0x80

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 94
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
