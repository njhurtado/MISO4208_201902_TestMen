.class Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;
.super Ljava/lang/Object;
.source "ArticleDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 45
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    if-eqz v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "unhelpful"

    iget-object v5, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-static {v5}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-static {v6}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)Lcom/uservoice/uservoicesdk/model/Article;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->trackDeflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/model/BaseModel;)V

    .line 47
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    .line 48
    .local v0, "activity":Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    .line 49
    .local v1, "adapter":Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;
    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->notHelpful()V

    .line 54
    .end local v0    # "activity":Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;
    .end local v1    # "adapter":Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v2, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;

    invoke-direct {v2}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;-><init>()V

    .line 52
    .local v2, "dialogFragment":Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "UnhelpfulDialogFragment"

    invoke-virtual {v2, v3, v4}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
