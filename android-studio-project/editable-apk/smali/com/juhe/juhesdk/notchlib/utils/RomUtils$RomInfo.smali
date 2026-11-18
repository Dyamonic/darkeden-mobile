.class public Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;
.super Ljava/lang/Object;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juhe/juhesdk/notchlib/utils/RomUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RomInfo"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;)Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;->version:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RomInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/juhe/juhesdk/notchlib/utils/RomUtils$RomInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
