.class public Lcom/uservoice/uservoicesdk/model/RequestToken;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "RequestToken.java"


# instance fields
.field private key:Ljava/lang/String;

.field private secret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method

.method public static getRequestToken(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/RequestToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/RequestToken;>;"
    const-string v0, "/oauth/request_token.json"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/model/RequestToken;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/uservoice/uservoicesdk/model/RequestToken$1;

    invoke-direct {v1, p1, p1}, Lcom/uservoice/uservoicesdk/model/RequestToken$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/RequestToken;->doGet(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 23
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/RequestToken;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/RequestToken;->secret:Ljava/lang/String;

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
    .line 27
    const-string v0, "oauth_token"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/RequestToken;->key:Ljava/lang/String;

    .line 28
    const-string v0, "oauth_token_secret"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/RequestToken;->secret:Ljava/lang/String;

    .line 29
    return-void
.end method
