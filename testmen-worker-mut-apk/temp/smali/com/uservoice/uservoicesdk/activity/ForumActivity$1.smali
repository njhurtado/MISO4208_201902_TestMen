.class Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;
.super Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
.source "ForumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/ForumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field initializing:Z

.field staticRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I

    .prologue
    .line 52
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Suggestion;>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->initializing:Z

    return-void
.end method

.method private computeStaticRows()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    .line 71
    .local v0, "config":Lcom/uservoice/uservoicesdk/Config;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->shouldShowPostIdea()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v0    # "config":Lcom/uservoice/uservoicesdk/Config;
    :cond_1
    return-void
.end method


# virtual methods
.method protected customizeLayout(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Suggestion;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "model"    # Lcom/uservoice/uservoicesdk/model/Suggestion;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 135
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_suggestion_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_subscriber_count:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 139
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->shouldDisplaySuggestionsByRank()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getRankString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_suggestion_status:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 146
    .restart local v2    # "textView":Landroid/widget/TextView;
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_suggestion_status_color:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, "colorView":Landroid/view/View;
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 148
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :goto_1
    return-void

    .line 142
    .end local v1    # "colorView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getNumberOfSubscribers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    .restart local v1    # "colorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatusColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, "color":I
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method protected bridge synthetic customizeLayout(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p2, Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-virtual {p0, p1, p2}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->customizeLayout(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Suggestion;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->computeStaticRows()V

    .line 90
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->initializing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->computeStaticRows()V

    .line 106
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->computeStaticRows()V

    .line 96
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->initializing:Z

    if-eqz v0, :cond_1

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->staticRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTotalNumberOfObjects()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->access$000(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Forum;->getNumberOfOpenSuggestions()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 111
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->getItemViewType(I)I

    move-result v1

    .line 112
    .local v1, "type":I
    if-eq v1, v4, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 113
    :cond_0
    move-object v2, p2

    .line 114
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_1

    .line 115
    if-ne v1, v4, :cond_2

    .line 116
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/uservoice/uservoicesdk/R$layout;->uv_text_item:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, "text":Landroid/widget/TextView;
    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_post_an_idea:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 119
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_text2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .end local v0    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-object v2

    .line 122
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/uservoice/uservoicesdk/R$layout;->uv_header_item_light:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 123
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .restart local v0    # "text":Landroid/widget/TextView;
    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_idea_text_heading:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 129
    .end local v0    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->initializing:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->notifyDataSetChanged()V

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->initializing:Z

    .line 64
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loadMore()V

    .line 65
    return-void
.end method

.method public loadPage(ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Suggestion;>;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->access$000(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->loadSuggestions(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Forum;ILcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 163
    return-void
.end method

.method public search(Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;>;)",
            "Lcom/uservoice/uservoicesdk/rest/RestTask;"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Suggestion;>;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->access$000(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->access$000(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;-><init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    invoke-static {v0, v1, p1, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->searchSuggestions(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Forum;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v0

    goto :goto_0
.end method
