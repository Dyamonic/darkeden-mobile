.class public Lcom/bytedance/ads/convert/broadcast/common/EncryptionTools;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "Convert:EncryptionTools"

.field private static zDataPCache:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/illusion/light/EffectUtil;->Ew0PFxIIElJfVUZbX1EJ0(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/ads/convert/broadcast/common/EncryptionTools;->zDataPCache:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native bytesToHex([B)Ljava/lang/String;
.end method

.method public static native encryptionAction(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getBootTime()J
.end method

.method public static native getBootTimeMs()J
.end method

.method public static native getDiskTotalBytes()J
.end method

.method public static native getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
.end method

.method public static native getZDataP(Landroid/content/Context;)Lorg/json/JSONArray;
.end method

.method private static native hash(Ljava/lang/String;)Ljava/lang/String;
.end method
