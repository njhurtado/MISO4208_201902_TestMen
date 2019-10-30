.class Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->run()V
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;->this$1:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;->onModel(Ljava/util/List;)V

    return-void
.end method

.method public onModel(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;"
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;->this$1:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->access$000(Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;->this$1:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    iput-object p1, v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->searchResults:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;->this$1:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->loading:Z

    .line 74
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;->this$1:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->notifyDataSetChanged()V

    .line 75
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;->this$1:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->searchResultsUpdated()V

    .line 77
    :cond_0
    return-void
.end method
