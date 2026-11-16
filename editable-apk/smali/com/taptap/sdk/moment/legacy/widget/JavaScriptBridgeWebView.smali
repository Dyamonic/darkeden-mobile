.class public Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;
.super Landroid/webkit/WebView;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;,
        Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;,
        Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;,
        Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;,
        Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;,
        Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;,
        Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;
    }
.end annotation


# static fields
.field private static final APP_CACHE_MAX_SIZE:I = 0x800000

.field private static final BRIDGE_NAME:Ljava/lang/String; = "webViewJavascriptInterface"

.field private static final EXEC_SCRIPT:I = 0x1

.field private static final HANDLE_MESSAGE:I = 0x4

.field private static final LOAD_URL:I = 0x2

.field private static final LOAD_URL_WITH_HEADERS:I = 0x3


# instance fields
.field private APP_CACHE_DIRNAME:Ljava/lang/String;

.field private alertboxBlock:Z

.field private javascriptCloseWindowListener:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field mainThreadHandler:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

.field private messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private startupMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueId:J

.field webChromeClient:Landroid/webkit/WebChromeClient;

.field webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 132
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

    .line 70
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 136
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 137
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 138
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->uniqueId:J

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->alertboxBlock:Z

    .line 496
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 823
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 133
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

    .line 70
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 136
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 137
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 138
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    const-wide/16 p1, 0x0

    .line 139
    iput-wide p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->uniqueId:J

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->alertboxBlock:Z

    .line 496
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 823
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 128
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->init()V

    return-void
.end method

.method private JSONObject2WebViewJavascriptBridgeMessage(Lorg/json/JSONObject;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    .locals 7

    const-string v0, "responseData"

    const-string v1, "responseId"

    const-string v2, "handlerName"

    const-string v3, "data"

    const-string v4, "callbackId"

    .line 324
    new-instance v5, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$1;)V

    .line 326
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 329
    :cond_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v5, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    .line 332
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    .line 335
    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 338
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v5
.end method

.method private _evaluateJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-static {p0, p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$801(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->_evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$101(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->handleMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->dispatchMessage(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Ljava/util/Map;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    return-object p0
.end method

.method static synthetic access$801(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->alertboxBlock:Z

    return p0
.end method

.method private dispatchMessage(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .locals 2

    .line 253
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->message2JSONObject(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "WebViewJavascriptBridge._handleMessageFromJava(%s)"

    .line 254
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private handleMessage(Ljava/lang/String;)V
    .locals 3

    .line 260
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->JSONObject2WebViewJavascriptBridgeMessage(Lorg/json/JSONObject;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    move-result-object p1

    .line 262
    iget-object v0, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    iget-object v1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 264
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    if-eqz v0, :cond_2

    .line 266
    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 270
    iget-object v1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 271
    iget-object v0, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 272
    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$2;

    invoke-direct {v1, p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;)V

    move-object v0, v1

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    iget-object v2, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;

    if-eqz v1, :cond_2

    .line 286
    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    invoke-interface {v1, p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;->handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private message2JSONObject(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)Lorg/json/JSONObject;
    .locals 3

    .line 300
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 302
    :try_start_0
    iget-object v1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "callbackId"

    .line 303
    iget-object v2, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_0
    iget-object v1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v1, "data"

    .line 306
    iget-object v2, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    :cond_1
    iget-object v1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "handlerName"

    .line 309
    iget-object v2, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    :cond_2
    iget-object v1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "responseId"

    .line 312
    iget-object v2, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    :cond_3
    iget-object v1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string v1, "responseData"

    .line 315
    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v0
.end method

.method private declared-synchronized queueMessage(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .locals 1

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->dispatchMessage(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendData(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 225
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 228
    :cond_1
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$1;)V

    if-eqz p1, :cond_2

    .line 230
    iput-object p1, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java_cb_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->uniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->uniqueId:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iput-object p1, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_4

    .line 238
    iput-object p3, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    .line 240
    :cond_4
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->queueMessage(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    return-void
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, p1, v0, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, p2, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 0

    .line 177
    invoke-direct {p0, p2, p3, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->sendData(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1062
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->stopLoading()V

    .line 1063
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->clearMatches()V

    .line 1064
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->clearHistory()V

    .line 1065
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->clearDisappearingChildren()V

    .line 1066
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->clearAnimation()V

    .line 1067
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->removeAllViews()V

    .line 1068
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public disableJavascriptAlertBoxSafetyTimeout(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->alertboxBlock:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1057
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 2

    .line 442
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->_evaluateJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 446
    iput v1, v0, Landroid/os/Message;->what:I

    .line 447
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public getRegisteredHandlerNameList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public hasJavascriptMethod(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V
    .locals 1

    .line 186
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$1;

    invoke-direct {v0, p0, p2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V

    const-string p2, "_hasJavascriptMethod"

    invoke-virtual {p0, p2, p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    return-void
.end method

.method init()V
    .locals 9

    .line 350
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/TapTapForumWebCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 355
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 356
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 357
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 358
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 359
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 362
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "setAllowUniversalAccessFromFileURLs"

    new-array v7, v1, [Ljava/lang/Class;

    .line 365
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 368
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    if-eqz v5, :cond_1

    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 372
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 376
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 374
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 380
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 381
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 382
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v2, -0x1

    .line 383
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 384
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/16 v1, 0x64

    .line 388
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 389
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->isHardwareAccelerated()Z

    const-string v0, "searchBoxJavaBridge_"

    .line 390
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 391
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 392
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 394
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 397
    :cond_2
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$3;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$3;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V

    const-string v1, "_hasNativeMethod"

    invoke-virtual {p0, v1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 403
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$4;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$4;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V

    const-string v1, "_closePage"

    invoke-virtual {p0, v1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 412
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$5;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$5;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V

    const-string v1, "_disableJavascriptAlertBoxSafetyTimeout"

    invoke-virtual {p0, v1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 418
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$6;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$6;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V

    const-string v1, "webViewJavascriptInterface"

    invoke-super {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 460
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 461
    iput v1, v0, Landroid/os/Message;->what:I

    .line 462
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 475
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 476
    iput v1, v0, Landroid/os/Message;->what:I

    .line 477
    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 478
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 296
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public registerHandler(Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setJavascriptCloseWindowListener(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method
