.class public Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$StringUtils;,
        Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;
    }
.end annotation


# static fields
.field public static final DEFAULT_SECRETKEY_NAME:Ljava/lang/String; = "default_secretkey_name"

.field public static final STORE_FILE_NAME:Ljava/lang/String; = "crypto"

.field private static final TAG:Ljava/lang/String; = "TapCryptoUtils"

.field private static volatile instance:Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/security/KeyStore;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->keyStore:Ljava/security/KeyStore;

    return-void
.end method

.method private static generateKeyGenerator()Ljavax/crypto/KeyGenerator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "AES"

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const-string v0, "AndroidKeyStore"

    .line 139
    invoke-static {v1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    const-string v3, "default_secretkey_name"

    invoke-direct {v1, v3, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const-string v1, "SHA1PRNG"

    const-string v2, "Crypto"

    .line 148
    invoke-static {v1, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 149
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->generateSeed()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 v2, 0x80

    .line 150
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    :goto_0
    return-object v0
.end method

.method private static generateSeed()[B
    .locals 4

    .line 158
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 164
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 166
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to generate seed"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;
    .locals 4

    const-class v0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->instance:Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "crypto"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->getKeyStore(Ljava/io/File;)Ljava/security/KeyStore;

    move-result-object p0

    .line 49
    invoke-static {p0, v1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->initKey(Ljava/security/KeyStore;Ljava/io/File;)V

    .line 50
    new-instance v2, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;-><init>(Ljava/security/KeyStore;)V

    sput-object v2, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->instance:Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "TapCryptoUtils"

    const/4 v3, 0x0

    .line 52
    invoke-static {v2, v3, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :try_start_3
    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->getKeyStore(Ljava/io/File;)Ljava/security/KeyStore;

    move-result-object p0

    .line 58
    invoke-static {p0, v1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->initKey(Ljava/security/KeyStore;Ljava/io/File;)V

    .line 59
    new-instance v1, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;-><init>(Ljava/security/KeyStore;)V

    sput-object v1, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->instance:Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    const-string v1, "TapCryptoUtils"

    .line 61
    invoke-static {v1, v3, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    monitor-exit v0

    return-object v3

    .line 66
    :cond_0
    :goto_0
    :try_start_5
    sget-object p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->instance:Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getKeyStore(Ljava/io/File;)Ljava/security/KeyStore;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const-string p0, "AndroidKeyStore"

    .line 101
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-object p0

    .line 105
    :cond_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_2

    .line 111
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "\u521b\u5efa\u5185\u90e8\u5b58\u50a8\u6587\u4ef6\u5931\u8d25"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 116
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_2

    .line 120
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 122
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v2, v1

    :goto_0
    :try_start_2
    const-string v3, "TapCryptoUtils"

    .line 124
    invoke-static {v3, v1, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    .line 127
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_4
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 129
    :cond_5
    throw p0
.end method

.method private static getSecretKey(Ljava/security/KeyStore;)Ljavax/crypto/SecretKey;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "default_secretkey_name"

    .line 208
    invoke-virtual {p0, v1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "TapCryptoUtils"

    .line 210
    invoke-static {v1, v0, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static initKey(Ljava/security/KeyStore;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "default_secretkey_name"

    .line 71
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->generateKeyGenerator()Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 75
    invoke-static {p0, p1, v0}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->storeKey(Ljava/security/KeyStore;Ljava/io/File;Ljavax/crypto/SecretKey;)V

    :cond_0
    return-void
.end method

.method private static storeKey(Ljava/security/KeyStore;Ljava/io/File;Ljavax/crypto/SecretKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "default_secretkey_name"

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 81
    invoke-virtual {p0, v1, p2, v2, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    goto :goto_2

    .line 83
    :cond_0
    invoke-virtual {p0, v1, p2, v2, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 86
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    invoke-virtual {p0, p2, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 88
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p2, v2

    :goto_0
    :try_start_2
    const-string p1, "TapCryptoUtils"

    .line 90
    invoke-static {p1, v2, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_1

    .line 93
    :goto_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    move-object v2, p2

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 95
    :cond_2
    throw p0
.end method


# virtual methods
.method public aesDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 193
    :try_start_0
    new-instance v0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->keyStore:Ljava/security/KeyStore;

    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->getSecretKey(Ljava/security/KeyStore;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 195
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 196
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->getIv()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 197
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->getEncryptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 199
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$StringUtils;->bytes2StringWithUTF8([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "TapCryptoUtils"

    const-string v1, "aesDecrypt"

    .line 201
    invoke-static {v0, v1, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public aesEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->keyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils;->getSecretKey(Ljava/security/KeyStore;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 178
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 179
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 180
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$StringUtils;->string2BytesWithUTF8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 181
    new-instance v0, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/utils/CryptoUtils$EncryptData;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "TapCryptoUtils"

    const/4 v1, 0x0

    .line 183
    invoke-static {v0, v1, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
