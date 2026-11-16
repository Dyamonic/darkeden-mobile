.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2


# instance fields
.field public config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected contex:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field protected extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field public fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1

    .line 134
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 90
    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 93
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 94
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 138
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 139
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 140
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 142
    iget-char p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v0, 0x1a

    const/16 v1, 0x7b

    if-ne p2, v1, :cond_1

    .line 143
    iget p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 144
    iget v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 p2, 0xc

    .line 147
    iput p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_2

    .line 148
    :cond_1
    iget-char p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5b

    if-ne p2, v1, :cond_3

    .line 149
    iget p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 150
    iget v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    iput-char v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 p2, 0xe

    .line 153
    iput p2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_2

    .line 155
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2

    .line 122
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1

    .line 126
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1

    .line 130
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    .line 1452
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, p1, :cond_0

    .line 1453
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    .line 1455
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", actual "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1456
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2

    .line 1303
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1304
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkListResolve(Ljava/util/Collection;)V
    .locals 4

    .line 1056
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1058
    new-instance v2, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v2, p0, v3, p1}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1059
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object p1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1060
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_0

    .line 1062
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1063
    new-instance v2, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v2, p1}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1064
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object p1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1065
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :goto_0
    return-void
.end method

.method protected checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 1071
    new-instance v0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1072
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object p1

    .line 1073
    iput-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1074
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object p2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 p1, 0x0

    .line 1075
    iput p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return-void
.end method

