.class final Lcom/uservoice/uservoicesdk/model/Forum$1;
.super Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
.source "Forum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/model/Forum;->loadForum(Landroid/content/Context;ILcom/uservoice/uservoicesdk/rest/Callback;)V
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
    .line 21
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<*>;"
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/model/Forum$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-direct {p0, p1}, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Forum$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    const-string v1, "forum"

    const-class v2, Lcom/uservoice/uservoicesdk/model/Forum;

    invoke-static {p1, v1, v2}, Lcom/uservoice/uservoicesdk/model/BaseModel;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Lcom/uservoice/uservoicesdk/model/BaseModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/rest/Callback;->onModel(Ljava/lang/Object;)V

    .line 25
    return-void
.end method
