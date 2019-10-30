.class Lcom/uservoice/uservoicesdk/activity/TopicActivity$3;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/TopicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/TopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 100
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/Article;

    .line 101
    .local v0, "article":Lcom/uservoice/uservoicesdk/model/Article;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    const-class v3, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "article"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-virtual {v2, v1}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
