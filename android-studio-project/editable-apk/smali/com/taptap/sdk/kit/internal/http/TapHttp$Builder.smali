.class public final Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
.super Ljava/lang/Object;
.source "TapHttp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/TapHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010/\u001a\u000200J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u00101\u001a\u00020\u0007J\u000e\u00102\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u000e\u00105\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0003J\u0006\u0010\u0011\u001a\u00020\u0000J\u000e\u00106\u001a\u00020\u00002\u0006\u00107\u001a\u000204J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0012J\u000e\u0010:\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0012J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010;\u001a\u00020*J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010=\u001a\u000204R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\u001eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u000eR\u0014\u0010%\u001a\u00020&X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u001a\u0010)\u001a\u00020*X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u0006>"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;",
        "",
        "moduleName",
        "",
        "moduleVersion",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "compressHandler",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;",
        "getCompressHandler$tap_kit_release",
        "()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;",
        "setCompressHandler$tap_kit_release",
        "(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;)V",
        "domain",
        "getDomain$tap_kit_release",
        "()Ljava/lang/String;",
        "setDomain$tap_kit_release",
        "(Ljava/lang/String;)V",
        "enableAuthorization",
        "",
        "getEnableAuthorization$tap_kit_release",
        "()Z",
        "setEnableAuthorization$tap_kit_release",
        "(Z)V",
        "enableConsoleLog",
        "getEnableConsoleLog$tap_kit_release",
        "setEnableConsoleLog$tap_kit_release",
        "enableTechnicalLog",
        "getEnableTechnicalLog$tap_kit_release",
        "setEnableTechnicalLog$tap_kit_release",
        "logLevel",
        "Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;",
        "getLogLevel$tap_kit_release",
        "()Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;",
        "setLogLevel$tap_kit_release",
        "(Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;)V",
        "getModuleName",
        "getModuleVersion",
        "okHttpClientBuilder",
        "Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;",
        "getOkHttpClientBuilder$tap_kit_release",
        "()Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;",
        "signHandler",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;",
        "getSignHandler$tap_kit_release",
        "()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;",
        "setSignHandler$tap_kit_release",
        "(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;)V",
        "build",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "compress",
        "connectTimeout",
        "connectTimeoutMillis",
        "",
        "debugLogLevel",
        "readTimeout",
        "readTimeoutMillis",
        "setLogEnable",
        "enable",
        "setTechnicalLogEnable",
        "sign",
        "writeTimeout",
        "writeTimeoutMillis",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

.field private domain:Ljava/lang/String;

.field private enableAuthorization:Z

.field private enableConsoleLog:Z

.field private enableTechnicalLog:Z

.field private logLevel:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

.field private final moduleName:Ljava/lang/String;

.field private final moduleVersion:Ljava/lang/String;

.field private final okHttpClientBuilder:Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

.field private signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->moduleName:Ljava/lang/String;

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->moduleVersion:Ljava/lang/String;

    .line 117
    new-instance p1, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->okHttpClientBuilder:Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    .line 121
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1, p2}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 122
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1, p2}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 123
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 124
    invoke-static {}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->access$getDefaultDispatcher$cp()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->dispatcher(Lcom/taptap/sdk/okhttp3/Dispatcher;)Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    const-string p1, ""

    .line 127
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->domain:Ljava/lang/String;

    .line 128
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;

    invoke-direct {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;-><init>()V

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    .line 129
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpCompress$None;

    invoke-direct {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpCompress$None;-><init>()V

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    .line 130
    sget-object p1, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;->BASIC:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->logLevel:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableTechnicalLog:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 2

    .line 192
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final compressHandler(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 1

    const-string v0, "compress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 166
    iput-object p1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    return-object v0
.end method

.method public final connectTimeout(J)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 3

    .line 138
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 139
    iget-object v1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->okHttpClientBuilder:Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public final debugLogLevel(Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 177
    iput-object p1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->logLevel:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    return-object v0
.end method

.method public final domain(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 157
    iput-object p1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final enableAuthorization()Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 2

    .line 188
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    const/4 v1, 0x1

    .line 189
    iput-boolean v1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableAuthorization:Z

    return-object v0
.end method

.method public final getCompressHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    return-object v0
.end method

.method public final getDomain$tap_kit_release()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableAuthorization$tap_kit_release()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableAuthorization:Z

    return v0
.end method

.method public final getEnableConsoleLog$tap_kit_release()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableConsoleLog:Z

    return v0
.end method

.method public final getEnableTechnicalLog$tap_kit_release()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableTechnicalLog:Z

    return v0
.end method

.method public final getLogLevel$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->logLevel:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getModuleVersion()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->moduleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getOkHttpClientBuilder$tap_kit_release()Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->okHttpClientBuilder:Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public final getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    return-object v0
.end method

.method public final readTimeout(J)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 3

    .line 145
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 146
    iget-object v1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->okHttpClientBuilder:Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public final setCompressHandler$tap_kit_release(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    return-void
.end method

.method public final setDomain$tap_kit_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->domain:Ljava/lang/String;

    return-void
.end method

.method public final setEnableAuthorization$tap_kit_release(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableAuthorization:Z

    return-void
.end method

.method public final setEnableConsoleLog$tap_kit_release(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableConsoleLog:Z

    return-void
.end method

.method public final setEnableTechnicalLog$tap_kit_release(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableTechnicalLog:Z

    return-void
.end method

.method public final setLogEnable(Z)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 1

    .line 184
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 185
    iput-boolean p1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableConsoleLog:Z

    return-object v0
.end method

.method public final setLogLevel$tap_kit_release(Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->logLevel:Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    return-void
.end method

.method public final setSignHandler$tap_kit_release(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    return-void
.end method

.method public final setTechnicalLogEnable(Z)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 1

    .line 180
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 181
    iput-boolean p1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->enableTechnicalLog:Z

    return-object v0
.end method

.method public final signHandler(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 1

    const-string v0, "sign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 173
    iput-object p1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    return-object v0
.end method

.method public final writeTimeout(J)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    .locals 3

    .line 152
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 153
    iget-object v1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->okHttpClientBuilder:Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    return-object v0
.end method
