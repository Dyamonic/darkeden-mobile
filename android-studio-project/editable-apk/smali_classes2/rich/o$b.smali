.class public final enum Lrich/o$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrich/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lrich/o$b;

.field public static final enum b:Lrich/o$b;

.field public static final enum c:Lrich/o$b;

.field public static final enum d:Lrich/o$b;

.field public static final synthetic e:[Lrich/o$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lrich/o$b;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrich/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrich/o$b;->a:Lrich/o$b;

    new-instance v1, Lrich/o$b;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lrich/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrich/o$b;->b:Lrich/o$b;

    new-instance v3, Lrich/o$b;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lrich/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lrich/o$b;->c:Lrich/o$b;

    new-instance v5, Lrich/o$b;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lrich/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lrich/o$b;->d:Lrich/o$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lrich/o$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lrich/o$b;->e:[Lrich/o$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrich/o$b;
    .locals 1

    const-class v0, Lrich/o$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrich/o$b;

    return-object p0
.end method

.method public static values()[Lrich/o$b;
    .locals 1

    sget-object v0, Lrich/o$b;->e:[Lrich/o$b;

    invoke-virtual {v0}, [Lrich/o$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrich/o$b;

    return-object v0
.end method
