.class public Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptData"
.end annotation


# instance fields
.field encryptString:Ljava/lang/String;

.field iv:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[i]"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->encryptString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$StringUtils;->string2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->iv:[B

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->encryptString:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->iv:[B

    return-void
.end method


# virtual methods
.method public getEncryptString()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->encryptString:Ljava/lang/String;

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->iv:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->encryptString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[i]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->iv:[B

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$StringUtils;->bytes2String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
