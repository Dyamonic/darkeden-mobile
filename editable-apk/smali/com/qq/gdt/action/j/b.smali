.class public Lcom/qq/gdt/action/j/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^([a-zA-Z][a-zA-Z\\d_]{0,63})$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/j/b;->a:Ljava/util/regex/Pattern;

    const-string v0, "^ams_reserved_(.*?)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/j/b;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionType\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    :goto_0
    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return v1

    :cond_0
    sget-object v0, Lcom/qq/gdt/action/j/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionType\u53c2\u6570\u53ea\u80fd\u5305\u542b\u5b57\u6bcd\u3001\u6570\u5b57\u548c\u4e0b\u5212\u7ebf\uff0c\u4e14\u53ea\u80fd\u4ee5\u5b57\u6bcd\u5f00\u5934\uff0c\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc764\u4e2a\u5b57\u7b26\uff01"

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lorg/json/JSONObject;)Z
    .locals 10

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string p0, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionParam\u53c2\u6570\u7684key\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    :goto_0
    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return v4

    :cond_2
    sget-object v3, Lcom/qq/gdt/action/j/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    const-string p0, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionParam\u53c2\u6570\u7684key\u53ea\u80fd\u5305\u542b\u5b57\u6bcd\u3001\u6570\u5b57\u548c\u4e0b\u5212\u7ebf\uff0c\u4e14\u4e0d\u80fd\u4ee5\u6570\u5b57\u5f00\u5934\uff0c\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc764\u4e2a\u5b57\u7b26\uff01"

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/qq/gdt/action/j/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SDK\u5185\u90e8\u9884\u7559\u53c2\u6570\u7684key\u5747\u4ee5\'ams_reserved_\'\u5f00\u5934\uff0c\u8be5\u53c2\u6570\u7684\u503c\u4f1a\u88abSDK\u5185\u90e8\u8986\u76d6\uff0c\u8bf7\u4e0d\u8981\u4f7f\u7528\uff01"

    invoke-static {v3}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/String;

    const/4 v6, 0x2

    if-nez v5, :cond_5

    instance-of v5, v3, Ljava/lang/Number;

    if-nez v5, :cond_5

    instance-of v5, v3, Ljava/lang/Boolean;

    if-nez v5, :cond_5

    instance-of v5, v3, Lorg/json/JSONArray;

    if-nez v5, :cond_5

    const-string p0, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0cactionParam\u53c2\u6570\u7684value\u5fc5\u987b\u662fString/Number/Boolean/JSONArray\u4e2d\u7684\u4e00\u79cd\uff01[key=%s, value=%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return v4

    :cond_5
    instance-of v5, v3, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lorg/json/JSONArray;

    move v7, v4

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_6

    instance-of v9, v8, Ljava/lang/Number;

    if-nez v9, :cond_6

    instance-of v9, v8, Ljava/lang/Boolean;

    if-nez v9, :cond_6

    const-string p0, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0c\u5982\u679cactionParam\u53c2\u6570\u4e2d\u7684\u67d0\u4e2a\u5143\u7d20\u7684value\u662fJSONArray\uff0c\u90a3\u4e48\u8fd9\u4e2aJSONArray\u4e2d\u7684\u6bcf\u4e2a\u5143\u7d20\u5fc5\u987b\u662fString/Number/Boolean\u4e2d\u7684\u4e00\u79cd\uff01[key=%s, value=%s, %nvalue\u7684\u7b2c%d\u4e2a\u5143\u7d20\u4e3a%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p0, v1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return v4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move v6, v0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_8

    instance-of v8, v3, Ljava/lang/String;

    if-nez v8, :cond_a

    :cond_8
    instance-of v8, v7, Ljava/lang/Number;

    if-eqz v8, :cond_9

    instance-of v8, v3, Ljava/lang/Number;

    if-nez v8, :cond_a

    :cond_9
    instance-of v7, v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_b

    instance-of v7, v3, Ljava/lang/Boolean;

    if-nez v7, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    const-string p0, "\u5728logAction\u65b9\u6cd5\u4e2d\uff0c\u5982\u679cactionParam\u53c2\u6570\u4e2d\u7684\u67d0\u4e2a\u5143\u7d20\u7684value\u662fJSONArray\uff0c\u90a3\u4e48\u8fd9\u4e2aJSONArray\u4e2d\u6240\u6709\u5143\u7d20\u7684\u7c7b\u578b\u5fc5\u987b\u662f\u540c\u4e00\u79cd\uff01"

    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    new-array p0, v0, [Ljava/lang/Object;

    aput-object v2, p0, v4

    const-string v0, "Unexpected action param key. [key=\'%s\']"

    invoke-static {v0, p0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_c
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ACTIVATE_APP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u5982\u679c\u60a8\u60f3\u7edf\u8ba1App\u7684\u6fc0\u6d3b\u884c\u4e3a\uff0c\u53ea\u9700\u8981\u5728\u8c03\u7528logEvent\u65b9\u6cd5\u65f6\u4f20\u5165START_APP\u53c2\u6570\uff0cSDK\u4f1a\u81ea\u52a8\u8bc6\u522b\u672c\u6b21\u884c\u4e3a\u662f\u6fc0\u6d3b\u8fd8\u662f\u542f\u52a8\u884c\u4e3a\uff0c\u5e76\u8fdb\u884c\u4e0a\u62a5\u3002"

    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;)V

    const-string p0, "START_APP"

    :cond_0
    return-object p0
.end method
