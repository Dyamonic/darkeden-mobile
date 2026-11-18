.class public Lrich/r1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrich/r1;->a:I

    iput-object p2, p0, Lrich/r1;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lrich/r1;
    .locals 2

    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    sparse-switch p0, :sswitch_data_0

    new-instance v1, Lrich/r1;

    invoke-direct {v1, p0, v0}, Lrich/r1;-><init>(ILjava/lang/String;)V

    return-object v1

    :sswitch_0
    new-instance p0, Lrich/r1;

    const v0, 0x30d72

    const-string v1, "EOF\u5f02\u5e38"

    invoke-direct {p0, v0, v1}, Lrich/r1;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_1
    new-instance p0, Lrich/r1;

    const v0, 0x30d67

    const-string v1, "\u7535\u4fe1\u53d6\u53f7\u63a5\u53e3\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lrich/r1;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_2
    new-instance p0, Lrich/r1;

    const v0, 0x30d59

    const-string v1, "\u767b\u5f55\u8d85\u65f6"

    invoke-direct {p0, v0, v1}, Lrich/r1;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_3
    new-instance p0, Lrich/r1;

    const v0, 0x1906c

    const-string v1, "\u6570\u636e\u7f51\u7edc\u5207\u6362\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lrich/r1;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_4
    new-instance p0, Lrich/r1;

    const v0, 0x18f4f

    const-string v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-direct {p0, v0, v1}, Lrich/r1;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_5
    new-instance p0, Lrich/r1;

    const v1, 0x18ed6

    invoke-direct {p0, v1, v0}, Lrich/r1;-><init>(ILjava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18ed6 -> :sswitch_5
        0x18f4f -> :sswitch_4
        0x1906c -> :sswitch_3
        0x30d59 -> :sswitch_2
        0x30d67 -> :sswitch_1
        0x30d72 -> :sswitch_0
    .end sparse-switch
.end method
