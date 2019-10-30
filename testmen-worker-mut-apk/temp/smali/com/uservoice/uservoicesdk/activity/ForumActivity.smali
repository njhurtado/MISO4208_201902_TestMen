.class public Lcom/uservoice/uservoicesdk/activity/ForumActivity;
.super Lcom/uservoice/uservoicesdk/activity/SearchActivity;
.source "ForumActivity.java"


# instance fields
.field private forum:Lcom/uservoice/uservoicesdk/model/Forum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)Lcom/uservoice/uservoicesdk/model/Forum;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->forum:Lcom/uservoice/uservoicesdk/model/Forum;

    return-object v0
.end method

.method static synthetic access$002(Lcom/uservoice/uservoicesdk/activity/ForumActivity;Lcom/uservoice/uservoicesdk/model/Forum;)Lcom/uservoice/uservoicesdk/model/Forum;
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity;
    .param p1, "x1"    # Lcom/uservoice/uservoicesdk/model/Forum;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->forum:Lcom/uservoice/uservoicesdk/model/Forum;

    return-object p1
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->loadForum()V

    return-void
.end method

.method private loadForum()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getForum()Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getForum()Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->forum:Lcom/uservoice/uservoicesdk/model/Forum;

    .line 262
    sget-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_FORUM:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->forum:Lcom/uservoice/uservoicesdk/model/Forum;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/Forum;->getId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;I)V

    .line 263
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->forum:Lcom/uservoice/uservoicesdk/model/Forum;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Forum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loadMore()V

    .line 276
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->getForumId()I

    move-result v0

    new-instance v1, Lcom/uservoice/uservoicesdk/activity/ForumActivity$5;

    invoke-direct {v1, p0, p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$5;-><init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/uservoice/uservoicesdk/model/Forum;->loadForum(Landroid/content/Context;ILcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    return-object v0
.end method

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
    .line 280
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v0

    return-object v0
.end method

.method public hideSearch()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_feedback_forum:I

    invoke-virtual {p0, v1}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->setTitle(I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Suggestion;>;"
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 52
    new-instance v1, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;

    sget v2, Lcom/uservoice/uservoicesdk/R$layout;->uv_suggestion_item:I

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;-><init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/activity/ForumActivity$2;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$2;-><init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/activity/ForumActivity$3;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$3;-><init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    new-instance v1, Lcom/uservoice/uservoicesdk/flow/InitManager;

    new-instance v2, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;-><init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/uservoice/uservoicesdk/flow/InitManager;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/flow/InitManager;->init()V

    .line 226
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    sget v3, Lcom/uservoice/uservoicesdk/R$menu;->uv_forum:I

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 232
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_menu_search:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 233
    .local v1, "searchItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->hasActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    new-instance v2, Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;-><init>(Lcom/uservoice/uservoicesdk/activity/SearchActivity;)V

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 235
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    .line 236
    .local v0, "search":Landroid/support/v7/widget/SearchView;
    new-instance v2, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/ui/SearchQueryListener;-><init>(Lcom/uservoice/uservoicesdk/activity/SearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 240
    .end local v0    # "search":Landroid/support/v7/widget/SearchView;
    :goto_0
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_new_idea:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/Config;->shouldShowPostIdea()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 241
    const/4 v2, 0x1

    return v2

    .line 238
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_new_idea:I

    if-ne v0, v1, :cond_0

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/Session;->setSignInListener(Ljava/lang/Runnable;)V

    .line 256
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onStop()V

    .line 257
    return-void
.end method

.method public showSearch()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public suggestionUpdated(Lcom/uservoice/uservoicesdk/model/Suggestion;)V
    .locals 1
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/Suggestion;

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->notifyDataSetChanged()V

    .line 298
    return-void
.end method
