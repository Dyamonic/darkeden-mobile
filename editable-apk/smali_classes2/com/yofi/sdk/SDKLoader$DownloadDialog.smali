.class public Lcom/yofi/sdk/SDKLoader$DownloadDialog;
.super Landroid/app/Dialog;
.source "SDKLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/SDKLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadDialog"
.end annotation


# static fields
.field private static final default_height:I = 0x78

.field private static final default_width:I = 0x118


# instance fields
.field private cb:Lcom/yofi/sdk/SDKLoader$Callback;

.field private downloadFileCount:I

.field private downloadFileSize:I

.field private fileCount:I

.field private fileSize:I

.field private handler:Landroid/os/Handler;

.field private pb:Landroid/widget/ProgressBar;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/yofi/sdk/SDKLoader$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "urls",
            "paths",
            "cb"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yofi/sdk/SDKLoader$Callback;",
            ")V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->pb:Landroid/widget/ProgressBar;

    .line 243
    iput-object p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->tv:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 244
    iput v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->fileSize:I

    .line 245
    iput v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileSize:I

    .line 246
    iput v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->fileCount:I

    .line 247
    iput v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileCount:I

    .line 248
    iput-object p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->cb:Lcom/yofi/sdk/SDKLoader$Callback;

    .line 250
    new-instance p1, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;-><init>(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)V

    iput-object p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->handler:Landroid/os/Handler;

    .line 284
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->fileCount:I

    .line 285
    iput-object p4, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->cb:Lcom/yofi/sdk/SDKLoader$Callback;

    .line 286
    invoke-direct {p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->createDialog()V

    .line 288
    new-instance p1, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;-><init>(Lcom/yofi/sdk/SDKLoader$DownloadDialog;Ljava/util/List;Ljava/util/List;)V

    .line 295
    invoke-virtual {p1}, Lcom/yofi/sdk/SDKLoader$DownloadDialog$2;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I
    .locals 0

    .line 239
    iget p0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->fileSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->pb:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I
    .locals 0

    .line 239
    iget p0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileSize:I

    return p0
.end method

.method static synthetic access$202(Lcom/yofi/sdk/SDKLoader$DownloadDialog;I)I
    .locals 0

    .line 239
    iput p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileSize:I

    return p1
.end method

.method static synthetic access$300(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I
    .locals 0

    .line 239
    iget p0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/yofi/sdk/SDKLoader$DownloadDialog;I)I
    .locals 0

    .line 239
    iput p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I
    .locals 0

    .line 239
    iget p0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->fileCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Landroid/widget/TextView;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Lcom/yofi/sdk/SDKLoader$Callback;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->cb:Lcom/yofi/sdk/SDKLoader$Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yofi/sdk/SDKLoader$DownloadDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->down_file(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/yofi/sdk/SDKLoader$DownloadDialog;I)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->sendMsg(I)V

    return-void
.end method

.method private createDialog()V
    .locals 4

    .line 299
    invoke-direct {p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->createView()V

    .line 301
    invoke-virtual {p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    .line 302
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 303
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 305
    invoke-virtual {p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->getDensity(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 306
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 v3, 0x438c0000    # 280.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 307
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v3, 0x42f00000    # 120.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 308
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x11

    .line 309
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x2

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->setCancelable(Z)V

    return-void
.end method

.method private createView()V
    .locals 7

    .line 323
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 324
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 329
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->tv:Landroid/widget/TextView;

    .line 330
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 331
    iget-object v5, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->tv:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 333
    iget-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6b63\u5728\u66f4\u65b0SDK 0% "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->fileCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->tv:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 336
    iget-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x1010078

    invoke-direct {v1, v3, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->pb:Landroid/widget/ProgressBar;

    .line 339
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 340
    iget-object v2, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private down_file(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "path"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 349
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 352
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 353
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result p1

    iput p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->fileSize:I

    if-lez p1, :cond_2

    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "libs"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 360
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [B

    .line 363
    iput v4, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileSize:I

    .line 364
    invoke-direct {p0, v4}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->sendMsg(I)V

    .line 366
    :goto_0
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p2, 0x2

    .line 376
    invoke-direct {p0, p2}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->sendMsg(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 380
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    invoke-direct {p0, v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->sendMsg(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    .line 371
    :cond_0
    :try_start_5
    invoke-virtual {p1, p2, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 372
    iget v3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileSize:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->downloadFileSize:I

    const/4 v1, 0x1

    .line 374
    invoke-direct {p0, v1}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->sendMsg(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_5

    :catch_2
    move-exception p2

    move-object v1, p1

    goto :goto_3

    .line 357
    :cond_1
    :try_start_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stream is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u9519\u8bef\u7684\u6587\u4ef6\u957f\u5ea6"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_3
    move-exception p2

    .line 391
    :goto_3
    :try_start_7
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 392
    invoke-direct {p0, v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->sendMsg(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_3

    .line 396
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_4

    .line 396
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 401
    :cond_4
    :goto_6
    throw p2
.end method

.method private getDensity(Landroid/content/Context;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 319
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return p1
.end method

.method private sendMsg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 405
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 406
    iput p1, v0, Landroid/os/Message;->what:I

    .line 407
    iget-object p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
