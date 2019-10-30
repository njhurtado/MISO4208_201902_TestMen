.class Lcom/uservoice/uservoicesdk/activity/TopicActivity$1;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Landroid/support/v7/app/ActionBar$OnNavigationListener;


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
    .line 38
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 42
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Session;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/Topic;

    .line 43
    .local v0, "topic":Lcom/uservoice/uservoicesdk/model/Topic;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "topic"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/TopicActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/TopicActivity;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/activity/TopicActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->reload()V

    .line 45
    const/4 v1, 0x1

    return v1
.end method
