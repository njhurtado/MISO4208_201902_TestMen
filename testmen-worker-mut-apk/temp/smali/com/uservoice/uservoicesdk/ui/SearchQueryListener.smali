.class public Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;
.super Ljava/lang/Object;
.source "SearchQueryListener.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# instance fields
.field private final searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/activity/SearchActivity;)V
    .locals 0
    .param p1, "searchActivity"    # Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    .line 12
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getSearchAdapter()Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->performSearch(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->showSearch()V

    .line 28
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->hideSearch()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getSearchAdapter()Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->performSearch(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x1

    return v0
.end method
