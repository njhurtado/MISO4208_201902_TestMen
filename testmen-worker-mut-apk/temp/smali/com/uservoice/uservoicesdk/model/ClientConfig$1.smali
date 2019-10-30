.class final Lcom/uservoice/uservoicesdk/model/ClientConfig$1;
.super Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
.source "ClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/model/ClientConfig;->loadClientConfig(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/rest/Callback;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<*>;"
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig$1;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig$1;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v1, "client"

    const-class v2, Lcom/uservoice/uservoicesdk/model/ClientConfig;

    invoke-static {p1, v1, v2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/ClientConfig;

    .line 53
    .local v0, "clientConfig":Lcom/uservoice/uservoicesdk/model/ClientConfig;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig$1;->val$prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/model/ClientConfig$1;->val$cacheKey:Ljava/lang/String;

    const-string v3, "client"

    invoke-virtual {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->persist(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uservoice/uservoicesdk/Session;->setClientConfig(Lcom/uservoice/uservoicesdk/model/ClientConfig;)V

    .line 55
    return-void
.end method
