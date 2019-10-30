.class Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;
.super Lcom/uservoice/uservoicesdk/rest/Callback;
.source "MixedSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->search(Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/rest/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/uservoice/uservoicesdk/model/BaseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

.field final synthetic val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/rest/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 1
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/rest/Callback;->onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    .line 125
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->onModel(Ljava/util/List;)V

    return-void
.end method

.method public onModel(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "articles":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Article;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Suggestion;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 112
    .local v1, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    instance-of v4, v1, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v4, :cond_1

    .line 113
    check-cast v1, Lcom/uservoice/uservoicesdk/model/Article;

    .end local v1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .restart local v1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_1
    instance-of v4, v1, Lcom/uservoice/uservoicesdk/model/Suggestion;

    if-eqz v4, :cond_0

    .line 115
    check-cast v1, Lcom/uservoice/uservoicesdk/model/Suggestion;

    .end local v1    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    iget-object v3, v3, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget-object v4, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SEARCH_ARTICLES:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->val$query:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;Ljava/lang/String;Ljava/util/List;)V

    .line 118
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    iget-object v3, v3, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget-object v4, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SEARCH_IDEAS:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    iget-object v5, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->val$query:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;Ljava/lang/String;Ljava/util/List;)V

    .line 119
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-virtual {v3, p1}, Lcom/uservoice/uservoicesdk/rest/Callback;->onModel(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
