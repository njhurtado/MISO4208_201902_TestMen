.class final Lcom/uservoice/uservoicesdk/model/User$4;
.super Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/model/User;->findOrCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 0

    .prologue
    .line 61
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<*>;"
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/model/User$4;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

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
    .line 64
    const-string v2, "token"

    const-class v3, Lcom/uservoice/uservoicesdk/model/AccessToken;

    invoke-static {p1, v2, v3}, Lcom/uservoice/uservoicesdk/model/BaseModel;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/AccessToken;

    .line 65
    .local v0, "accessToken":Lcom/uservoice/uservoicesdk/model/AccessToken;
    const-string v2, "user"

    const-class v3, Lcom/uservoice/uservoicesdk/model/User;

    invoke-static {p1, v2, v3}, Lcom/uservoice/uservoicesdk/model/BaseModel;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/User;

    .line 66
    .local v1, "user":Lcom/uservoice/uservoicesdk/model/User;
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/model/User$4;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    new-instance v3, Lcom/uservoice/uservoicesdk/model/AccessTokenResult;

    invoke-direct {v3, v1, v0}, Lcom/uservoice/uservoicesdk/model/AccessTokenResult;-><init>(Ljava/lang/Object;Lcom/uservoice/uservoicesdk/model/AccessToken;)V

    invoke-virtual {v2, v3}, Lcom/uservoice/uservoicesdk/rest/Callback;->onModel(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
