.class public Lrich/h2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static d:Lrich/h2;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrich/h2;->b:J

    const-string v0, ""

    iput-object v0, p0, Lrich/h2;->c:Ljava/lang/String;

    iput-object p1, p0, Lrich/h2;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lrich/v0;->a()Lrich/v0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lrich/v0;->a:Lrich/v0$a;

    if-nez v0, :cond_0

    new-instance v0, Lrich/v0$a;

    invoke-direct {v0}, Lrich/v0$a;-><init>()V

    .line 3
    :cond_0
    iget v0, v0, Lrich/v0$a;->b:I

    if-ltz v0, :cond_1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lrich/h2;->a(Z)Ljava/lang/String;

    move-result-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "46011"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "46009"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "46007"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "46006"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "46005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "46004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "46002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "46001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "46000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p2, 0x0

    :goto_0
    const-string p1, "SIMUtils"

    packed-switch p2, :pswitch_data_0

    const-string p1, "0"

    goto :goto_1

    :pswitch_0
    const-string p2, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-static {p1, p2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "3"

    goto :goto_1

    :pswitch_1
    const-string p2, "\u4e2d\u56fd\u8054\u901a"

    invoke-static {p1, p2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2"

    goto :goto_1

    :pswitch_2
    const-string p2, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-static {p1, p2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2f60c6e -> :sswitch_9
        0x2f60c6f -> :sswitch_8
        0x2f60c70 -> :sswitch_7
        0x2f60c71 -> :sswitch_6
        0x2f60c72 -> :sswitch_5
        0x2f60c73 -> :sswitch_4
        0x2f60c74 -> :sswitch_3
        0x2f60c75 -> :sswitch_2
        0x2f60c77 -> :sswitch_1
        0x2f60c8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lrich/h2;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    const-string v0, "SIMUtils"

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lrich/h2;->b:J

    iget-object p1, p0, Lrich/h2;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrich/h2;->c:Ljava/lang/String;

    const-string p1, "getSimOperator SysOperator= "

    :goto_0
    invoke-static {p1}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lrich/h2;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lrich/h2;->c:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, "\u4f7f\u7528\u7f13\u5b58operator Operator= "

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method
