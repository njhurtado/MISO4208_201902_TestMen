.class public Lcom/uservoice/uservoicesdk/model/AccessToken;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "AccessToken.java"


# instance fields
.field private key:Ljava/lang/String;

.field private secret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method

.method public static authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/AccessToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/AccessToken;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "password"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "request_token"

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Session;->getRequestToken()Lcom/uservoice/uservoicesdk/model/RequestToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "/oauth/authorize.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/AccessToken;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/AccessToken$1;

    invoke-direct {v2, p3, p3}, Lcom/uservoice/uservoicesdk/model/AccessToken$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/AccessToken;->doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 31
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/AccessToken;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/AccessToken;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "oauth_token"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/AccessToken;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/AccessToken;->key:Ljava/lang/String;

    .line 36
    const-string v0, "oauth_token_secret"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/AccessToken;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/AccessToken;->secret:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public save(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "oauth_token"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/model/AccessToken;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v0, "oauth_token_secret"

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/model/AccessToken;->secret:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    return-void
.end method
