.class public Lcom/rich/oauth/util/RichLogUtil$TagHead;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/oauth/util/RichLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagHead"
.end annotation


# instance fields
.field public consoleHead:[Ljava/lang/String;

.field public fileHead:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rich/oauth/util/RichLogUtil$TagHead;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/rich/oauth/util/RichLogUtil$TagHead;->consoleHead:[Ljava/lang/String;

    iput-object p3, p0, Lcom/rich/oauth/util/RichLogUtil$TagHead;->fileHead:Ljava/lang/String;

    return-void
.end method
