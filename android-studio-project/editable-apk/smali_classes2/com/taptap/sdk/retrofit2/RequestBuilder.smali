.class final Lcom/taptap/sdk/retrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"

.field private static final PATH_TRAVERSAL:Ljava/util/regex/Pattern;


# instance fields
.field private final baseUrl:Lcom/taptap/sdk/okhttp3/HttpUrl;

.field private body:Lcom/taptap/sdk/okhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private contentType:Lcom/taptap/sdk/okhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private formBuilder:Lcom/taptap/sdk/okhttp3/FormBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final hasBody:Z

.field private final headersBuilder:Lcom/taptap/sdk/okhttp3/Headers$Builder;

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final requestBuilder:Lcom/taptap/sdk/okhttp3/Request$Builder;

.field private urlBuilder:Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 32
    fill-array-data v0, :array_0

    sput-object v0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->HEX_DIGITS:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/taptap/sdk/okhttp3/HttpUrl;Ljava/lang/String;Lcom/taptap/sdk/okhttp3/Headers;Lcom/taptap/sdk/okhttp3/MediaType;ZZZ)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/taptap/sdk/okhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/taptap/sdk/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->baseUrl:Lcom/taptap/sdk/okhttp3/HttpUrl;

    .line 78
    iput-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 79
    new-instance p1, Lcom/taptap/sdk/okhttp3/Request$Builder;

    invoke-direct {p1}, Lcom/taptap/sdk/okhttp3/Request$Builder;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->requestBuilder:Lcom/taptap/sdk/okhttp3/Request$Builder;

    .line 80
    iput-object p5, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;

    .line 81
    iput-boolean p6, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->hasBody:Z

    if-eqz p4, :cond_0

    .line 84
    invoke-virtual {p4}, Lcom/taptap/sdk/okhttp3/Headers;->newBuilder()Lcom/taptap/sdk/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->headersBuilder:Lcom/taptap/sdk/okhttp3/Headers$Builder;

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Lcom/taptap/sdk/okhttp3/Headers$Builder;

    invoke-direct {p1}, Lcom/taptap/sdk/okhttp3/Headers$Builder;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->headersBuilder:Lcom/taptap/sdk/okhttp3/Headers$Builder;

    :goto_0
    if-eqz p7, :cond_1

    .line 91
    new-instance p1, Lcom/taptap/sdk/okhttp3/FormBody$Builder;

    invoke-direct {p1}, Lcom/taptap/sdk/okhttp3/FormBody$Builder;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->formBuilder:Lcom/taptap/sdk/okhttp3/FormBody$Builder;

    goto :goto_1

    :cond_1
    if-eqz p8, :cond_2

    .line 94
    new-instance p1, Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;

    invoke-direct {p1}, Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->multipartBuilder:Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;

    .line 95
    sget-object p2, Lcom/taptap/sdk/okhttp3/MultipartBody;->FORM:Lcom/taptap/sdk/okhttp3/MediaType;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;->setType(Lcom/taptap/sdk/okhttp3/MediaType;)Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;

    :cond_2
    :goto_1
    return-void
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 138
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    const-string v4, " \"<>^`{}|\\?#"

    .line 141
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 144
    :cond_1
    :goto_1
    new-instance v3, Lcom/taptap/sdk/okio/Buffer;

    invoke-direct {v3}, Lcom/taptap/sdk/okio/Buffer;-><init>()V

    .line 145
    invoke-virtual {v3, p0, v1, v2}, Lcom/taptap/sdk/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/taptap/sdk/okio/Buffer;

    .line 146
    invoke-static {v3, p0, v2, v0, p1}, Lcom/taptap/sdk/retrofit2/RequestBuilder;->canonicalizeForPath(Lcom/taptap/sdk/okio/Buffer;Ljava/lang/String;IIZ)V

    .line 147
    invoke-virtual {v3}, Lcom/taptap/sdk/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static canonicalizeForPath(Lcom/taptap/sdk/okio/Buffer;Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string v2, " \"<>^`{}|\\?#"

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-nez p4, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {p0, v1}, Lcom/taptap/sdk/okio/Buffer;->writeUtf8CodePoint(I)Lcom/taptap/sdk/okio/Buffer;

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 170
    new-instance v0, Lcom/taptap/sdk/okio/Buffer;

    invoke-direct {v0}, Lcom/taptap/sdk/okio/Buffer;-><init>()V

    .line 172
    :cond_3
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/okio/Buffer;->writeUtf8CodePoint(I)Lcom/taptap/sdk/okio/Buffer;

    .line 173
    :goto_2
    invoke-virtual {v0}, Lcom/taptap/sdk/okio/Buffer;->exhausted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 174
    invoke-virtual {v0}, Lcom/taptap/sdk/okio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 175
    invoke-virtual {p0, v3}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    .line 176
    sget-object v4, Lcom/taptap/sdk/retrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    and-int/lit8 v2, v2, 0xf

    .line 177
    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    goto :goto_2

    .line 159
    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 209
    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->formBuilder:Lcom/taptap/sdk/okhttp3/FormBody$Builder;

    invoke-virtual {p3, p1, p2}, Lcom/taptap/sdk/okhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/FormBody$Builder;

    goto :goto_0

    .line 211
    :cond_0
    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->formBuilder:Lcom/taptap/sdk/okhttp3/FormBody$Builder;

    invoke-virtual {p3, p1, p2}, Lcom/taptap/sdk/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/FormBody$Builder;

    :goto_0
    return-void
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "Content-Type"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    invoke-static {p2}, Lcom/taptap/sdk/okhttp3/MediaType;->get(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_0
    if-eqz p3, :cond_1

    .line 111
    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->headersBuilder:Lcom/taptap/sdk/okhttp3/Headers$Builder;

    invoke-virtual {p3, p1, p2}, Lcom/taptap/sdk/okhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Headers$Builder;

    goto :goto_0

    .line 113
    :cond_1
    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->headersBuilder:Lcom/taptap/sdk/okhttp3/Headers$Builder;

    invoke-virtual {p3, p1, p2}, Lcom/taptap/sdk/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Headers$Builder;

    :goto_0
    return-void
.end method

.method addHeaders(Lcom/taptap/sdk/okhttp3/Headers;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->headersBuilder:Lcom/taptap/sdk/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/okhttp3/Headers$Builder;->addAll(Lcom/taptap/sdk/okhttp3/Headers;)Lcom/taptap/sdk/okhttp3/Headers$Builder;

    return-void
.end method

.method addPart(Lcom/taptap/sdk/okhttp3/Headers;Lcom/taptap/sdk/okhttp3/RequestBody;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->multipartBuilder:Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;->addPart(Lcom/taptap/sdk/okhttp3/Headers;Lcom/taptap/sdk/okhttp3/RequestBody;)Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;

    return-void
.end method

.method addPart(Lcom/taptap/sdk/okhttp3/MultipartBody$Part;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->multipartBuilder:Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;->addPart(Lcom/taptap/sdk/okhttp3/MultipartBody$Part;)Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;

    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 126
    invoke-static {p2, p3}, Lcom/taptap/sdk/retrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 127
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 128
    sget-object p3, Lcom/taptap/sdk/retrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-nez p3, :cond_0

    .line 132
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@Path parameters shouldn\'t perform path traversal (\'.\' or \'..\'): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 187
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->baseUrl:Lcom/taptap/sdk/okhttp3/HttpUrl;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/okhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->urlBuilder:Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    goto :goto_0

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed URL. Base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->baseUrl:Lcom/taptap/sdk/okhttp3/HttpUrl;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 199
    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->urlBuilder:Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;

    invoke-virtual {p3, p1, p2}, Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;

    goto :goto_1

    .line 202
    :cond_2
    iget-object p3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->urlBuilder:Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;

    invoke-virtual {p3, p1, p2}, Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;

    :goto_1
    return-void
.end method

.method addTag(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->requestBuilder:Lcom/taptap/sdk/okhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/okhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    return-void
.end method

.method get()Lcom/taptap/sdk/okhttp3/Request$Builder;
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->urlBuilder:Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/HttpUrl$Builder;->build()Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->baseUrl:Lcom/taptap/sdk/okhttp3/HttpUrl;

    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->body:Lcom/taptap/sdk/okhttp3/RequestBody;

    if-nez v1, :cond_3

    .line 251
    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->formBuilder:Lcom/taptap/sdk/okhttp3/FormBody$Builder;

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {v2}, Lcom/taptap/sdk/okhttp3/FormBody$Builder;->build()Lcom/taptap/sdk/okhttp3/FormBody;

    move-result-object v1

    goto :goto_1

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->multipartBuilder:Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;

    if-eqz v2, :cond_2

    .line 254
    invoke-virtual {v2}, Lcom/taptap/sdk/okhttp3/MultipartBody$Builder;->build()Lcom/taptap/sdk/okhttp3/MultipartBody;

    move-result-object v1

    goto :goto_1

    .line 255
    :cond_2
    iget-boolean v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->hasBody:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 257
    invoke-static {v1, v2}, Lcom/taptap/sdk/okhttp3/RequestBody;->create(Lcom/taptap/sdk/okhttp3/MediaType;[B)Lcom/taptap/sdk/okhttp3/RequestBody;

    move-result-object v1

    .line 261
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 264
    new-instance v3, Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v3, v1, v2}, Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lcom/taptap/sdk/okhttp3/RequestBody;Lcom/taptap/sdk/okhttp3/MediaType;)V

    move-object v1, v3

    goto :goto_2

    .line 266
    :cond_4
    iget-object v3, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->headersBuilder:Lcom/taptap/sdk/okhttp3/Headers$Builder;

    invoke-virtual {v2}, Lcom/taptap/sdk/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Lcom/taptap/sdk/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Headers$Builder;

    .line 270
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->requestBuilder:Lcom/taptap/sdk/okhttp3/Request$Builder;

    invoke-virtual {v2, v0}, Lcom/taptap/sdk/okhttp3/Request$Builder;->url(Lcom/taptap/sdk/okhttp3/HttpUrl;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->headersBuilder:Lcom/taptap/sdk/okhttp3/Headers$Builder;

    invoke-virtual {v2}, Lcom/taptap/sdk/okhttp3/Headers$Builder;->build()Lcom/taptap/sdk/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taptap/sdk/okhttp3/Request$Builder;->headers(Lcom/taptap/sdk/okhttp3/Headers;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/taptap/sdk/okhttp3/RequestBody;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    .line 243
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->baseUrl:Lcom/taptap/sdk/okhttp3/HttpUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setBody(Lcom/taptap/sdk/okhttp3/RequestBody;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->body:Lcom/taptap/sdk/okhttp3/RequestBody;

    return-void
.end method

.method setRelativeUrl(Ljava/lang/Object;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void
.end method
