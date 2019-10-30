.class Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;
.super Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
.source "TopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/TopicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Article;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/TopicActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/TopicActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I

    .prologue
    .line 59
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Article;>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected customizeLayout(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Article;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "model"    # Lcom/uservoice/uservoicesdk/model/Article;

    .prologue
    .line 82
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "topic"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/uservoice/uservoicesdk/model/Topic;

    .line 83
    .local v2, "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, "text":Landroid/widget/TextView;
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_text2:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, "text2":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/Topic;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Article;->getTopicName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Article;->getTopicName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic customizeLayout(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p2, Lcom/uservoice/uservoicesdk/model/Article;

    invoke-virtual {p0, p1, p2}, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;->customizeLayout(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Article;)V

    return-void
.end method

.method public getTotalNumberOfObjects()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 72
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "topic"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/Topic;

    .line 73
    .local v0, "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Topic;->getId()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 76
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Topic;->getNumberOfArticles()I

    move-result v1

    goto :goto_0
.end method

.method protected loadPage(ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 3
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Article;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Article;>;>;"
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "topic"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/Topic;

    .line 63
    .local v0, "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Topic;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-static {v1, p1, p2}, Lcom/uservoice/uservoicesdk/model/Article;->loadPage(Landroid/content/Context;ILcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Topic;->getId()I

    move-result v2

    invoke-static {v1, v2, p1, p2}, Lcom/uservoice/uservoicesdk/model/Article;->loadPageForTopic(Landroid/content/Context;IILcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0
.end method
