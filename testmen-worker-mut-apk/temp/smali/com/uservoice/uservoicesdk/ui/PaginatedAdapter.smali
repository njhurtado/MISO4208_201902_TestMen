.class public abstract Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
.super Lcom/uservoice/uservoicesdk/ui/ModelAdapter;
.source "PaginatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/uservoice/uservoicesdk/ui/ModelAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private page:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->page:I

    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    .prologue
    .line 8
    iget v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->page:I

    return p1
.end method


# virtual methods
.method protected getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->shouldShowSearchResults()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->searchResults:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->objects:Ljava/util/List;

    goto :goto_0
.end method

.method protected abstract getTotalNumberOfObjects()I
.end method

.method public loadMore()V
    .locals 3

    .prologue
    .line 18
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->searchActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->getTotalNumberOfObjects()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loading:Z

    .line 20
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->notifyDataSetChanged()V

    .line 21
    iget v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->page:I

    new-instance v1, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter$1;-><init>(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loadPage(ILcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loading:Z

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->page:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->objects:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loadMore()V

    goto :goto_0
.end method
