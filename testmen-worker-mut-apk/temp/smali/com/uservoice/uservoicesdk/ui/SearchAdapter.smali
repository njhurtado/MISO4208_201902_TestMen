.class public abstract Lcom/uservoice/uservoicesdk/ui/SearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected currentQuery:Ljava/lang/String;

.field protected currentSearch:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uservoice/uservoicesdk/ui/SearchAdapter",
            "<TT;>.SearchTask;"
        }
    .end annotation
.end field

.field protected loading:Z

.field protected pendingQuery:Ljava/lang/String;

.field protected scope:I

.field protected searchActive:Z

.field protected searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->searchResults:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->searchActive:Z

    return-void
.end method


# virtual methods
.method public performSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 25
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->pendingQuery:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->searchResults:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->loading:Z

    .line 29
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->notifyDataSetChanged()V

    .line 39
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->loading:Z

    .line 32
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->notifyDataSetChanged()V

    .line 33
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->currentSearch:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->currentSearch:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->cancel()Z

    .line 36
    :cond_1
    new-instance v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    invoke-direct {v0, p0, p1}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;-><init>(Lcom/uservoice/uservoicesdk/ui/SearchAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->currentSearch:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    .line 37
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->currentSearch:Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->run()V

    goto :goto_0
.end method

.method protected search(Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>;"
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<TT;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected searchResultsUpdated()V
    .locals 0

    .prologue
    .line 87
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>;"
    return-void
.end method

.method public setScope(I)V
    .locals 0
    .param p1, "scope"    # I

    .prologue
    .line 98
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>;"
    iput p1, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->scope:I

    .line 99
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method

.method public setSearchActive(Z)V
    .locals 1
    .param p1, "searchActive"    # Z

    .prologue
    .line 42
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->searchActive:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->loading:Z

    .line 44
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method protected shouldShowSearchResults()Z
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->searchActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->pendingQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->pendingQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
