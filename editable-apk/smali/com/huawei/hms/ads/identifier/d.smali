.class public abstract Lcom/huawei/hms/ads/identifier/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ads/identifier/d$a;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/huawei/hms/ads/identifier/d;->a:[B

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/hms/ads/identifier/d;->b:[B

    return-void
.end method

.method private static native a(Landroid/content/Context;Lcom/huawei/hms/ads/identifier/d$a;)Ljava/lang/String;
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native a(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public static native a([B)Ljava/lang/String;
.end method

.method public static native a()[B
.end method

.method public static native a(I)[B
.end method

.method public static native a(Landroid/content/Context;)[B
.end method

.method private static native a(Landroid/content/Context;Ljava/lang/String;)[B
.end method

.method public static native a(Ljava/lang/String;)[B
.end method

.method private static native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private static native a(Ljava/lang/String;[B[B)[B
.end method

.method private static native a([B[B)[B
.end method

.method public static native a([B[B[B)[B
.end method

.method public static native a([C[B)[B
.end method

.method private static native b(I)Ljava/lang/String;
.end method

.method private static native b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native b(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method private static native b([B)Z
.end method

.method public static native b()[B
.end method

.method public static native b(Ljava/lang/String;)[B
.end method

.method private static native c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native c(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method private static native c()Ljava/security/SecureRandom;
.end method

.method private static native c([B)Z
.end method

.method private static native c(Landroid/content/Context;)[B
.end method

.method private static native d(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native d(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method private static native d([B)Ljava/security/spec/AlgorithmParameterSpec;
.end method

.method private static native d()Z
.end method

.method private static native d(Landroid/content/Context;)[B
.end method

.method private static native e(Landroid/content/Context;)[B
.end method

.method private static native f(Landroid/content/Context;)Ljava/lang/String;
.end method
