.class final Lcom/uservoice/uservoicesdk/model/Topic$1;
.super Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
.source "Topic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/model/Topic;->loadTopics(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
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
    .line 37
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<*>;"
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/model/Topic$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-direct {p0, p1}, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v3, "topics"

    const-class v4, Lcom/uservoice/uservoicesdk/model/Topic;

    invoke-static {p1, v3, v4}, Lcom/uservoice/uservoicesdk/model/BaseModel;->deserializeList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "allTopics":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Topic;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v2, "topicsWithArticles":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Topic;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/Topic;

    .line 43
    .local v1, "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/Topic;->getNumberOfArticles()I

    move-result v4

    if-lez v4, :cond_0

    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v1    # "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    :cond_1
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/model/Topic$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-virtual {v3, v2}, Lcom/uservoice/uservoicesdk/rest/Callback;->onModel(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
