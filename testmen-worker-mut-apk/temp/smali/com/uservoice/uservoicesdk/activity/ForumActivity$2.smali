.class Lcom/uservoice/uservoicesdk/activity/ForumActivity$2;
.super Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;
.source "ForumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/ForumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    .prologue
    .line 191
    .local p2, "adapter":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter<*>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;-><init>(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->access$000(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 196
    :cond_0
    return-void
.end method
