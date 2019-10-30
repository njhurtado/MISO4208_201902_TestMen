.class public Lcom/dropbox/core/http/OkHttp3Requestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "OkHttp3Requestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;,
        Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;,
        Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;
    }
.end annotation


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 2
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    .line 83
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpUtil;->assertNotSameThreadExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 85
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Lokhttp3/OkHttpClient;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/http/OkHttp3Requestor;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/Headers;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Headers;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/dropbox/core/http/OkHttp3Requestor;->fromOkHttpHeaders(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/dropbox/core/http/OkHttp3Requestor;->defaultOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-wide v2, Lcom/dropbox/core/http/OkHttp3Requestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-wide v2, Lcom/dropbox/core/http/OkHttp3Requestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-wide v2, Lcom/dropbox/core/http/OkHttp3Requestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static fromOkHttpHeaders(Lokhttp3/Headers;)Ljava/util/Map;
    .locals 4
    .param p0, "headers"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
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
    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 162
    .local v1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lokhttp3/Headers;->names()Ljava/util/Set;

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

    .line 163
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;
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
            "Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 149
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 150
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-static {p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->toOkHttpHeaders(Ljava/lang/Iterable;Lokhttp3/Request$Builder;)V

    .line 151
    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;

    invoke-direct {v1, p0, p3, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor;Ljava/lang/String;Lokhttp3/Request$Builder;)V

    return-object v1
.end method

.method private static toOkHttpHeaders(Ljava/lang/Iterable;Lokhttp3/Request$Builder;)V
    .locals 4
    .param p1, "builder"    # Lokhttp3/Request$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lokhttp3/Request$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
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

    .line 156
    .local v0, "header":Lcom/dropbox/core/http/HttpRequestor$Header;
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 158
    .end local v0    # "header":Lcom/dropbox/core/http/HttpRequestor$Header;
    :cond_0
    return-void
.end method


# virtual methods
.method protected configureRequest(Lokhttp3/Request$Builder;)V
    .locals 0
    .param p1, "request"    # Lokhttp3/Request$Builder;

    .prologue
    .line 108
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
    .line 128
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 129
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-static {p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->toOkHttpHeaders(Ljava/lang/Iterable;Lokhttp3/Request$Builder;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->configureRequest(Lokhttp3/Request$Builder;)V

    .line 131
    iget-object v3, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 132
    .local v1, "response":Lokhttp3/Response;
    invoke-virtual {p0, v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->interceptResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/http/OkHttp3Requestor;->fromOkHttpHeaders(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v2

    .line 134
    .local v2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v3
.end method

.method public getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method protected interceptResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 123
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
    .line 139
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    const-string v0, "POST"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;

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
    .line 144
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    const-string v0, "PUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;

    move-result-object v0

    return-object v0
.end method
