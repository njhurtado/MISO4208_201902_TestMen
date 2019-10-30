.class Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "PortalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->loadTopics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Topic;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

.field final synthetic val$articlesCallback:Lcom/uservoice/uservoicesdk/ui/DefaultCallback;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Landroid/content/Context;Lcom/uservoice/uservoicesdk/ui/DefaultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    iput-object p3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;->val$articlesCallback:Lcom/uservoice/uservoicesdk/ui/DefaultCallback;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;->onModel(Ljava/util/List;)V

    return-void
.end method

.method public onModel(Ljava/util/List;)V
    .locals 4
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
    .line 101
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Topic;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/uservoice/uservoicesdk/Session;->setTopics(Ljava/util/List;)V

    .line 103
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->access$400(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;->val$articlesCallback:Lcom/uservoice/uservoicesdk/ui/DefaultCallback;

    invoke-static {v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/Article;->loadPage(Landroid/content/Context;ILcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v0, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/uservoice/uservoicesdk/model/Topic;>;"
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->access$400(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/model/Topic;->allArticlesTopic(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/model/Topic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uservoice/uservoicesdk/Session;->setTopics(Ljava/util/List;)V

    .line 108
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$4;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
