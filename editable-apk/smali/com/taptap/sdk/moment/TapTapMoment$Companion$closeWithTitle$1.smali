.class final Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TapTapMoment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/TapTapMoment$Companion;->closeWithTitle(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $content:Ljava/lang/String;

.field final synthetic $sessionId:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;->$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;->$sessionId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;->$title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 191
    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_dialog_title:I

    .line 190
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 193
    iget-object v0, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;->$content:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 194
    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_dialog_content:I

    .line 193
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 197
    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_dialog_confirm:I

    .line 196
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_dialog_cancel:I

    .line 199
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 203
    new-instance v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1$1;

    iget-object v6, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;->$sessionId:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1$1;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;

    .line 189
    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;)Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;

    move-result-object v0

    const-string v1, "sessionId = generateSess\u2026      }\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;->invoke()Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;

    move-result-object v0

    return-object v0
.end method
