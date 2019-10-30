.class public Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;
.super Ljava/lang/Object;
.source "OkRequestAdapter.java"

# interfaces
.implements Loauth/signpost/http/HttpRequest;


# instance fields
.field private request:Lcom/squareup/okhttp/Request;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    .line 23
    return-void
.end method


# virtual methods
.method public getAllHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers;->names()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessagePayload()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 71
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 72
    .local v1, "sink":Lokio/Buffer;
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 73
    invoke-virtual {v1}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers;->newBuilder()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    .line 47
    .local v0, "newHeaders":Lcom/squareup/okhttp/Headers;
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 48
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Request$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    .line 49
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    .line 50
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    .line 52
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    .line 38
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    .line 40
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    .line 42
    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method
