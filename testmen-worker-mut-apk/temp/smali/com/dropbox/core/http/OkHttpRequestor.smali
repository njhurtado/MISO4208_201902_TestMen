.class public Lcom/dropbox/core/http/OkHttpRequestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "OkHttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;,
        Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;,
        Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;
    }
.end annotation


# instance fields
.field private final client:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 2
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    .line 73
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpUtil;->assertNotSameThreadExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 75
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/dropbox/core/http/OkHttpRequestor;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/http/OkHttpRequestor;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Headers;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/dropbox/core/http/OkHttpRequestor;->fromOkHttpHeaders(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 39
    .local v0, "client":Lcom/squareup/okhttp/OkHttpClient;
    sget-wide v2, Lcom/dropbox/core/http/OkHttpRequestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 40
    sget-wide v2, Lcom/dropbox/core/http/OkHttpRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 41
    sget-wide v2, Lcom/dropbox/core/http/OkHttpRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 43
    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 44
    return-object v0
.end method

.method private static fromOkHttpHeaders(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;
    .locals 4
    .param p0, "headers"    # Lcom/squareup/okhttp/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Headers;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 152
    .local v1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->names()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 139
    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 140
    .local v0, "builder":Lcom/squareup/okhttp/Request$Builder;
    invoke-static {p2, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->toOkHttpHeaders(Ljava/lang/Iterable;Lcom/squareup/okhttp/Request$Builder;)V

    .line 141
    new-instance v1, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;

    invoke-direct {v1, p0, p3, v0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;-><init>(Lcom/dropbox/core/http/OkHttpRequestor;Ljava/lang/String;Lcom/squareup/okhttp/Request$Builder;)V

    return-object v1
.end method

.method private static toOkHttpHeaders(Ljava/lang/Iterable;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/squareup/okhttp/Request$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/squareup/okhttp/Request$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    .line 146
    .local v0, "header":Lcom/dropbox/core/http/HttpRequestor$Header;
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 148
    .end local v0    # "header":Lcom/dropbox/core/http/HttpRequestor$Header;
    :cond_0
    return-void
.end method


# virtual methods
.method protected configureRequest(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 0
    .param p1, "request"    # Lcom/squareup/okhttp/Request$Builder;

    .prologue
    .line 98
    return-void
.end method

.method public doGet(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 6
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
    .line 118
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 119
    .local v0, "builder":Lcom/squareup/okhttp/Request$Builder;
    invoke-static {p2, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->toOkHttpHeaders(Ljava/lang/Iterable;Lcom/squareup/okhttp/Request$Builder;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->configureRequest(Lcom/squareup/okhttp/Request$Builder;)V

    .line 121
    iget-object v3, p0, Lcom/dropbox/core/http/OkHttpRequestor;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 122
    .local v1, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {p0, v1}, Lcom/dropbox/core/http/OkHttpRequestor;->interceptResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/http/OkHttpRequestor;->fromOkHttpHeaders(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v2

    .line 124
    .local v2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v4

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v3
.end method

.method public getClient()Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method protected interceptResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 0
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 113
    return-object p1
.end method

.method public startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 1
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
    .line 129
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    const-string v0, "POST"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;

    move-result-object v0

    return-object v0
.end method

.method public startPut(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 1
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
    .line 134
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    const-string v0, "PUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;

    move-result-object v0

    return-object v0
.end method
