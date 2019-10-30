.class public Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;
.super Lcom/uservoice/uservoicesdk/ui/SearchAdapter;
.source "MixedSearchAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/SearchAdapter",
        "<",
        "Lcom/uservoice/uservoicesdk/model/BaseModel;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field protected static LOADING:I

.field public static SCOPE_ALL:I

.field public static SCOPE_ARTICLES:I

.field public static SCOPE_IDEAS:I

.field protected static SEARCH_RESULT:I


# instance fields
.field protected final context:Landroid/support/v4/app/FragmentActivity;

.field protected inflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SEARCH_RESULT:I

    .line 26
    sput v1, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->LOADING:I

    .line 28
    sput v0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SCOPE_ALL:I

    .line 29
    sput v1, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SCOPE_ARTICLES:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SCOPE_IDEAS:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->getScopedSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->getScopedSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/BaseModel;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->loading:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->LOADING:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SEARCH_RESULT:I

    goto :goto_0
.end method

.method public getScopedSearchResults()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->scope:I

    sget v4, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SCOPE_ALL:I

    if-ne v3, v4, :cond_1

    .line 46
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->searchResults:Ljava/util/List;

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->scope:I

    sget v4, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SCOPE_ARTICLES:I

    if-ne v3, v4, :cond_3

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "articles":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->searchResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 50
    .local v2, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    instance-of v4, v2, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v4, :cond_2

    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    .end local v0    # "articles":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    .end local v2    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_3
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->scope:I

    sget v4, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SCOPE_IDEAS:I

    if-ne v3, v4, :cond_6

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "ideas":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->searchResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 57
    .restart local v2    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    instance-of v4, v2, Lcom/uservoice/uservoicesdk/model/Suggestion;

    if-eqz v4, :cond_4

    .line 58
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_5
    move-object v0, v1

    .line 60
    goto :goto_0

    .line 62
    .end local v1    # "ideas":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 131
    move-object v1, p2

    .line 132
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->getItemViewType(I)I

    move-result v0

    .line 133
    .local v0, "type":I
    if-nez v1, :cond_0

    .line 134
    sget v2, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SEARCH_RESULT:I

    if-ne v0, v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/uservoice/uservoicesdk/R$layout;->uv_instant_answer_item:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 140
    :cond_0
    :goto_0
    sget v2, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SEARCH_RESULT:I

    if-ne v0, v2, :cond_1

    .line 141
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/BaseModel;

    invoke-static {v1, v2}, Lcom/uservoice/uservoicesdk/ui/Utils;->displayInstantAnswer(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/BaseModel;)V

    .line 143
    :cond_1
    return-object v1

    .line 136
    :cond_2
    sget v2, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->LOADING:I

    if-ne v0, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/uservoice/uservoicesdk/R$layout;->uv_loading_item:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->loading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->getItemViewType(I)I

    move-result v0

    .line 149
    .local v0, "type":I
    sget v1, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->SEARCH_RESULT:I

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p3}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/BaseModel;

    invoke-static {v2, v1}, Lcom/uservoice/uservoicesdk/ui/Utils;->showModel(Landroid/support/v4/app/FragmentActivity;Lcom/uservoice/uservoicesdk/model/BaseModel;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected search(Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;>;)",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->currentQuery:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter$1;-><init>(Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {v0, p1, v1}, Lcom/uservoice/uservoicesdk/model/Article;->loadInstantAnswers(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v0

    return-object v0
.end method

.method protected searchResultsUpdated()V
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "articleResults":I
    const/4 v1, 0x0

    .line 69
    .local v1, "ideaResults":I
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->searchResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/BaseModel;

    .line 70
    .local v2, "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    instance-of v4, v2, Lcom/uservoice/uservoicesdk/model/Article;

    if-eqz v4, :cond_0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "model":Lcom/uservoice/uservoicesdk/model/BaseModel;
    :cond_1
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    check-cast v3, Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->searchResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->updateScopedSearch(III)V

    .line 76
    return-void
.end method
