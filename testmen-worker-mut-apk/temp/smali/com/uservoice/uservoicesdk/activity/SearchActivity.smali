.class public abstract Lcom/uservoice/uservoicesdk/activity/SearchActivity;
.super Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;
.source "SearchActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private originalNavigationMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->originalNavigationMode:I

    return-void
.end method


# virtual methods
.method public getSearchAdapter()Lcom/uservoice/uservoicesdk/ui/SearchAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uservoice/uservoicesdk/ui/SearchAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->searchAdapter:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    return-object v0
.end method

.method public hideSearch()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 48
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_view_flipper:I

    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 49
    .local v0, "viewFlipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 50
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->hasActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    iget v3, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->originalNavigationMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 53
    :cond_0
    return-void

    .line 51
    :cond_1
    iget v1, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->originalNavigationMode:I

    goto :goto_0
.end method

.method protected setupScopedSearch(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 56
    sget v5, Lcom/uservoice/uservoicesdk/R$id;->uv_action_search:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 57
    .local v2, "searchItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->hasActionBar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    new-instance v5, Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;

    invoke-direct {v5, p0}, Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;-><init>(Lcom/uservoice/uservoicesdk/activity/SearchActivity;)V

    invoke-static {v2, v5}, Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 59
    invoke-static {v2}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 60
    .local v1, "search":Landroid/support/v7/widget/SearchView;
    new-instance v5, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;

    invoke-direct {v5, p0}, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;-><init>(Lcom/uservoice/uservoicesdk/activity/SearchActivity;)V

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 61
    new-instance v5, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    invoke-direct {v5, p0}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->searchAdapter:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    .line 62
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v3, "searchView":Landroid/widget/ListView;
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->searchAdapter:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->searchAdapter:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getListView()Landroid/widget/ListView;

    .line 69
    sget v5, Lcom/uservoice/uservoicesdk/R$id;->uv_view_flipper:I

    invoke-virtual {p0, v5}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewFlipper;

    .line 70
    .local v4, "viewFlipper":Landroid/widget/ViewFlipper;
    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    .line 72
    new-instance v0, Lcom/uservoice/uservoicesdk/activity/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity$1;-><init>(Lcom/uservoice/uservoicesdk/activity/SearchActivity;)V

    .line 86
    .local v0, "listener":Landroid/support/v7/app/ActionBar$TabListener;
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    sget v6, Lcom/uservoice/uservoicesdk/R$string;->uv_all_results_filter:I

    invoke-virtual {p0, v6}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    sget v6, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_ALL:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    iput-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->allTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 87
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v6, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->allTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 88
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    sget v6, Lcom/uservoice/uservoicesdk/R$string;->uv_articles_filter:I

    invoke-virtual {p0, v6}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    sget v6, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_ARTICLES:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    iput-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->articlesTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 89
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v6, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->articlesTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 90
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    sget v6, Lcom/uservoice/uservoicesdk/R$string;->uv_ideas_filter:I

    invoke-virtual {p0, v6}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    sget v6, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->SCOPE_IDEAS:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v5

    iput-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->ideasTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 91
    iget-object v5, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v6, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->ideasTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 95
    .end local v0    # "listener":Landroid/support/v7/app/ActionBar$TabListener;
    .end local v1    # "search":Landroid/support/v7/widget/SearchView;
    .end local v3    # "searchView":Landroid/widget/ListView;
    .end local v4    # "viewFlipper":Landroid/widget/ViewFlipper;
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public showSearch()V
    .locals 3

    .prologue
    .line 38
    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_view_flipper:I

    invoke-virtual {p0, v1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 39
    .local v0, "viewFlipper":Landroid/widget/ViewFlipper;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 40
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->hasActionBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget v1, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->originalNavigationMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getNavigationMode()I

    move-result v1

    iput v1, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->originalNavigationMode:I

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 45
    :cond_1
    return-void
.end method

.method public updateScopedSearch(III)V
    .locals 7
    .param p1, "results"    # I
    .param p2, "articleResults"    # I
    .param p3, "ideaResults"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->hasActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->allTab:Landroid/support/v7/app/ActionBar$Tab;

    const-string v1, "%s (%d)"

    new-array v2, v6, [Ljava/lang/Object;

    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_all_results_filter:I

    invoke-virtual {p0, v3}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->articlesTab:Landroid/support/v7/app/ActionBar$Tab;

    const-string v1, "%s (%d)"

    new-array v2, v6, [Ljava/lang/Object;

    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_articles_filter:I

    invoke-virtual {p0, v3}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    .line 33
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->ideasTab:Landroid/support/v7/app/ActionBar$Tab;

    const-string v1, "%s (%d)"

    new-array v2, v6, [Ljava/lang/Object;

    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_ideas_filter:I

    invoke-virtual {p0, v3}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    .line 35
    :cond_0
    return-void
.end method
