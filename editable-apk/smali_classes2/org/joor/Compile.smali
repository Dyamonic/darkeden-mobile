.class Lorg/joor/Compile;
.super Ljava/lang/Object;
.source "Compile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joor/Compile$CharSequenceJavaFileObject;,
        Lorg/joor/Compile$ThrowingBiFunction;,
        Lorg/joor/Compile$ClassFileManager;,
        Lorg/joor/Compile$JavaFileObject;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compile(Ljava/lang/String;Ljava/lang/String;Lorg/joor/CompileOptions;)Ljava/lang/Class;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/joor/CompileOptions;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "-classpath"

    .line 56
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 60
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    invoke-static {}, Ljavax/tools/ToolProvider;->getSystemJavaCompiler()Ljavax/tools/JavaCompiler;

    move-result-object v4

    .line 66
    :try_start_1
    new-instance v11, Lorg/joor/Compile$ClassFileManager;

    const/4 v12, 0x0

    invoke-interface {v4, v12, v12, v12}, Ljavax/tools/JavaCompiler;->getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Ljavax/tools/StandardJavaFileManager;

    move-result-object v5

    invoke-direct {v11, v5}, Lorg/joor/Compile$ClassFileManager;-><init>(Ljavax/tools/StandardJavaFileManager;)V

    .line 68
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v5, Lorg/joor/Compile$CharSequenceJavaFileObject;

    move-object/from16 v6, p1

    invoke-direct {v5, v1, v6}, Lorg/joor/Compile$CharSequenceJavaFileObject;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 72
    new-instance v8, Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/joor/CompileOptions;->options:Ljava/util/List;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path.separator"

    .line 75
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.class.path"

    .line 76
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v9, ""

    .line 78
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 79
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    instance-of v7, v3, Ljava/net/URLClassLoader;

    if-eqz v7, :cond_3

    .line 82
    move-object v7, v3

    check-cast v7, Ljava/net/URLClassLoader;

    invoke-virtual {v7}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v7

    array-length v14, v7

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_3

    aget-object v16, v7, v15

    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v12, "file"

    .line 86
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 87
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v6, v5

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    move-object v6, v11

    .line 94
    invoke-interface/range {v4 .. v10}, Ljavax/tools/JavaCompiler;->getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljavax/tools/JavaCompiler$CompilationTask;

    move-result-object v2

    .line 96
    iget-object v4, v0, Lorg/joor/CompileOptions;->processors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 97
    iget-object v0, v0, Lorg/joor/CompileOptions;->processors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljavax/tools/JavaCompiler$CompilationTask;->setProcessors(Ljava/lang/Iterable;)V

    .line 99
    :cond_5
    invoke-interface {v2}, Ljavax/tools/JavaCompiler$CompilationTask;->call()Ljava/lang/Boolean;

    .line 101
    invoke-virtual {v11}, Lorg/joor/Compile$ClassFileManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 107
    sget-object v0, Lorg/joor/Reflect;->CACHED_LOOKUP_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_6

    .line 108
    new-instance v0, Lorg/joor/-$$Lambda$Compile$L_xCOSXU4OVlOrhB2HZI3589RBk;

    invoke-direct {v0, v3}, Lorg/joor/-$$Lambda$Compile$L_xCOSXU4OVlOrhB2HZI3589RBk;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v11, v1, v0}, Lorg/joor/Compile$ClassFileManager;->loadAndReturnMainClass(Ljava/lang/String;Lorg/joor/Compile$ThrowingBiFunction;)Ljava/lang/Class;

    move-result-object v12

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :goto_1
    return-object v12

    .line 102
    :cond_7
    new-instance v0, Lorg/joor/ReflectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compilation error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/joor/ReflectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/joor/ReflectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    .line 158
    new-instance v2, Lorg/joor/ReflectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while compiling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/joor/ReflectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 155
    throw v0
.end method

.method static synthetic lambda$compile$0(Ljava/lang/ClassLoader;Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lorg/joor/Reflect;->on(Ljava/lang/Object;)Lorg/joor/Reflect;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "defineClass"

    invoke-virtual {p0, p1, v0}, Lorg/joor/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lorg/joor/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joor/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method
