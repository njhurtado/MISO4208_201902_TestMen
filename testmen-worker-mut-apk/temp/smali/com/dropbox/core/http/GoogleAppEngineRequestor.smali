.class public Lcom/dropbox/core/http/GoogleAppEngineRequestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "GoogleAppEngineRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;
    }
.end annotation


# instance fields
.field private final options:Lcom/google/appengine/api/urlfetch/FetchOptions;

.field private final service:Lcom/google/appengine/api/urlfetch/URLFetchService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->newDefaultOptions()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;-><init>(Lcom/google/appengine/api/urlfetch/FetchOptions;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/appengine/api/urlfetch/FetchOptions;)V
    .locals 1
    .param p1, "options"    # Lcom/google/appengine/api/urlfetch/FetchOptions;

    .prologue
    .line 51
    invoke-static {}, Lcom/google/appengine/api/urlfetch/URLFetchServiceFactory;->getURLFetchService()Lcom/google/appengine/api/urlfetch/URLFetchService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;-><init>(Lcom/google/appengine/api/urlfetch/FetchOptions;Lcom/google/appengine/api/urlfetch/URLFetchService;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/appengine/api/urlfetch/FetchOptions;Lcom/google/appengine/api/urlfetch/URLFetchService;)V
    .locals 2
    .param p1, "options"    # Lcom/google/appengine/api/urlfetch/FetchOptions;
    .param p2, "service"    # Lcom/google/appengine/api/urlfetch/URLFetchService;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "options"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->options:Lcom/google/appengine/api/urlfetch/FetchOptions;

    .line 58
    iput-object p2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 1
    .param p0, "x0"    # Lcom/google/appengine/api/urlfetch/HTTPResponse;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->toRequestorResponse(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    return-object v0
.end method

.method public static newDefaultOptions()Lcom/google/appengine/api/urlfetch/FetchOptions;
    .locals 6

    .prologue
    .line 103
    invoke-static {}, Lcom/google/appengine/api/urlfetch/FetchOptions$Builder;->withDefaults()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/FetchOptions;->validateCertificate()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/FetchOptions;->doNotFollowRedirects()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/FetchOptions;->disallowTruncate()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    sget-wide v2, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-wide v4, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appengine/api/urlfetch/FetchOptions;->setDeadline(Ljava/lang/Double;)Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    return-object v0
.end method

.method private newRequest(Ljava/lang/String;Lcom/google/appengine/api/urlfetch/HTTPMethod;Ljava/lang/Iterable;)Lcom/google/appengine/api/urlfetch/HTTPRequest;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/google/appengine/api/urlfetch/HTTPMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/appengine/api/urlfetch/HTTPMethod;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/google/appengine/api/urlfetch/HTTPRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    new-instance v1, Lcom/google/appengine/api/urlfetch/HTTPRequest;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->options:Lcom/google/appengine/api/urlfetch/FetchOptions;

    invoke-direct {v1, v2, p2, v3}, Lcom/google/appengine/api/urlfetch/HTTPRequest;-><init>(Ljava/net/URL;Lcom/google/appengine/api/urlfetch/HTTPMethod;Lcom/google/appengine/api/urlfetch/FetchOptions;)V

    .line 90
    .local v1, "request":Lcom/google/appengine/api/urlfetch/HTTPRequest;
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    .line 91
    .local v0, "header":Lcom/dropbox/core/http/HttpRequestor$Header;
    new-instance v3, Lcom/google/appengine/api/urlfetch/HTTPHeader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appengine/api/urlfetch/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/appengine/api/urlfetch/HTTPRequest;->addHeader(Lcom/google/appengine/api/urlfetch/HTTPHeader;)V

    goto :goto_0

    .line 93
    .end local v0    # "header":Lcom/dropbox/core/http/HttpRequestor$Header;
    :cond_0
    return-object v1
.end method

.method private static toRequestorResponse(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 7
    .param p0, "response"    # Lcom/google/appengine/api/urlfetch/HTTPResponse;

    .prologue
    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getHeadersUncombined()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appengine/api/urlfetch/HTTPHeader;

    .line 114
    .local v1, "header":Lcom/google/appengine/api/urlfetch/HTTPHeader;
    invoke-virtual {v1}, Lcom/google/appengine/api/urlfetch/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    .local v0, "existing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .restart local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/google/appengine/api/urlfetch/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-virtual {v1}, Lcom/google/appengine/api/urlfetch/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "header":Lcom/google/appengine/api/urlfetch/HTTPHeader;
    :cond_1
    new-instance v3, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getResponseCode()I

    move-result v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 123
    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getContent()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4, v5, v2}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v3
.end method


# virtual methods
.method public doGet(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    sget-object v2, Lcom/google/appengine/api/urlfetch/HTTPMethod;->GET:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    invoke-direct {p0, p1, v2, p2}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->newRequest(Ljava/lang/String;Lcom/google/appengine/api/urlfetch/HTTPMethod;Ljava/lang/Iterable;)Lcom/google/appengine/api/urlfetch/HTTPRequest;

    move-result-object v0

    .line 72
    .local v0, "request":Lcom/google/appengine/api/urlfetch/HTTPRequest;
    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    invoke-interface {v2, v0}, Lcom/google/appengine/api/urlfetch/URLFetchService;->fetch(Lcom/google/appengine/api/urlfetch/HTTPRequest;)Lcom/google/appengine/api/urlfetch/HTTPResponse;

    move-result-object v1

    .line 73
    .local v1, "response":Lcom/google/appengine/api/urlfetch/HTTPResponse;
    invoke-static {v1}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->toRequestorResponse(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v2

    return-object v2
.end method

.method public getOptions()Lcom/google/appengine/api/urlfetch/FetchOptions;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->options:Lcom/google/appengine/api/urlfetch/FetchOptions;

    return-object v0
.end method

.method public getService()Lcom/google/appengine/api/urlfetch/URLFetchService;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    return-object v0
.end method

.method public startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    sget-object v1, Lcom/google/appengine/api/urlfetch/HTTPMethod;->POST:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    invoke-direct {p0, p1, v1, p2}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->newRequest(Ljava/lang/String;Lcom/google/appengine/api/urlfetch/HTTPMethod;Ljava/lang/Iterable;)Lcom/google/appengine/api/urlfetch/HTTPRequest;

    move-result-object v0

    .line 79
    .local v0, "request":Lcom/google/appengine/api/urlfetch/HTTPRequest;
    new-instance v1, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;

    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;-><init>(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method

.method public startPut(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    sget-object v1, Lcom/google/appengine/api/urlfetch/HTTPMethod;->POST:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    invoke-direct {p0, p1, v1, p2}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->newRequest(Ljava/lang/String;Lcom/google/appengine/api/urlfetch/HTTPMethod;Ljava/lang/Iterable;)Lcom/google/appengine/api/urlfetch/HTTPRequest;

    move-result-object v0

    .line 85
    .local v0, "request":Lcom/google/appengine/api/urlfetch/HTTPRequest;
    new-instance v1, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;

    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;-><init>(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method
