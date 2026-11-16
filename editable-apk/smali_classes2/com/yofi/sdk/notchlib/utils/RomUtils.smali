.class public final Lcom/yofi/sdk/notchlib/utils/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;
    }
.end annotation


# static fields
.field private static final HUAWEI:Ljava/lang/String; = "huawei"

.field private static final OPPO:Ljava/lang/String; = "oppo"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final VERSION_PROPERTY_HUAWEI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final VERSION_PROPERTY_OPPO:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final VERSION_PROPERTY_VIVO:Ljava/lang/String; = "ro.vivo.os.build.display.id"

.field private static final VERSION_PROPERTY_XIAOMI:Ljava/lang/String; = "ro.build.version.incremental"

.field private static final VIVO:Ljava/lang/String; = "vivo"

.field private static final XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getBrand()Ljava/lang/String;
    .locals 2

    .line 135
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method private static getManufacturer()Ljava/lang/String;
    .locals 2

    .line 125
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getRomInfo()Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;
    .locals 4

    .line 78
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    invoke-direct {v0}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;-><init>()V

    sput-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    .line 80
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    .line 82
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    invoke-static {v0, v2}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$002(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ro.build.version.emui"

    .line 84
    invoke-static {v0}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 87
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$102(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_1
    sget-object v1, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    invoke-static {v1, v0}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$102(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    :goto_0
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    return-object v0

    :cond_2
    const-string v2, "vivo"

    .line 93
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    invoke-static {v0, v2}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$002(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$102(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    return-object v0

    :cond_3
    const-string v2, "xiaomi"

    .line 98
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    invoke-static {v0, v2}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$002(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    const-string v1, "ro.build.version.incremental"

    invoke-static {v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$102(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    return-object v0

    :cond_4
    const-string v2, "oppo"

    .line 103
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    invoke-static {v0, v2}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$002(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$102(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    return-object v0

    .line 108
    :cond_5
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    invoke-static {v0, v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$002(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    const-string v1, ""

    invoke-static {v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$102(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/yofi/sdk/notchlib/utils/RomUtils;->bean:Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    return-object v0
.end method

.method private static getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {p0}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 148
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    :try_start_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :catchall_0
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 167
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_2

    .line 168
    invoke-static {p0}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 209
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 210
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v0, v3, v7

    .line 211
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 178
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 187
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    :catch_2
    :cond_1
    throw p0

    :catch_3
    :goto_1
    if-eqz v0, :cond_2

    .line 187
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method private static getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, ""

    .line 196
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 197
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    .line 198
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 200
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 201
    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static isHuawei()Z
    .locals 2

    .line 42
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomInfo()Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$000(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOppo()Z
    .locals 2

    .line 69
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomInfo()Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$000(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static varargs isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "brand",
            "manufacturer",
            "names"
        }
    .end annotation

    .line 115
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 116
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isVivo()Z
    .locals 2

    .line 51
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomInfo()Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$000(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomi()Z
    .locals 2

    .line 60
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->getRomInfo()Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;->access$000(Lcom/yofi/sdk/notchlib/utils/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
