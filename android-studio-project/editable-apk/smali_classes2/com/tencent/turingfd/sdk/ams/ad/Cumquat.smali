.class public Lcom/tencent/turingfd/sdk/ams/ad/Cumquat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->G0:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/tencent/turingfd/sdk/ams/ad/Coconut;
    .locals 15

    const-string v0, "dddd"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    :try_start_0
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/finally;->H0:[I

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 5
    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/finally;->I0:[I

    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v3, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_10

    .line 18
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v0, -0x4b1

    .line 21
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    array-length v6, v3

    move v8, v5

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, v3, v8

    .line 26
    invoke-virtual {v9}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 27
    sget-object v10, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move-object v9, v7

    .line 34
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, -0x4b2

    .line 35
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v3, "\\."

    .line 38
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-le v3, v4, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v5

    .line 43
    :goto_2
    :try_start_1
    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 44
    invoke-virtual {v6, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_c

    .line 55
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 60
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    goto :goto_3

    :catchall_0
    :cond_5
    move v4, v5

    :goto_3
    if-nez v4, :cond_7

    :try_start_3
    const-string v4, "RSA"

    .line 72
    invoke-static {v4, v9}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_6

    .line 81
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/finally;->J0:[I

    .line 83
    invoke-static {v9}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_6

    const/16 v9, 0x10

    goto :goto_4

    :cond_6
    const/4 v9, 0x4

    .line 84
    :goto_4
    invoke-static {v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;->a(Ljava/lang/String;I)Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;

    move-result-object v8

    const-string v9, "SHA-256"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-virtual {v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;->a([Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;

    move-result-object v8

    const-string v9, "PSS"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-virtual {v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;->b([Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/turingfd/sdk/ams/ad/GalacticCore;->a()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 102
    :try_start_5
    invoke-virtual {v4, v8}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_0

    .line 109
    :try_start_6
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catch_0
    const/16 v0, -0x6a5

    .line 110
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_1
    const/16 v0, -0x645

    .line 111
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_2
    const/16 v0, -0x644

    .line 112
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_3
    const/16 v0, -0x643

    .line 113
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_4
    const/16 v0, -0x642

    .line 114
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_5
    const/16 v0, -0x641

    .line 115
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_6
    const/16 v0, -0x5de

    .line 116
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_7
    const/16 v0, -0x5dd

    .line 117
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catchall_1
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 160
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 161
    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/Cranberry;

    invoke-direct {v3, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Cranberry;-><init>([Ljava/security/cert/Certificate;)V

    .line 164
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    .line 165
    iget-object v9, v3, Lcom/tencent/turingfd/sdk/ams/ad/Cranberry;->c:Ljava/lang/String;

    const/4 v10, -0x1

    const/4 v11, -0x2

    move-object v4, v0

    .line 166
    invoke-direct/range {v4 .. v11}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;-><init>(IIJLjava/lang/String;II)V
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_6

    .line 176
    :cond_8
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/finally;->K0:[I

    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3
    :try_end_8
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_8 .. :try_end_8} :catch_9

    if-eqz v3, :cond_b

    .line 186
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat;->a([B)Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;

    move-result-object v3

    .line 187
    iget v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;->a:I

    if-eqz v4, :cond_9

    .line 188
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    .line 191
    :cond_9
    iget-object v3, v3, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;->b:Lcom/tencent/turingfd/sdk/ams/ad/Cranberry;

    .line 192
    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    const-string v8, "s_t_d_entry"

    .line 193
    invoke-virtual {v4, v8, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 194
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 201
    :catchall_2
    :cond_a
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    const/4 v8, 0x0

    const/16 v9, 0x64

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v10, v4, v1

    .line 203
    iget-object v12, v3, Lcom/tencent/turingfd/sdk/ams/ad/Cranberry;->c:Ljava/lang/String;

    const/4 v13, -0x1

    const/4 v14, -0x2

    move-object v7, v0

    .line 204
    invoke-direct/range {v7 .. v14}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;-><init>(IIJLjava/lang/String;II)V

    return-object v0

    :cond_b
    :goto_6
    const/16 v0, -0x76d

    .line 209
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_9
    const/16 v0, -0x70b

    .line 210
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_a
    const/16 v0, -0x70a

    .line 211
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_b
    const/16 v0, -0x709

    .line 212
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_c
    const/16 v0, -0x518

    .line 213
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_d
    const/16 v0, -0x517

    .line 214
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_e
    const/16 v0, -0x516

    .line 215
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_f
    const/16 v0, -0x515

    .line 216
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_10
    const/16 v0, -0x450

    .line 217
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_11
    const/16 v0, -0x44f

    .line 218
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_12
    const/16 v0, -0x44e

    .line 219
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0

    :catch_13
    const/16 v0, -0x44d

    .line 220
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;
    .locals 7

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 222
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 223
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/finally;->L0:[I

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/finally;->M0:[I

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/16 v5, -0x7d1

    const/4 v6, -0x1

    .line 228
    invoke-static {v5, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(II)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v5, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$do;

    invoke-direct {v5, v4, v0, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$do;-><init>(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v5, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 304
    monitor-enter v3

    const-wide/16 v0, 0x1388

    .line 306
    :try_start_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 309
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/16 p0, -0x7d2

    .line 312
    invoke-static {p0, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;->a(II)Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 315
    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/turingfd/sdk/ams/ad/Coconut;

    return-object p0
.end method

.method public static a([B)Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;
    .locals 8

    const/16 v0, -0xbb9

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 316
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;

    .line 317
    invoke-direct {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;-><init>(ILcom/tencent/turingfd/sdk/ams/ad/Cranberry;)V

    return-object p0

    .line 318
    :cond_0
    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 320
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;

    .line 321
    invoke-direct {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;-><init>(ILcom/tencent/turingfd/sdk/ams/ad/Cranberry;)V

    return-object p0

    :cond_1
    new-array v0, v3, [B

    const/4 v2, 0x0

    .line 323
    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    .line 324
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v4, 0x8

    shl-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x100000

    if-le v5, v0, :cond_3

    .line 325
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;

    const/16 v0, -0xbbb

    .line 326
    invoke-direct {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;-><init>(ILcom/tencent/turingfd/sdk/ams/ad/Cranberry;)V

    return-object p0

    .line 327
    :cond_3
    new-array v0, v5, [B

    .line 328
    array-length v4, p0

    add-int/lit8 v6, v5, 0x4

    if-ge v4, v6, :cond_4

    .line 330
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;

    const/16 v0, -0xbbc

    .line 331
    invoke-direct {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;-><init>(ILcom/tencent/turingfd/sdk/ams/ad/Cranberry;)V

    return-object p0

    .line 332
    :cond_4
    invoke-static {p0, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 337
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Cranberry;

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Cranberry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    array-length v3, p0

    sub-int/2addr v3, v6

    if-eqz v3, :cond_5

    .line 341
    new-array v1, v3, [B

    .line 342
    invoke-static {p0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x2

    .line 343
    invoke-static {v1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 344
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;

    .line 345
    invoke-direct {p0, v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;-><init>(ILcom/tencent/turingfd/sdk/ams/ad/Cranberry;)V

    return-object p0

    .line 346
    :cond_5
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;

    const/16 v0, -0xbbd

    .line 347
    invoke-direct {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Cumquat$if;-><init>(ILcom/tencent/turingfd/sdk/ams/ad/Cranberry;)V

    return-object p0
.end method
