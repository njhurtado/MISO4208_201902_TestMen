.class public Lcom/uservoice/uservoicesdk/activity/ArticleActivity;
.super Lcom/uservoice/uservoicesdk/activity/SearchActivity;
.source "ArticleActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->webView:Landroid/webkit/WebView;

    const-string v1, ""

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->finish()V

    .line 104
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v2, Lcom/uservoice/uservoicesdk/R$layout;->uv_article_layout:I

    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "article"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/Article;

    .line 35
    .local v0, "article":Lcom/uservoice/uservoicesdk/model/Article;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_webview:I

    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->webView:Landroid/webkit/WebView;

    .line 37
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_helpful_section:I

    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "helpfulSection":Landroid/view/View;
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->webView:Landroid/webkit/WebView;

    invoke-static {v2, v0, p0}, Lcom/uservoice/uservoicesdk/ui/Utils;->displayArticle(Landroid/webkit/WebView;Lcom/uservoice/uservoicesdk/model/Article;Landroid/content/Context;)V

    .line 39
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_container:I

    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x1000000

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$1;-><init>(Lcom/uservoice/uservoicesdk/activity/ArticleActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 47
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_helpful_button:I

    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$2;-><init>(Lcom/uservoice/uservoicesdk/activity/ArticleActivity;Lcom/uservoice/uservoicesdk/model/Article;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_unhelpful_button:I

    invoke-virtual {p0, v2}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$3;

    invoke-direct {v3, p0}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$3;-><init>(Lcom/uservoice/uservoicesdk/activity/ArticleActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Article;->getId()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;I)V

    .line 63
    return-void

    .line 39
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/uservoice/uservoicesdk/R$menu;->uv_portal:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->setupScopedSearch(Landroid/view/Menu;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_action_contact:I

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uservoice/uservoicesdk/activity/ContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    const/4 v0, 0x1

    .line 96
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
    .line 74
    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_action_contact:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 75
    .local v0, "item":Landroid/view/MenuItem;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Config;->shouldShowContactUs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 79
    const/4 v1, 0x1

    return v1
.end method
