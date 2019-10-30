.class Lcom/uservoice/uservoicesdk/activity/ForumActivity$3;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 202
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 203
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    const-class v5, Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/model/Suggestion;

    .line 206
    .local v1, "suggestion":Lcom/uservoice/uservoicesdk/model/Suggestion;
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;-><init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Ljava/lang/String;)V

    .line 207
    .local v0, "dialog":Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "SuggestionDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