.method public close()V
    .locals 3

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-void

    .line 1463
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not close json text, token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 1466
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v0
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    return-void
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 103
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .line 1314
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .line 1321
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .line 1310
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 8

    .line 1471
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 1475
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_6

    .line 1476
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1477
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-nez v3, :cond_1

    goto :goto_3

    .line 1484
    :cond_1
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1485
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 1488
    :goto_1
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$000(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "$"

    .line 1490
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v0

    .line 1491
    :goto_2
    iget v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v2, v7, :cond_5

    .line 1492
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1493
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1497
    :cond_4
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$100(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    iget-object v5, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1499
    :cond_5
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1362
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1366
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    const/16 v4, 0x10

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xe

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    const-string v3, "syntax error, "

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1443
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1373
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1374
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1375
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    .line 1368
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1369
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1370
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    .line 1437
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v2

    .line 1440
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1422
    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1424
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne p1, v0, :cond_1

    .line 1427
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1429
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1430
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1431
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/16 p1, 0xb

    .line 1433
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1435
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 1425
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1413
    :pswitch_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v2

    .line 1419
    :pswitch_5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1420
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 1416
    :pswitch_6
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1417
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 1378
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1379
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    .line 1382
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1385
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1396
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 1397
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1399
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 1400
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 1402
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1403
    iget-object p1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p1

    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw p1

    :cond_7
    :goto_1
    return-object p1

    .line 1391
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    .line 1392
    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object p1

    .line 1393
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object p1

    .line 1387
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object p1

    .line 1388
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .line 701
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    .line 706
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 7

    .line 711
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_e

    .line 720
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    if-ne v0, p1, :cond_2

    .line 721
    sget-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 722
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 723
    :cond_2
    const-class v0, Ljava/lang/String;

    if-ne v0, p1, :cond_3

    .line 724
    sget-object v0, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 725
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 727
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 728
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 731
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 732
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-nez v3, :cond_4

    .line 733
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v3, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_4
    const/4 p3, 0x0

    .line 737
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 738
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 742
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0xf

    if-ne v3, v5, :cond_6

    .line 782
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 785
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-void

    .line 746
    :cond_6
    :try_start_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    if-ne v3, p1, :cond_7

    .line 747
    sget-object v3, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v3, p0, v5, v5}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 748
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 749
    :cond_7
    const-class v3, Ljava/lang/String;

    if-ne v3, p1, :cond_a

    .line 751
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v1, :cond_8

    .line 752
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 753
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 755
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_2

    .line 758
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v3, v5

    .line 761
    :goto_3
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 764
    :cond_a
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_b

    .line 765
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_4

    .line 768
    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p0, p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 770
    :goto_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 771
    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c

    .line 772
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 776
    :cond_c
    :goto_5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v4, :cond_d

    .line 777
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 782
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    throw p1

    .line 716
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exepct \'[\', but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p3, p3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {p3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    .line 1092
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1097
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    .line 1099
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1100
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :cond_1
    const/16 v3, 0xe

    if-ne v2, v3, :cond_2a

    .line 1107
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 1109
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v2, :cond_2

    move-object/from16 v5, p2

    .line 1111
    invoke-virtual {v1, v4, v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1116
    :cond_2
    :try_start_0
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x7b

    const/16 v7, 0x5d

    const/4 v9, 0x4

    const/16 v10, 0xc

    const/16 v12, 0x22

    const/16 v13, 0x10

    const/4 v14, 0x1

    if-eq v5, v12, :cond_7

    if-ne v5, v7, :cond_4

    .line 1119
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1120
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 1297
    iput-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_3
    return-void

    :cond_4
    if-ne v5, v6, :cond_6

    .line 1126
    :try_start_1
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v14

    iput v15, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1127
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v15, v8, :cond_5

    const/16 v8, 0x1a

    goto :goto_0

    :cond_5
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1129
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_0
    iput-char v8, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1131
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput v10, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1133
    :cond_6
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    .line 1137
    :cond_7
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v8, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v5, v8

    if-nez v5, :cond_8

    move v5, v14

    goto :goto_2

    .line 1140
    :cond_8
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v5, :cond_12

    .line 1147
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v15, v12, :cond_12

    .line 1148
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v15

    .line 1150
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v11, 0x2c

    if-ne v6, v11, :cond_d

    .line 1154
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v14

    iput v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1155
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v11, v3, :cond_9

    const/16 v3, 0x1a

    goto :goto_4

    :cond_9
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1157
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_4
    iput-char v3, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1159
    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1160
    iget v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v6, v14, :cond_a

    .line 1161
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_a
    if-ne v3, v12, :cond_c

    const/4 v11, 0x0

    :cond_b
    :goto_5
    const/16 v15, 0x7b

    goto/16 :goto_e

    .line 1170
    :cond_c
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    if-ne v6, v7, :cond_11

    .line 1174
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v14

    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1175
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_e

    const/16 v8, 0x1a

    goto :goto_6

    :cond_e
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1177
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1179
    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1180
    iget v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v3, v14, :cond_f

    .line 1181
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1183
    :cond_f
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_10

    .line 1297
    iput-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_10
    return-void

    .line 1186
    :cond_11
    :try_start_2
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1190
    :cond_12
    :goto_7
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_8
    if-ne v3, v13, :cond_13

    .line 1192
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1193
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_8

    :cond_13
    const/4 v6, 0x2

    const/4 v11, 0x0

    if-eq v3, v6, :cond_23

    const/4 v6, 0x3

    if-eq v3, v6, :cond_21

    if-eq v3, v9, :cond_1f

    const/4 v6, 0x6

    if-eq v3, v6, :cond_1e

    const/4 v6, 0x7

    if-eq v3, v6, :cond_1d

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1c

    if-eq v3, v10, :cond_1a

    const/16 v6, 0x14

    if-eq v3, v6, :cond_19

    const/16 v6, 0x17

    if-eq v3, v6, :cond_18

    const/16 v6, 0xe

    if-eq v3, v6, :cond_17

    const/16 v11, 0xf

    if-eq v3, v11, :cond_15

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    :cond_14
    :goto_9
    move-object v3, v11

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 1258
    :cond_15
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_16

    .line 1297
    iput-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_16
    return-void

    .line 1245
    :cond_17
    :try_start_3
    new-instance v11, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1246
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_9

    :cond_18
    const/16 v6, 0xe

    .line 1255
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_9

    .line 1261
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed jsonArray"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/16 v6, 0xe

    .line 1237
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_1b

    .line 1238
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_a

    .line 1240
    :cond_1b
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1242
    :goto_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_9

    :cond_1c
    const/16 v6, 0xe

    .line 1251
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_9

    :cond_1d
    const/16 v6, 0xe

    .line 1232
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1233
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_9

    :cond_1e
    const/16 v6, 0xe

    .line 1228
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1229
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_9

    :cond_1f
    const/16 v6, 0xe

    .line 1211
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v11

    .line 1212
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1214
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v15, v15, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v15

    if-eqz v3, :cond_14

    .line 1215
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 1217
    iget-object v11, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 1221
    :cond_20
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto/16 :goto_9

    :cond_21
    const/16 v6, 0xe

    .line 1203
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_22

    .line 1204
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v3

    const/4 v11, 0x0

    goto :goto_b

    .line 1206
    :cond_22
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v3

    .line 1208
    :goto_b
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_c

    :cond_23
    const/16 v6, 0xe

    const/4 v11, 0x0

    .line 1199
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v3

    .line 1200
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1267
    :goto_c
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1268
    iget v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v3, v14, :cond_24

    .line 1269
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1271
    :cond_24
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v13, :cond_b

    .line 1273
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v3, v12, :cond_25

    .line 1275
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 1276
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_5

    :cond_25
    const/16 v15, 0x30

    if-lt v3, v15, :cond_26

    const/16 v15, 0x39

    if-gt v3, v15, :cond_26

    .line 1278
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 1279
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_5

    :cond_26
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_28

    .line 1281
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput v10, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1284
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v6, v14

    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1285
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_27

    const/16 v6, 0x1a

    goto :goto_d

    :cond_27
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1287
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_d
    iput-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    .line 1290
    :cond_28
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_e
    add-int/lit8 v8, v8, 0x1

    move v6, v15

    const/16 v3, 0xe

    const/16 v7, 0x5d

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    if-nez v2, :cond_29

    .line 1297
    iput-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_29
    throw v0

    .line 1104
    :cond_2a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, expect [, actual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pos "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 789
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-ne v2, v3, :cond_0

    .line 790
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v4

    .line 794
    :cond_0
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0xe

    const-string v7, "syntax error, "

    if-ne v2, v6, :cond_13

    .line 798
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 799
    array-length v8, v1

    const/4 v9, 0x0

    const/16 v10, 0xf

    if-nez v8, :cond_2

    .line 800
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 802
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v10, :cond_1

    .line 806
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    new-array v1, v9, [Ljava/lang/Object;

    return-object v1

    .line 803
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
    :cond_2
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move v8, v9

    .line 812
    :goto_0
    array-length v12, v1

    if-ge v8, v12, :cond_11

    .line 815
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v12, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v12, v3, :cond_3

    .line 817
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v12, v4

    goto/16 :goto_5

    .line 819
    :cond_3
    aget-object v12, v1, v8

    .line 820
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v13, :cond_c

    const-class v13, Ljava/lang/Integer;

    if-ne v12, v13, :cond_4

    goto/16 :goto_4

    .line 828
    :cond_4
    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_6

    .line 829
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v13, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_5

    .line 830
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v12

    .line 831
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_5

    .line 833
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v13

    .line 834
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v13, v12, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_5

    .line 839
    :cond_6
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_7

    .line 840
    instance-of v13, v12, Ljava/lang/Class;

    if-eqz v13, :cond_7

    .line 841
    move-object v13, v12

    check-cast v13, Ljava/lang/Class;

    .line 842
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v14

    .line 843
    invoke-virtual {v13}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v13

    goto :goto_1

    :cond_7
    move-object v13, v4

    move v14, v9

    :goto_1
    if-eqz v14, :cond_b

    .line 848
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v14, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eq v14, v6, :cond_b

    .line 849
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 851
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v13

    .line 853
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eq v15, v10, :cond_a

    .line 856
    :goto_2
    invoke-interface {v13, v0, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 855
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v15, v5, :cond_8

    .line 859
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v3, 0xc

    invoke-virtual {v15, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v3, 0x8

    goto :goto_2

    .line 860
    :cond_8
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v10, :cond_9

    goto :goto_3

    .line 863
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 868
    :cond_a
    :goto_3
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v14, v12, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_5

    .line 870
    :cond_b
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 871
    invoke-interface {v3, v0, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_5

    .line 821
    :cond_c
    :goto_4
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v11, :cond_d

    .line 822
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 823
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_5

    .line 825
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 826
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v3, v12, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    .line 875
    :goto_5
    aput-object v12, v2, v8

    .line 877
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v10, :cond_e

    goto :goto_7

    .line 881
    :cond_e
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v5, :cond_10

    .line 885
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ne v8, v3, :cond_f

    .line 886
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 888
    :cond_f
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x8

    goto/16 :goto_0

    .line 882
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 892
    :cond_11
    :goto_7
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v10, :cond_12

    .line 896
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v2

    .line 893
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 795
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6

    .line 984
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 985
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 p1, 0x0

    return-object p1

    .line 989
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 991
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    .line 995
    aget-object v0, v0, v1

    .line 997
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 998
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 999
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object p1

    .line 1003
    :cond_1
    instance-of v3, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_4

    .line 1004
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 1007
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v1, v2, v1

    .line 1010
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1011
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 1013
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1015
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object p1

    .line 1027
    :cond_4
    instance-of v3, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_6

    .line 1028
    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 1029
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1031
    array-length v5, v4

    if-ne v5, v2, :cond_5

    .line 1035
    aget-object v1, v4, v1

    .line 1036
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_6

    .line 1037
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    return-object p1

    .line 1032
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1043
    :cond_6
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    .line 1044
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1046
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    return-object p1

    .line 1051
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :goto_0
    const/4 v1, 0x0

    .line 1087
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 655
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 659
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 665
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 p1, 0x0

    return-object p1

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 670
    const-class v0, [B

    if-ne p1, v0, :cond_1

    .line 671
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object p1

    .line 672
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object p1

    .line 676
    :cond_1
    const-class v0, [C

    if-ne p1, v0, :cond_2

    .line 677
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 678
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 686
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 690
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 688
    throw p1
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1080
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 161
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 163
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 165
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v6

    :cond_0
    const/16 v7, 0xc

    const/16 v8, 0x10

    if-eq v4, v7, :cond_2

    if-ne v4, v8, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    :goto_0
    instance-of v4, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_3

    .line 176
    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 177
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v4

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v0

    const/4 v11, 0x0

    .line 185
    :goto_1
    iget v12, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v13, v13, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 186
    :goto_2
    iget-boolean v13, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 188
    iget-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v15, 0x0

    .line 192
    :goto_3
    :try_start_0
    iget-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    const/16 v7, 0x22

    if-eq v6, v7, :cond_5

    if-eq v6, v5, :cond_5

    .line 195
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 196
    iget-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_5
    :goto_4
    const/16 v8, 0x2c

    if-ne v6, v8, :cond_6

    .line 200
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 201
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 202
    iget-char v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    const-string v8, "expect \':\' at "

    const/16 v9, 0x3a

    const-string v10, "syntax error, "

    const/16 v5, 0x1a

    if-ne v6, v7, :cond_9

    .line 208
    :try_start_1
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 210
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v7, v9, :cond_8

    .line 212
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 213
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v9, :cond_7

    goto :goto_5

    .line 216
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_9
    const/16 v7, 0x7d

    if-ne v6, v7, :cond_c

    .line 222
    iget v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 223
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_a

    goto :goto_6

    :cond_a
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 225
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_6
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x0

    .line 227
    iput v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x10

    .line 228
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_b

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_b
    return-object v0

    :cond_c
    const/16 v7, 0x27

    if-ne v6, v7, :cond_f

    .line 231
    :try_start_2
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 232
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v7, v9, :cond_d

    .line 233
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 235
    :cond_d
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v9, :cond_e

    goto :goto_5

    .line 237
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-eq v6, v5, :cond_6f

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_6e

    const/16 v7, 0x30

    if-lt v6, v7, :cond_10

    const/16 v7, 0x39

    if-le v6, v7, :cond_11

    :cond_10
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_15

    :cond_11
    const/4 v6, 0x0

    .line 244
    iput v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 245
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    .line 248
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v6

    goto :goto_7

    :cond_12
    const/4 v6, 0x1

    .line 250
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    move-object v6, v7

    :goto_7
    if-eqz v11, :cond_13

    .line 254
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :cond_13
    :try_start_4
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v9, :cond_14

    goto/16 :goto_5

    .line 261
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse number key error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :catch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse number key error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v7, 0x7b

    if-eq v6, v7, :cond_18

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_16

    goto :goto_8

    .line 268
    :cond_16
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 270
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v9, :cond_17

    if-eqz v11, :cond_8

    .line 276
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 272
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_18
    :goto_8
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    :goto_9
    const/16 v8, 0xd

    if-nez v7, :cond_1c

    .line 283
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v9, 0x1

    add-int/2addr v7, v9

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 284
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_19

    move v7, v5

    goto :goto_a

    :cond_19
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 286
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_a
    iput-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/16 v9, 0x20

    if-gt v7, v9, :cond_1b

    const/16 v9, 0x20

    if-eq v7, v9, :cond_1a

    const/16 v9, 0xa

    if-eq v7, v9, :cond_1a

    if-eq v7, v8, :cond_1a

    const/16 v9, 0x9

    if-eq v7, v9, :cond_1a

    const/16 v9, 0xc

    if-eq v7, v9, :cond_1a

    const/16 v9, 0x8

    if-ne v7, v9, :cond_1d

    goto :goto_c

    :cond_1a
    const/16 v9, 0x8

    .line 299
    :goto_c
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 300
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_1b
    const/16 v9, 0x8

    goto :goto_d

    :cond_1c
    const/16 v9, 0x8

    .line 306
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_1d
    :goto_d
    const/4 v5, 0x0

    .line 309
    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v5, "@type"

    if-ne v6, v5, :cond_2b

    .line 311
    :try_start_5
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 312
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 313
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v7, 0x22

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 314
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v10, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_1e

    .line 317
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto/16 :goto_3

    :cond_1e
    const/16 v4, 0x10

    .line 321
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 322
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v8, :cond_26

    .line 323
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    :try_start_6
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 327
    instance-of v3, v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v3, :cond_20

    .line 328
    check-cast v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 329
    invoke-virtual {v2, v1, v7}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 331
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 332
    check-cast v4, Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 334
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_1f

    .line 335
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 337
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_20
    move-object v3, v10

    :cond_21
    if-nez v3, :cond_24

    .line 344
    const-class v0, Ljava/lang/Cloneable;

    if-ne v7, v0, :cond_22

    .line 345
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_f

    :cond_22
    const-string v0, "java.util.Collections$EmptyMap"

    .line 346
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_f

    .line 349
    :cond_23
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_24
    :goto_f
    if-nez v13, :cond_25

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_25
    return-object v3

    :catch_1
    move-exception v0

    .line 355
    :try_start_7
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "create instance error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_26
    const/4 v3, 0x2

    .line 359
    iput v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 361
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v3, :cond_27

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_27

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 365
    :cond_27
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 366
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v0, v7, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 367
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v13, :cond_28

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_28
    return-object v0

    .line 371
    :cond_29
    :try_start_8
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 372
    invoke-interface {v0, v1, v7, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v13, :cond_2a

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2a
    return-object v0

    :cond_2b
    const/4 v5, 0x0

    :try_start_9
    const-string v9, "$ref"

    const/4 v5, 0x4

    if-ne v6, v9, :cond_38

    if-eqz v14, :cond_38

    .line 375
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 377
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_38

    .line 379
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 380
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v5, :cond_37

    .line 381
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const-string v2, "@"

    .line 385
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 386
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 387
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 388
    instance-of v4, v2, [Ljava/lang/Object;

    if-nez v4, :cond_2d

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_2c

    goto :goto_10

    .line 390
    :cond_2c
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v2, :cond_34

    .line 391
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_13

    :cond_2d
    :goto_10
    move-object v6, v2

    goto :goto_13

    :cond_2e
    const-string v2, ".."

    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 394
    iget-object v2, v14, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v2, :cond_2f

    .line 395
    iget-object v6, v14, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_13

    .line 397
    :cond_2f
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v14, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 398
    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_12

    :cond_30
    const-string v2, "$"

    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    move-object v2, v14

    .line 402
    :goto_11
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v4, :cond_31

    .line 403
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_11

    .line 406
    :cond_31
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_32

    .line 407
    iget-object v0, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v6, v0

    goto :goto_13

    .line 409
    :cond_32
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v4, v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 410
    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_12

    .line 413
    :cond_33
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v14, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 414
    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :cond_34
    :goto_12
    const/4 v6, 0x0

    .line 417
    :goto_13
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v8, :cond_36

    const/16 v0, 0x10

    .line 420
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v13, :cond_35

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_35
    return-object v6

    .line 418
    :cond_36
    :try_start_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_37
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal ref, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    if-nez v13, :cond_3a

    if-nez v15, :cond_3a

    .line 430
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v1, v9, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v9

    if-nez v14, :cond_39

    move-object v14, v9

    :cond_39
    const/16 v9, 0x22

    const/4 v15, 0x1

    goto :goto_14

    :cond_3a
    const/16 v9, 0x22

    :goto_14
    if-ne v7, v9, :cond_3e

    .line 439
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v5

    if-eqz v12, :cond_3c

    .line 443
    new-instance v7, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 444
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 445
    iget-object v5, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 447
    :cond_3b
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    :cond_3c
    if-eqz v4, :cond_3d

    .line 451
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 453
    :cond_3d
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_3e
    const/16 v9, 0x30

    if-lt v7, v9, :cond_3f

    const/16 v9, 0x39

    if-le v7, v9, :cond_40

    :cond_3f
    const/16 v9, 0x2d

    if-ne v7, v9, :cond_41

    .line 456
    :cond_40
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumberValue()Ljava/lang/Number;

    move-result-object v5

    .line 457
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    move/from16 v17, v11

    goto/16 :goto_20

    :cond_41
    const/16 v9, 0x5b

    if-ne v7, v9, :cond_49

    const/16 v5, 0xe

    .line 459
    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 462
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 463
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v7, :cond_42

    const/16 v5, 0x1a

    goto :goto_16

    :cond_42
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 465
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_16
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 467
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_43

    .line 469
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Ljava/lang/Integer;

    if-ne v7, v9, :cond_43

    const/4 v7, 0x1

    goto :goto_17

    :cond_43
    const/4 v7, 0x0

    :goto_17
    if-nez v7, :cond_44

    .line 471
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 474
    :cond_44
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 475
    new-instance v7, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    if-eqz v4, :cond_45

    .line 477
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 479
    :cond_45
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_18
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v8, :cond_47

    const/16 v6, 0x10

    .line 484
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v13, :cond_46

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_46
    return-object v0

    :cond_47
    const/16 v6, 0x10

    if-ne v5, v6, :cond_48

    move/from16 v17, v11

    :goto_19
    const/4 v5, 0x0

    goto/16 :goto_22

    .line 489
    :cond_48
    :try_start_b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v9, 0x7b

    if-ne v7, v9, :cond_59

    .line 493
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 494
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v7, :cond_4a

    const/16 v5, 0x1a

    goto :goto_1a

    :cond_4a
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 496
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1a
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v9, 0xc

    .line 497
    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 500
    instance-of v5, v2, Ljava/lang/Integer;

    .line 502
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_4b

    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v7, v9}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_1b

    :cond_4b
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :goto_1b
    if-nez v13, :cond_4c

    if-nez v5, :cond_4c

    .line 510
    invoke-virtual {v1, v14, v7, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v9

    goto :goto_1c

    :cond_4c
    const/4 v9, 0x0

    .line 515
    :goto_1c
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz v8, :cond_4e

    if-eqz v6, :cond_4d

    .line 516
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v17, v11

    goto :goto_1d

    :cond_4d
    move/from16 v17, v11

    const/4 v8, 0x0

    .line 517
    :goto_1d
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    invoke-interface {v11, v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v8

    if-eqz v8, :cond_4f

    .line 519
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v11

    .line 520
    invoke-interface {v11, v1, v8, v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v11, 0x1

    goto :goto_1e

    :cond_4e
    move/from16 v17, v11

    :cond_4f
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1e
    if-nez v11, :cond_50

    .line 525
    invoke-virtual {v1, v7, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :cond_50
    if-eqz v9, :cond_51

    if-eq v7, v8, :cond_51

    .line 528
    iput-object v0, v9, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 531
    :cond_51
    iget v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_52

    .line 532
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_52
    if-eqz v4, :cond_53

    .line 536
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 538
    :cond_53
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    if-eqz v5, :cond_54

    .line 542
    invoke-virtual {v1, v14, v8, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 545
    :cond_54
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0xd

    if-ne v5, v6, :cond_57

    const/16 v6, 0x10

    .line 547
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-nez v13, :cond_55

    .line 550
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_55
    if-nez v13, :cond_56

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_56
    return-object v0

    :cond_57
    const/16 v6, 0x10

    if-ne v5, v6, :cond_58

    goto/16 :goto_19

    .line 556
    :cond_58
    :try_start_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    move/from16 v17, v11

    const/16 v8, 0x74

    if-ne v7, v8, :cond_5a

    .line 559
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "true"

    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 560
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x3

    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 561
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 562
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_5a
    const/16 v8, 0x66

    if-ne v7, v8, :cond_69

    .line 565
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v8, "false"

    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 566
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v5

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 567
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 568
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_5b
    :goto_20
    iget-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_5c

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_5c

    .line 591
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 592
    iget-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_5c
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_5e

    .line 598
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 599
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_5d

    const/16 v5, 0x1a

    goto :goto_21

    :cond_5d
    iget-object v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 601
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_21
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v5, 0x0

    const/16 v6, 0x10

    :goto_22
    const/4 v7, 0x1

    goto/16 :goto_28

    :cond_5e
    const/16 v4, 0x7d

    if-ne v5, v4, :cond_68

    .line 607
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 608
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_5f

    const/16 v4, 0x1a

    goto :goto_23

    :cond_5f
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 610
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_23
    iput-char v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v5, 0x0

    .line 612
    iput v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_61

    .line 615
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 616
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_60

    const/16 v5, 0x1a

    goto :goto_24

    :cond_60
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 618
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_24
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x10

    .line 619
    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_27

    :cond_61
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_63

    .line 621
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 622
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_62

    const/16 v5, 0x1a

    goto :goto_25

    :cond_62
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 624
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_25
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0xd

    .line 625
    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_27

    :cond_63
    const/16 v5, 0x5d

    if-ne v4, v5, :cond_65

    .line 627
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v7, 0x1

    add-int/2addr v4, v7

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 628
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_64

    const/16 v5, 0x1a

    goto :goto_26

    :cond_64
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 630
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_26
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0xf

    .line 631
    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_27

    .line 633
    :cond_65
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_27
    if-nez v13, :cond_66

    .line 637
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v1, v3, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_66
    if-nez v13, :cond_67

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_67
    return-object v0

    .line 642
    :cond_68
    :try_start_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 571
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v8

    .line 574
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v11, Lcom/alibaba/fastjson/JSONObject;

    if-ne v9, v11, :cond_6a

    .line 575
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 574
    :cond_6a
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget v6, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0xd

    if-ne v6, v8, :cond_6c

    const/16 v6, 0x10

    .line 580
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v13, :cond_6b

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_6b
    return-object v0

    :cond_6c
    const/16 v6, 0x10

    .line 582
    :try_start_e
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v8, v6, :cond_6d

    :goto_28
    move v8, v6

    move/from16 v11, v17

    const/16 v5, 0x8

    const/16 v7, 0xc

    goto/16 :goto_3

    .line 585
    :cond_6d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_6e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_6f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_0
    move-exception v0

    if-nez v13, :cond_70

    .line 647
    iput-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_70
    throw v0
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 10

    .line 902
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 905
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 906
    check-cast v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 911
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    goto :goto_1

    .line 913
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 918
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    if-nez v2, :cond_4

    .line 921
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v6, v4, :cond_3

    .line 922
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-void

    .line 925
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v6, v5, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 932
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v3

    :goto_2
    const/16 v7, 0x3a

    if-nez v6, :cond_7

    .line 936
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v8, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_6

    .line 940
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 941
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 943
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v4, :cond_2

    .line 944
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    .line 937
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setter not found, class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", property "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 950
    :cond_7
    iget-object v2, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 951
    iget-object v8, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 953
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_8

    .line 954
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 955
    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v2, p0, v8, v3}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 956
    :cond_8
    const-class v9, Ljava/lang/String;

    if-ne v2, v9, :cond_9

    .line 957
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 958
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 959
    :cond_9
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_a

    .line 960
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 961
    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v2, p0, v8, v3}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 963
    :cond_a
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v2, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 965
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 966
    invoke-interface {v2, p0, v8, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 969
    :goto_3
    invoke-virtual {v6, p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 972
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v5, :cond_b

    goto/16 :goto_1

    .line 976
    :cond_b
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v4, :cond_2

    .line 977
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-void
.end method

.method public parseString()Ljava/lang/String;
    .locals 6

    .line 1504
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x10

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 1506
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1507
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2c

    const/16 v4, 0x1a

    if-ne v2, v3, :cond_1

    .line 1508
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1509
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v5, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1511
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_0
    iput-char v4, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1512
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput v1, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_3

    .line 1513
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_3

    .line 1514
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1515
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1517
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1518
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0xf

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_3

    .line 1519
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_5

    .line 1520
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1521
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1523
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_2
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1524
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0xd

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_3

    .line 1526
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_3
    return-object v0

    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 1532
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 1533
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v0

    .line 1537
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1543
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected popContext()V
    .locals 4

    .line 1335
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1336
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    .line 1337
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    return-void
.end method

.method protected setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2

    .line 1341
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1345
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1347
    iget p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1348
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez p2, :cond_1

    const/16 p2, 0x8

    new-array p2, p2, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1349
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    .line 1350
    :cond_1
    array-length p3, p2

    if-lt p1, p3, :cond_2

    .line 1351
    array-length p3, p2

    mul-int/lit8 p3, p3, 0x3

    div-int/lit8 p3, p3, 0x2

    .line 1352
    new-array p3, p3, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1353
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1354
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1356
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object p3, p2, p1

    return-object p3
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    return-void

    .line 1331
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    return-void
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method
