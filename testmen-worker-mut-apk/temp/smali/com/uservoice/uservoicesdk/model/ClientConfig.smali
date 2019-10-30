.class public Lcom/uservoice/uservoicesdk/model/ClientConfig;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "ClientConfig.java"


# instance fields
.field private accountName:Ljava/lang/String;

.field private customFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/CustomField;",
            ">;"
        }
    .end annotation
.end field

.field private defaultForumId:I

.field private defaultSort:Ljava/lang/String;

.field private displaySuggestionsByRank:Z

.field private feedbackEnabled:Z

.field private key:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private subdomainId:Ljava/lang/String;

.field private ticketsEnabled:Z

.field private whiteLabel:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method

.method public static loadClientConfig(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Lcom/uservoice/uservoicesdk/model/ClientConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Lcom/uservoice/uservoicesdk/model/ClientConfig;>;"
    const/4 v10, 0x0

    .line 33
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v2

    .line 34
    .local v2, "config":Lcom/uservoice/uservoicesdk/Config;
    if-nez v2, :cond_0

    .line 36
    new-instance v5, Lcom/uservoice/uservoicesdk/rest/RestResult;

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Uservoice config not loaded."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/uservoice/uservoicesdk/rest/RestResult;-><init>(Ljava/lang/Exception;)V

    .line 37
    .local v5, "restResult":Lcom/uservoice/uservoicesdk/rest/RestResult;
    invoke-virtual {p1, v5}, Lcom/uservoice/uservoicesdk/rest/Callback;->onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    .line 68
    .end local v5    # "restResult":Lcom/uservoice/uservoicesdk/rest/RestResult;
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uservoice/uservoicesdk/Config;->getKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v3, "/clients/default.json"

    .line 41
    .local v3, "path":Ljava/lang/String;
    :goto_1
    const-string v6, "uv-client-%s-%s-%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/uservoice/uservoicesdk/UserVoice;->getVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v9

    invoke-virtual {v9}, Lcom/uservoice/uservoicesdk/Config;->getSite()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v9

    invoke-virtual {v9}, Lcom/uservoice/uservoicesdk/Config;->getKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 44
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "client"

    const-class v7, Lcom/uservoice/uservoicesdk/model/ClientConfig;

    invoke-static {v4, v0, v6, v7}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->load(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/ClientConfig;

    .line 45
    .local v1, "clientConfig":Lcom/uservoice/uservoicesdk/model/ClientConfig;
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p1, v1}, Lcom/uservoice/uservoicesdk/rest/Callback;->onModel(Ljava/lang/Object;)V

    .line 49
    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/uservoice/uservoicesdk/model/ClientConfig$1;

    invoke-direct {v7, p1, v4, v0}, Lcom/uservoice/uservoicesdk/model/ClientConfig$1;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p0, v6, v7}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->doGet(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    goto :goto_0

    .line 40
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v1    # "clientConfig":Lcom/uservoice/uservoicesdk/model/ClientConfig;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "/client.json"

    goto :goto_1

    .line 59
    .restart local v0    # "cacheKey":Ljava/lang/String;
    .restart local v1    # "clientConfig":Lcom/uservoice/uservoicesdk/model/ClientConfig;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->apiPath(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/uservoice/uservoicesdk/model/ClientConfig$2;

    invoke-direct {v7, p1, v4, v0, p1}, Lcom/uservoice/uservoicesdk/model/ClientConfig$2;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {p0, v6, v7}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->doGet(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    goto :goto_0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/CustomField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->customFields:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultForumId()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->defaultForumId:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getSubdomainId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->subdomainId:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionSort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->defaultSort:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "newest"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->defaultSort:Ljava/lang/String;

    const-string v1, "hot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hot"

    goto :goto_0

    :cond_1
    const-string v0, "votes"

    goto :goto_0
.end method

.method public isFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->feedbackEnabled:Z

    return v0
.end method

.method public isTicketSystemEnabled()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->ticketsEnabled:Z

    return v0
.end method

.method public isWhiteLabel()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->whiteLabel:Z

    return v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 74
    const-string v0, "tickets_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->ticketsEnabled:Z

    .line 75
    const-string v0, "feedback_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->feedbackEnabled:Z

    .line 76
    const-string v0, "white_label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->whiteLabel:Z

    .line 77
    const-string v0, "display_suggestions_by_rank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "display_suggestions_by_rank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->displaySuggestionsByRank:Z

    .line 80
    :cond_0
    const-string v0, "forum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->defaultForumId:I

    .line 81
    const-string v0, "custom_fields"

    const-class v1, Lcom/uservoice/uservoicesdk/model/CustomField;

    invoke-static {p1, v0, v1}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->deserializeList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->customFields:Ljava/util/List;

    .line 82
    const-string v0, "subdomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "default_sort"

    invoke-virtual {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->defaultSort:Ljava/lang/String;

    .line 83
    const-string v0, "subdomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->subdomainId:Ljava/lang/String;

    .line 84
    const-string v0, "subdomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->accountName:Ljava/lang/String;

    .line 85
    const-string v0, "key"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->key:Ljava/lang/String;

    .line 87
    const-string v0, "secret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "secret"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->secret:Ljava/lang/String;

    .line 88
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->save(Lorg/json/JSONObject;)V

    .line 93
    const-string v2, "tickets_enabled"

    iget-boolean v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->ticketsEnabled:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 94
    const-string v2, "feedback_enabled"

    iget-boolean v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->feedbackEnabled:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 95
    const-string v2, "white_label"

    iget-boolean v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->whiteLabel:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 96
    const-string v2, "display_suggestions_by_rank"

    iget-boolean v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->displaySuggestionsByRank:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v0, "forum":Lorg/json/JSONObject;
    const-string v2, "id"

    iget v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->defaultForumId:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string v2, "forum"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v2, "custom_fields"

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->customFields:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->serializeList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v1, "subdomain":Lorg/json/JSONObject;
    const-string v2, "id"

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->subdomainId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v2, "default_sort"

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->defaultSort:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v2, "name"

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "subdomain"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v2, "key"

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->key:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->secret:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "secret"

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->secret:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_0
    return-void
.end method

.method public shouldDisplaySuggestionsByRank()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig;->displaySuggestionsByRank:Z

    return v0
.end method
