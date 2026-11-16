.class Lorg/joor/Reflect$1;
.super Ljava/lang/Object;
.source "Reflect.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/joor/Reflect;->as(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/joor/Reflect;

.field final synthetic val$isMap:Z

.field final synthetic val$proxyType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/joor/Reflect;ZLjava/lang/Class;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lorg/joor/Reflect$1;->this$0:Lorg/joor/Reflect;

    iput-boolean p2, p0, Lorg/joor/Reflect$1;->val$isMap:Z

    iput-object p3, p0, Lorg/joor/Reflect$1;->val$proxyType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 752
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 756
    :try_start_0
    iget-object v1, p0, Lorg/joor/Reflect$1;->this$0:Lorg/joor/Reflect;

    invoke-static {v1}, Lorg/joor/Reflect;->access$000(Lorg/joor/Reflect;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/joor/Reflect$1;->this$0:Lorg/joor/Reflect;

    invoke-static {v2}, Lorg/joor/Reflect;->access$100(Lorg/joor/Reflect;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/joor/Reflect;->access$200(Ljava/lang/Class;Ljava/lang/Object;)Lorg/joor/Reflect;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/joor/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lorg/joor/Reflect;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joor/Reflect;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/joor/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 761
    iget-boolean v2, p0, Lorg/joor/Reflect$1;->val$isMap:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 762
    iget-object v2, p0, Lorg/joor/Reflect$1;->this$0:Lorg/joor/Reflect;

    invoke-static {v2}, Lorg/joor/Reflect;->access$100(Lorg/joor/Reflect;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez p3, :cond_0

    move v6, v5

    goto :goto_0

    .line 763
    :cond_0
    array-length v6, p3

    :goto_0
    const/4 v7, 0x3

    if-nez v6, :cond_1

    const-string v8, "get"

    .line 765
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 766
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/joor/Reflect;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v6, :cond_2

    const-string v8, "is"

    .line 768
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 769
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/joor/Reflect;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    if-ne v6, v4, :cond_3

    const-string v6, "set"

    .line 771
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 772
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/joor/Reflect;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p3, v5

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 778
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    sget-object v0, Lorg/joor/Reflect;->CACHED_LOOKUP_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_4

    .line 792
    const-class v0, Ljava/lang/invoke/MethodHandles;

    invoke-static {v0}, Lorg/joor/Reflect;->onClass(Ljava/lang/Class;)Lorg/joor/Reflect;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/joor/Reflect$1;->val$proxyType:Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 793
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "privateLookupIn"

    invoke-virtual {v0, v2, v1}, Lorg/joor/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lorg/joor/Reflect;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/joor/Reflect$1;->val$proxyType:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-string v2, "in"

    .line 794
    invoke-virtual {v0, v2, v1}, Lorg/joor/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lorg/joor/Reflect;

    move-result-object v0

    .line 795
    invoke-virtual {v0}, Lorg/joor/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;

    goto :goto_1

    .line 800
    :cond_4
    sget-object v0, Lorg/joor/Reflect;->CACHED_LOOKUP_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/joor/Reflect$1;->val$proxyType:Ljava/lang/Class;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 802
    :goto_1
    iget-object v1, p0, Lorg/joor/Reflect$1;->val$proxyType:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    .line 803
    invoke-virtual {p2, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 804
    invoke-virtual {p1, p3}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 808
    :cond_5
    throw v1
.end method
