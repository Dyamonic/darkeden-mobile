.class Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$2;
.super Ljava/lang/Object;
.source "JuheDemoLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$2;->this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$2;->this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->finish()V

    return-void
.end method
