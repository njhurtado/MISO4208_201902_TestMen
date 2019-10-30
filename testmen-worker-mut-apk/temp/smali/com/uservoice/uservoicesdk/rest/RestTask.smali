.class public Lcom/uservoice/uservoicesdk/rest/RestTask;
.super Landroid/os/AsyncTask;
.source "RestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/uservoice/uservoicesdk/rest/RestResult;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

.field private context:Landroid/content/Context;

.field private method:Lcom/uservoice/uservoicesdk/rest/RestMethod;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/RestMethod;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # Lcom/uservoice/uservoicesdk/rest/RestMethod;
    .param p3, "urlPath"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/rest/RestMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->method:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    .line 36
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->urlPath:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->callback:Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    .line 38
    iput-object p4, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->params:Ljava/util/Map;

    .line 39
    return-void
.end method

.method private addParamsToBody(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/squareup/okhttp/Request$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->params:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 123
    new-instance v1, Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-direct {v1}, Lcom/squareup/okhttp/FormEncodingBuilder;-><init>()V

    .line 124
    .local v1, "paramsBuilder":Lcom/squareup/okhttp/FormEncodingBuilder;
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    .local v0, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;

    goto :goto_0

    .line 127
    .end local v0    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->method:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/rest/RestMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/squareup/okhttp/FormEncodingBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 129
    .end local v1    # "paramsBuilder":Lcom/squareup/okhttp/FormEncodingBuilder;
    :cond_1
    return-void
.end method

.method private addParamsToQueryString(Lcom/squareup/okhttp/Request$Builder;Landroid/net/Uri$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/squareup/okhttp/Request$Builder;
    .param p2, "uriBuilder"    # Landroid/net/Uri$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->params:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    .local v0, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 118
    .end local v0    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 119
    return-void
.end method

.method private createRequest()Lcom/squareup/okhttp/Request;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 77
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    const-string v4, "Accept-Language"

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string v4, "API-Client"

    const-string v5, "uservoice-android-%s"

    new-array v6, v9, [Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/uservoice/uservoicesdk/UserVoice;->getVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string v4, "User-Agent"

    const-string v5, "uservoice-android-%s"

    new-array v6, v9, [Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/uservoice/uservoicesdk/UserVoice;->getVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 82
    .local v0, "builder":Lcom/squareup/okhttp/Request$Builder;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/Config;->getSite()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "host":Ljava/lang/String;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 84
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v3, ".us.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "http"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->urlPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->method:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    sget-object v4, Lcom/uservoice/uservoicesdk/rest/RestMethod;->GET:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->method:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    sget-object v4, Lcom/uservoice/uservoicesdk/rest/RestMethod;->DELETE:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    if-ne v3, v4, :cond_2

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->method:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/rest/RestMethod;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 90
    invoke-direct {p0, v0, v2}, Lcom/uservoice/uservoicesdk/rest/RestTask;->addParamsToQueryString(Lcom/squareup/okhttp/Request$Builder;Landroid/net/Uri$Builder;)V

    .line 95
    :goto_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v3

    return-object v3

    .line 84
    :cond_1
    const-string v3, "https"

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 93
    invoke-direct {p0, v0}, Lcom/uservoice/uservoicesdk/rest/RestTask;->addParamsToBody(Lcom/squareup/okhttp/Request$Builder;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/uservoice/uservoicesdk/rest/RestResult;
    .locals 10
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/rest/RestTask;->createRequest()Lcom/squareup/okhttp/Request;

    move-result-object v5

    .line 45
    .local v5, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/rest/RestTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 46
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v5    # "request":Lcom/squareup/okhttp/Request;
    :catch_0
    move-exception v4

    .line 72
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/uservoice/uservoicesdk/rest/RestResult;

    invoke-direct {v8, v4}, Lcom/uservoice/uservoicesdk/rest/RestResult;-><init>(Ljava/lang/Exception;)V

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v8

    .line 47
    .restart local v5    # "request":Lcom/squareup/okhttp/Request;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 48
    .local v2, "client":Lcom/squareup/okhttp/OkHttpClient;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v8

    iget-object v9, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/uservoice/uservoicesdk/Session;->getOAuthConsumer(Landroid/content/Context;)Loauth/signpost/OAuthConsumer;

    move-result-object v3

    .line 49
    .local v3, "consumer":Loauth/signpost/OAuthConsumer;
    if-eqz v3, :cond_2

    .line 50
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uservoice/uservoicesdk/Session;->getAccessToken()Lcom/uservoice/uservoicesdk/model/AccessToken;

    move-result-object v0

    .line 51
    .local v0, "accessToken":Lcom/uservoice/uservoicesdk/model/AccessToken;
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/AccessToken;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/AccessToken;->getSecret()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-interface {v3, v5}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    move-result-object v8

    invoke-interface {v8}, Loauth/signpost/http/HttpRequest;->unwrap()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "request":Lcom/squareup/okhttp/Request;
    check-cast v5, Lcom/squareup/okhttp/Request;

    .line 56
    .end local v0    # "accessToken":Lcom/uservoice/uservoicesdk/model/AccessToken;
    .restart local v5    # "request":Lcom/squareup/okhttp/Request;
    :cond_2
    const-string v8, "UV"

    iget-object v9, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->urlPath:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/rest/RestTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 58
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 60
    :cond_3
    invoke-virtual {v2, v5}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v6

    .line 61
    .local v6, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/rest/RestTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 62
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 63
    :cond_4
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->code()I

    move-result v7

    .line 64
    .local v7, "statusCode":I
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "body":Ljava/lang/String;
    const/16 v8, 0x190

    if-lt v7, v8, :cond_5

    .line 66
    const-string v8, "UV"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_5
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/rest/RestTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 69
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 70
    :cond_6
    new-instance v8, Lcom/uservoice/uservoicesdk/rest/RestResult;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v7, v9}, Lcom/uservoice/uservoicesdk/rest/RestResult;-><init>(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/rest/RestTask;->doInBackground([Ljava/lang/String;)Lcom/uservoice/uservoicesdk/rest/RestResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 5
    .param p1, "result"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/rest/RestResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->callback:Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    invoke-virtual {v1, p1}, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;->onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    .line 109
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 110
    return-void

    .line 104
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->callback:Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/rest/RestResult;->getObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;->onComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/rest/RestTask;->callback:Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;

    new-instance v2, Lcom/uservoice/uservoicesdk/rest/RestResult;

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/rest/RestResult;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/rest/RestResult;->getObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/uservoice/uservoicesdk/rest/RestResult;-><init>(Ljava/lang/Exception;ILorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;->onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/uservoice/uservoicesdk/rest/RestResult;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/rest/RestTask;->onPostExecute(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    return-void
.end method
