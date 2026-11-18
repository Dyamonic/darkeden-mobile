.class public Lcom/yofi/sdk/SDKLoader;
.super Ljava/lang/Object;
.source "SDKLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/SDKLoader$DownloadDialog;,
        Lcom/yofi/sdk/SDKLoader$Callback;
    }
.end annotation


# static fields
.field private static imp:Lcom/yofi/sdk/SDKLoader; = null

.field private static final updateUrl:Ljava/lang/String; = "http://sdk.sp.cc/"


# instance fields
.field private builder:Lcom/yofi/sdk/interfaces/IViewBuilder;

.field private sdk:Lcom/yofi/sdk/interfaces/ISDKApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/yofi/sdk/SDKLoader;->sdk:Lcom/yofi/sdk/interfaces/ISDKApi;

    .line 41
    iput-object v0, p0, Lcom/yofi/sdk/SDKLoader;->builder:Lcom/yofi/sdk/interfaces/IViewBuilder;

    return-void
.end method

.method private calMd5(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "file"
        }
    .end annotation

    const-string v0, "libs"

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string p2, "0"

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    const-string p1, "MD5"

    .line 210
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 211
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 215
    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 216
    invoke-virtual {p1, v3, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 221
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private copyJar(Landroid/app/Activity;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "pro.jar"

    .line 144
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "libs"

    .line 146
    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 147
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    new-array v1, v1, [B

    .line 155
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 156
    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 157
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    const-string p1, "sdk loader"

    const-string v0, "copy pro.jar"

    .line 160
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v2
.end method

.method public static instance()Lcom/yofi/sdk/SDKLoader;
    .locals 1

    .line 56
    sget-object v0, Lcom/yofi/sdk/SDKLoader;->imp:Lcom/yofi/sdk/SDKLoader;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/yofi/sdk/SDKLoader;

    invoke-direct {v0}, Lcom/yofi/sdk/SDKLoader;-><init>()V

    sput-object v0, Lcom/yofi/sdk/SDKLoader;->imp:Lcom/yofi/sdk/SDKLoader;

    .line 59
    :cond_0
    sget-object v0, Lcom/yofi/sdk/SDKLoader;->imp:Lcom/yofi/sdk/SDKLoader;

    return-object v0
.end method

.method private loadJar(Landroid/app/Activity;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "libs"

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 172
    new-instance v2, Ljava/io/File;

    const-string v3, "pro.jar"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 176
    :cond_0
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-direct {v3, v2, v0, v4, p1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 179
    :try_start_0
    iget-object p1, p0, Lcom/yofi/sdk/SDKLoader;->sdk:Lcom/yofi/sdk/interfaces/ISDKApi;

    if-nez p1, :cond_1

    const-string p1, "com.yofi.sdk.imp.middle.YoFiSdkImp"

    .line 180
    invoke-virtual {v3, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yofi/sdk/interfaces/ISDKApi;

    iput-object p1, p0, Lcom/yofi/sdk/SDKLoader;->sdk:Lcom/yofi/sdk/interfaces/ISDKApi;

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/SDKLoader;->builder:Lcom/yofi/sdk/interfaces/IViewBuilder;

    if-nez p1, :cond_2

    const-string p1, "com.yofi.sdk.imp.middle.YoFiViewBuilder"

    .line 185
    invoke-virtual {v3, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yofi/sdk/interfaces/IViewBuilder;

    iput-object p1, p0, Lcom/yofi/sdk/SDKLoader;->builder:Lcom/yofi/sdk/interfaces/IViewBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader;->sdk:Lcom/yofi/sdk/interfaces/ISDKApi;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-direct {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;-><init>()V

    iput-object v0, p0, Lcom/yofi/sdk/SDKLoader;->sdk:Lcom/yofi/sdk/interfaces/ISDKApi;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader;->sdk:Lcom/yofi/sdk/interfaces/ISDKApi;

    return-object v0
.end method

.method public getViewBuilder()Lcom/yofi/sdk/interfaces/IViewBuilder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader;->builder:Lcom/yofi/sdk/interfaces/IViewBuilder;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiViewBuilder;

    invoke-direct {v0}, Lcom/yofi/sdk/imp/middle/YoFiViewBuilder;-><init>()V

    iput-object v0, p0, Lcom/yofi/sdk/SDKLoader;->builder:Lcom/yofi/sdk/interfaces/IViewBuilder;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader;->builder:Lcom/yofi/sdk/interfaces/IViewBuilder;

    return-object v0
.end method

.method public initLoad(Landroid/app/Activity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1}, Lcom/yofi/sdk/SDKLoader;->loadJar(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public prepare(Landroid/app/Activity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lcom/yofi/sdk/SDKLoader;->copyJar(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
