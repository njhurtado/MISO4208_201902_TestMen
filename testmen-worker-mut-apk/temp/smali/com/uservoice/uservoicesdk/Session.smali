.class public Lcom/uservoice/uservoicesdk/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static instance:Lcom/uservoice/uservoicesdk/Session;


# instance fields
.field private accessToken:Lcom/uservoice/uservoicesdk/model/AccessToken;

.field private clientConfig:Lcom/uservoice/uservoicesdk/model/ClientConfig;

.field private config:Lcom/uservoice/uservoicesdk/Config;

.field private externalIds:Ljava/util/Map;
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

.field private forum:Lcom/uservoice/uservoicesdk/model/Forum;

.field private oauthConsumer:Loauth/signpost/OAuthConsumer;

.field private requestToken:Lcom/uservoice/uservoicesdk/model/RequestToken;

.field private signinListener:Ljava/lang/Runnable;

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Topic;",
            ">;"
        }
    .end annotation
.end field

.field private user:Lcom/uservoice/uservoicesdk/model/User;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->externalIds:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/uservoice/uservoicesdk/Session;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/uservoice/uservoicesdk/Session;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uservoice/uservoicesdk/Session;->instance:Lcom/uservoice/uservoicesdk/Session;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/uservoice/uservoicesdk/Session;

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/Session;-><init>()V

    sput-object v0, Lcom/uservoice/uservoicesdk/Session;->instance:Lcom/uservoice/uservoicesdk/Session;

    .line 30
    :cond_0
    sget-object v0, Lcom/uservoice/uservoicesdk/Session;->instance:Lcom/uservoice/uservoicesdk/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/uservoice/uservoicesdk/Session;->instance:Lcom/uservoice/uservoicesdk/Session;

    .line 35
    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/uservoice/uservoicesdk/model/AccessToken;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->accessToken:Lcom/uservoice/uservoicesdk/model/AccessToken;

    return-object v0
.end method

.method public getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->clientConfig:Lcom/uservoice/uservoicesdk/model/ClientConfig;

    return-object v0
.end method

.method public getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->config:Lcom/uservoice/uservoicesdk/Config;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "config"

    const-class v3, Lcom/uservoice/uservoicesdk/Config;

    invoke-static {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/Config;->load(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/Config;

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->config:Lcom/uservoice/uservoicesdk/Config;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->config:Lcom/uservoice/uservoicesdk/Config;

    return-object v0
.end method

.method public getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->user:Lcom/uservoice/uservoicesdk/model/User;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->user:Lcom/uservoice/uservoicesdk/model/User;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExternalIds()Ljava/util/Map;
    .locals 1
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
    .line 159
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->externalIds:Ljava/util/Map;

    return-object v0
.end method

.method public getForum()Lcom/uservoice/uservoicesdk/model/Forum;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->forum:Lcom/uservoice/uservoicesdk/model/Forum;

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->user:Lcom/uservoice/uservoicesdk/model/User;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->user:Lcom/uservoice/uservoicesdk/model/User;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/User;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOAuthConsumer(Landroid/content/Context;)Loauth/signpost/OAuthConsumer;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->oauthConsumer:Loauth/signpost/OAuthConsumer;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/OkOAuthConsumer;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Config;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uservoice/uservoicesdk/rest/OkOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->oauthConsumer:Loauth/signpost/OAuthConsumer;

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->oauthConsumer:Loauth/signpost/OAuthConsumer;

    return-object v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->clientConfig:Lcom/uservoice/uservoicesdk/model/ClientConfig;

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/OkOAuthConsumer;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Session;->clientConfig:Lcom/uservoice/uservoicesdk/model/ClientConfig;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/Session;->clientConfig:Lcom/uservoice/uservoicesdk/model/ClientConfig;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uservoice/uservoicesdk/rest/OkOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->oauthConsumer:Loauth/signpost/OAuthConsumer;

    goto :goto_0
.end method

.method public getRequestToken()Lcom/uservoice/uservoicesdk/model/RequestToken;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->requestToken:Lcom/uservoice/uservoicesdk/model/RequestToken;

    return-object v0
.end method

.method public getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Session;->config:Lcom/uservoice/uservoicesdk/Config;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/Session;->config:Lcom/uservoice/uservoicesdk/Config;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->getSite()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "site":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uv_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\W"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1

    .line 126
    .end local v0    # "site":Ljava/lang/String;
    :cond_0
    const-string v1, "uv_site"

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "site"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "site":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Topic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->topics:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Lcom/uservoice/uservoicesdk/model/User;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->user:Lcom/uservoice/uservoicesdk/model/User;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/uservoice/uservoicesdk/Config;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/uservoice/uservoicesdk/Config;

    .prologue
    .line 59
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/Session;->config:Lcom/uservoice/uservoicesdk/Config;

    .line 60
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/Config;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/Config;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/uservoice/uservoicesdk/Session;->persistIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "config"

    invoke-virtual {p2, v0, v1, v2}, Lcom/uservoice/uservoicesdk/Config;->persist(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->persistSite(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public persistIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "user_name"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-static {p3}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "user_email"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method protected persistSite(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const-string v1, "uv_site"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "site"

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/Session;->config:Lcom/uservoice/uservoicesdk/Config;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Config;->getSite()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method public setAccessToken(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/AccessToken;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessToken"    # Lcom/uservoice/uservoicesdk/model/AccessToken;

    .prologue
    .line 109
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/Session;->accessToken:Lcom/uservoice/uservoicesdk/model/AccessToken;

    .line 110
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "access_token"

    const-string v2, "access_token"

    invoke-virtual {p2, v0, v1, v2}, Lcom/uservoice/uservoicesdk/model/AccessToken;->persist(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->signinListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->signinListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 113
    :cond_0
    return-void
.end method

.method public setAccessToken(Lcom/uservoice/uservoicesdk/model/AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/uservoice/uservoicesdk/model/AccessToken;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Session;->accessToken:Lcom/uservoice/uservoicesdk/model/AccessToken;

    .line 135
    return-void
.end method

.method public setClientConfig(Lcom/uservoice/uservoicesdk/model/ClientConfig;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/uservoice/uservoicesdk/model/ClientConfig;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Session;->clientConfig:Lcom/uservoice/uservoicesdk/model/ClientConfig;

    .line 152
    return-void
.end method

.method public setExternalId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/Session;->externalIds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public setForum(Lcom/uservoice/uservoicesdk/model/Forum;)V
    .locals 0
    .param p1, "forum"    # Lcom/uservoice/uservoicesdk/model/Forum;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Session;->forum:Lcom/uservoice/uservoicesdk/model/Forum;

    .line 168
    return-void
.end method

.method public setRequestToken(Lcom/uservoice/uservoicesdk/model/RequestToken;)V
    .locals 0
    .param p1, "requestToken"    # Lcom/uservoice/uservoicesdk/model/RequestToken;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Session;->requestToken:Lcom/uservoice/uservoicesdk/model/RequestToken;

    .line 92
    return-void
.end method

.method public setSignInListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Session;->signinListener:Ljava/lang/Runnable;

    .line 180
    return-void
.end method

.method public setTopics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Topic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Topic;>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/Session;->topics:Ljava/util/List;

    .line 172
    return-void
.end method

.method public setUser(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/User;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lcom/uservoice/uservoicesdk/model/User;

    .prologue
    .line 142
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/Session;->user:Lcom/uservoice/uservoicesdk/model/User;

    .line 143
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/uservoice/uservoicesdk/Session;->persistIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
