.class public Lcom/uservoice/uservoicesdk/flow/InitManager;
.super Ljava/lang/Object;
.source "InitManager.java"


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private canceled:Z

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->callback:Ljava/lang/Runnable;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/flow/InitManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/InitManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/flow/InitManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/InitManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->loadUser()V

    return-void
.end method

.method static synthetic access$200(Lcom/uservoice/uservoicesdk/flow/InitManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/InitManager;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->canceled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/uservoice/uservoicesdk/flow/InitManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/InitManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->done()V

    return-void
.end method

.method private done()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 117
    return-void
.end method

.method private loadUser()V
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Session;->getUser()Lcom/uservoice/uservoicesdk/model/User;

    move-result-object v1

    if-nez v1, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->shouldSignIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    new-instance v2, Lcom/uservoice/uservoicesdk/flow/InitManager$2;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/uservoice/uservoicesdk/flow/InitManager$2;-><init>(Lcom/uservoice/uservoicesdk/flow/InitManager;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getRequestToken(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 104
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "access_token"

    const-string v3, "access_token"

    const-class v4, Lcom/uservoice/uservoicesdk/model/AccessToken;

    invoke-static {v1, v2, v3, v4}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/AccessToken;

    .line 79
    .local v0, "accessToken":Lcom/uservoice/uservoicesdk/model/AccessToken;
    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uservoice/uservoicesdk/Session;->setAccessToken(Lcom/uservoice/uservoicesdk/model/AccessToken;)V

    .line 81
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    new-instance v2, Lcom/uservoice/uservoicesdk/flow/InitManager$3;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/uservoice/uservoicesdk/flow/InitManager$3;-><init>(Lcom/uservoice/uservoicesdk/flow/InitManager;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/model/User;->loadCurrentUser(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->done()V

    goto :goto_0

    .line 102
    .end local v0    # "accessToken":Lcom/uservoice/uservoicesdk/model/AccessToken;
    :cond_2
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->done()V

    goto :goto_0
.end method

.method private shouldSignIn()Z
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    .line 108
    .local v0, "config":Lcom/uservoice/uservoicesdk/Config;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->canceled:Z

    .line 113
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    new-instance v1, Lcom/uservoice/uservoicesdk/flow/InitManager$1;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/InitManager;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/uservoice/uservoicesdk/flow/InitManager$1;-><init>(Lcom/uservoice/uservoicesdk/flow/InitManager;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->loadClientConfig(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->loadUser()V

    goto :goto_0
.end method
