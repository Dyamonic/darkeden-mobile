.class public Lcom/yofi/sdk/imp/middle/view/NewContactView;
.super Ljava/lang/Object;
.source "NewContactView.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/IContainerView;


# static fields
.field private static final HEIGHT:I = 0x110

.field public static final RESULT_CLOSE:I = 0x64

.field private static final WIDTH:I = 0x1ae


# instance fields
.field private buttonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private containerActivity:Landroid/app/Activity;

.field private editContent:Landroid/widget/EditText;

.field private editMail:Landroid/widget/EditText;

.field private editName:Landroid/widget/EditText;

.field private msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private pathSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private problemType:I

.field private removeButtonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private uriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->problemType:I

    .line 81
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->containerActivity:Landroid/app/Activity;

    const-string v1, "roleName"

    .line 82
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->roleName:Ljava/lang/String;

    const-string v1, "serverId"

    .line 83
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->serverId:Ljava/lang/String;

    const-string v1, "roleId"

    .line 84
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->roleId:Ljava/lang/String;

    .line 85
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->uriMap:Ljava/util/Map;

    .line 86
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    .line 87
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->removeButtonMap:Ljava/util/Map;

    .line 88
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->pathSet:Ljava/util/Set;

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->msgList:Ljava/util/List;

    .line 91
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yofi_new_contact"

    const-string v3, "layout"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv_title"

    const-string v3, "id"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 94
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "title_contact"

    const-string v6, "string"

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "btn_back"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 99
    new-instance v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$1;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/imp/middle/view/NewContactView$1;-><init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edit_content"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editContent:Landroid/widget/EditText;

    .line 109
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edit_name"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editName:Landroid/widget/EditText;

    .line 111
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edit_mail"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editMail:Landroid/widget/EditText;

    .line 113
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "send_content"

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editMail:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mail"

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "typeButton"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 121
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "messageType"

    .line 122
    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    .line 121
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 125
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 126
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "game"

    .line 125
    invoke-virtual {v5, v8, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 124
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v4, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;

    invoke-direct {v4, p0, p1, p2, v1}, Lcom/yofi/sdk/imp/middle/view/NewContactView$2;-><init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "edit_image"

    invoke-virtual {p2, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 174
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "add_pic"

    invoke-virtual {v4, v7, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "contact_layout"

    invoke-virtual {p2, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 178
    invoke-static {p1}, Lcom/yofi/sdk/notchlib/utils/ScreenUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p2

    .line 179
    aget p2, p2, v2

    :goto_0
    const/4 p2, 0x3

    if-gt v0, p2, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btn_add_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 185
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/yofi/sdk/imp/middle/view/NewContactView$3;-><init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;Lcom/yofi/sdk/activity/VerticalContainerActivity;I)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btn_remove_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 207
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->removeButtonMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$4;

    invoke-direct {v1, p0, v0}, Lcom/yofi/sdk/imp/middle/view/NewContactView$4;-><init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;I)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btn_send"

    invoke-virtual {p2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 219
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    invoke-direct {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;-><init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/view/NewContactView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->problemType:I

    return p0
.end method

.method static synthetic access$002(Lcom/yofi/sdk/imp/middle/view/NewContactView;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->problemType:I

    return p1
.end method

.method static synthetic access$100(Lcom/yofi/sdk/imp/middle/view/NewContactView;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->removePic(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editContent:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->editMail:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Landroid/app/Activity;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->containerActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->roleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->roleName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->msgList:Ljava/util/List;

    return-object p0
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 611
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move v1, v2

    .line 615
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    if-le v3, v2, :cond_0

    .line 617
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 619
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v1, v1, -0xa

    goto :goto_0

    .line 625
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x0

    .line 627
    invoke-static {v1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 629
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 631
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method private createMessage(Landroid/net/Uri;)Lcom/yofi/sdk/imp/middle/data/Message;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const-string v0, "_data"

    .line 495
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p0

    .line 496
    iget-object v1, v7, Lcom/yofi/sdk/imp/middle/view/NewContactView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    .line 498
    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 499
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 503
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 506
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 507
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 508
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 509
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 511
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    int-to-float v3, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 516
    :goto_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 517
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 518
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 521
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 524
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v16, v2, v4

    .line 526
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Message;

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->SEND:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 527
    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v10

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->PIC:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 528
    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string v9, ""

    move-object v8, v2

    invoke-direct/range {v8 .. v17}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJ)V

    .line 532
    invoke-virtual {v2, v1}, Lcom/yofi/sdk/imp/middle/data/Message;->setData([B)V

    .line 533
    invoke-virtual {v2, v0}, Lcom/yofi/sdk/imp/middle/data/Message;->setPath(Ljava/lang/String;)V

    return-object v2
.end method

.method private getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "vectorDrawableId"
        }
    .end annotation

    .line 539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 540
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 542
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 541
    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 543
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 544
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 545
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public static getimage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcPath"
        }
    .end annotation

    .line 554
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 558
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 560
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 562
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 564
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 566
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_0

    int-to-float v4, v2

    const/high16 v5, 0x43f00000    # 480.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 580
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    :goto_0
    float-to-int v2, v2

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    int-to-float v2, v3

    const/high16 v3, 0x44480000    # 800.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 584
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 592
    :goto_2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 596
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 597
    invoke-static {p0}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private removePic(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 447
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->removeButtonMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 449
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->containerActivity:Landroid/app/Activity;

    .line 450
    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "btn_add"

    const-string v7, "drawable"

    .line 449
    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 451
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    .line 452
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->uriMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->uriMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 459
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->uriMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 462
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->pathSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 463
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->msgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    add-int/lit8 v2, v2, 0x1

    .line 467
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->uriMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->pathSet:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 471
    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->removeButtonMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 472
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 474
    :try_start_0
    iget-object v6, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "src"

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 475
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 477
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 481
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 483
    invoke-direct {p0, v3}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->createMessage(Landroid/net/Uri;)Lcom/yofi/sdk/imp/middle/data/Message;

    move-result-object v3

    .line 484
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->msgList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/2addr v2, v0

    .line 488
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 489
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 490
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestory()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "perms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 387
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 388
    iget-object p3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->pathSet:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-direct {p0, p2}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->createMessage(Landroid/net/Uri;)Lcom/yofi/sdk/imp/middle/data/Message;

    move-result-object p3

    .line 395
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->msgList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object p3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 398
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->removeButtonMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 399
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 400
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-virtual {p3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x1ae

    .line 402
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 403
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 404
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 406
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 407
    iget-object p3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->uriMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object p3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 409
    iget-object p3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->buttonMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 410
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView;->pathSet:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 418
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
