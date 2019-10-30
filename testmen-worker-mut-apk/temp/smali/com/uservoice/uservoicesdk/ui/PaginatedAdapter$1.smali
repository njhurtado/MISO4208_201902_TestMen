.class Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "PaginatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loadMore()V
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
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;->onModel(Ljava/util/List;)V

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
    .line 24
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;"
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->access$000(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->access$002(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;I)I

    .line 26
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loading:Z

    .line 27
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method
