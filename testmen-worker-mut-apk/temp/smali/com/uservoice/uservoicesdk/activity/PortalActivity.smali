.class public Lcom/uservoice/uservoicesdk/activity/PortalActivity;
.super Lcom/uservoice/uservoicesdk/activity/SearchActivity;
.source "PortalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PortalAdapter;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget v0, Lcom/uservoice/uservoicesdk/R$string;->uv_portal_title:I

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->setTitle(I)V

    .line 20
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-direct {v0, p0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 24
    sget-object v0, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_KB:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-static {p0, v0}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;)V

    .line 25
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/uservoice/uservoicesdk/R$menu;->uv_portal:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->setupScopedSearch(Landroid/view/Menu;)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_action_contact:I

    if-ne v0, v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uservoice/uservoicesdk/activity/ContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/activity/PortalActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    const/4 v0, 0x1

    .line 50
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
    .line 29
    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_action_contact:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 30
    .local v0, "item":Landroid/view/MenuItem;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->shouldShowContactUs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 34
    const/4 v1, 0x1

    return v1
.end method
