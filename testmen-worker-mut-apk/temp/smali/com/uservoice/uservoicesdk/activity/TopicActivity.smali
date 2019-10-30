.class public Lcom/uservoice/uservoicesdk/activity/TopicActivity;
.super Lcom/uservoice/uservoicesdk/activity/SearchActivity;
.source "TopicActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    return-object v0
.end method

.method public hideSearch()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->hideSearch()V

    .line 123
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "topic"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/Topic;

    .line 34
    .local v2, "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->hasActionBar()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 36
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/uservoice/uservoicesdk/R$layout;->support_simple_spinner_dropdown_item:I

    .line 37
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uservoice/uservoicesdk/Session;->getTopics()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    .local v3, "topicAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/uservoice/uservoicesdk/model/Topic;>;"
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    new-instance v5, Lcom/uservoice/uservoicesdk/activity/TopicActivity$1;

    invoke-direct {v5, p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity$1;-><init>(Lcom/uservoice/uservoicesdk/activity/TopicActivity;)V

    invoke-virtual {v4, v3, v5}, Landroid/support/v7/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    .line 48
    sget v4, Lcom/uservoice/uservoicesdk/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/Session;->getTopics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 50
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/Session;->getTopics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/Topic;

    .line 51
    .local v1, "t":Lcom/uservoice/uservoicesdk/model/Topic;
    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/Topic;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/Topic;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 52
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4, v0}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/uservoice/uservoicesdk/model/Topic;
    .end local v3    # "topicAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/uservoice/uservoicesdk/model/Topic;>;"
    :cond_1
    invoke-virtual {p0, v7}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 59
    new-instance v4, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;

    sget v5, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_item:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v4, p0, p0, v5, v6}, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;-><init>(Lcom/uservoice/uservoicesdk/activity/TopicActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;-><init>(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/uservoice/uservoicesdk/activity/TopicActivity$3;

    invoke-direct {v5, p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity$3;-><init>(Lcom/uservoice/uservoicesdk/activity/TopicActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    sget-object v4, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_TOPIC:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/Topic;->getId()I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;I)V

    .line 108
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/uservoice/uservoicesdk/R$menu;->uv_portal:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->setupScopedSearch(Landroid/view/Menu;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_action_contact:I

    if-ne v0, v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uservoice/uservoicesdk/activity/ContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 112
    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_action_contact:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    .local v0, "item":Landroid/view/MenuItem;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->shouldShowContactUs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 117
    const/4 v1, 0x1

    return v1
.end method
