.class Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;
.super Ljava/lang/Object;
.source "LongClickHandler.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/SaveImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->notifyMediaRefresh(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;Landroid/app/Activity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ZLjava/io/File;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 102
    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    .line 104
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const-string v1, "relative_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 112
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 113
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 119
    :cond_2
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p1, p2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 122
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_3
    if-ne v1, v2, :cond_2

    .line 126
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 127
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    .line 137
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_5
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->val$activity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->access$000(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;)Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 146
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$2;->this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->access$000(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;)Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;->onFinally(Z)V

    :cond_6
    :goto_1
    return-void
.end method
