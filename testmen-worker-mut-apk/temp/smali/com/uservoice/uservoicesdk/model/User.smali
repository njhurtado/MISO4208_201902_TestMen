.class public Lcom/uservoice/uservoicesdk/model/User;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "User.java"


# instance fields
.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method

.method public static discover(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/User;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "/users/discover.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/User;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/User$1;

    invoke-direct {v2, p2, p2}, Lcom/uservoice/uservoicesdk/model/User$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/User;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 29
    return-void
.end method

.method public static findOrCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/AccessTokenResult",
            "<",
            "Lcom/uservoice/uservoicesdk/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/AccessTokenResult<Lcom/uservoice/uservoicesdk/model/User;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "user[display_name]"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "user[email]"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "request_token"

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Session;->getRequestToken()Lcom/uservoice/uservoicesdk/model/RequestToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "/users.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/User;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/User$4;

    invoke-direct {v2, p3, p3}, Lcom/uservoice/uservoicesdk/model/User$4;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/User;->doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 69
    return-void
.end method

.method public static findOrCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/AccessTokenResult",
            "<",
            "Lcom/uservoice/uservoicesdk/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/AccessTokenResult<Lcom/uservoice/uservoicesdk/model/User;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "user[display_name]"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "user[email]"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "user[guid]"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "request_token"

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Session;->getRequestToken()Lcom/uservoice/uservoicesdk/model/RequestToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "/users/find_or_create.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/User;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/User$3;

    invoke-direct {v2, p4, p4}, Lcom/uservoice/uservoicesdk/model/User$3;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/User;->doPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 54
    return-void
.end method

.method public static loadCurrentUser(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/User;>;"
    const-string v0, "/users/current.json"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/model/User;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/uservoice/uservoicesdk/model/User$2;

    invoke-direct {v1, p1, p1}, Lcom/uservoice/uservoicesdk/model/User$2;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/User;->doGet(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 38
    return-void
.end method

.method public static sendForgotPassword(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/User;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "user[email]"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "/users/forgot_password.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/User;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/model/User$5;

    invoke-direct {v2, p2, p2}, Lcom/uservoice/uservoicesdk/model/User$5;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v1, v0, v2}, Lcom/uservoice/uservoicesdk/model/User;->doGet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 80
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/User;->name:Ljava/lang/String;

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
    .line 84
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 85
    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/User;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/User;->name:Ljava/lang/String;

    .line 86
    const-string v0, "email"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/User;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/User;->email:Ljava/lang/String;

    .line 87
    return-void
.end method
