.class Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;
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
    .line 57
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VOTE_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-static {v3}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)Lcom/uservoice/uservoicesdk/model/Article;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/model/Article;->getId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;I)V

    .line 61
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "helpful"

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-static {v3}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-static {v4}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)Lcom/uservoice/uservoicesdk/model/Article;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->trackDeflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/model/BaseModel;)V

    .line 63
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;-><init>()V

    .line 64
    .local v0, "helpfulDialog":Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "HelpfulDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    .end local v0    # "helpfulDialog":Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;
    :cond_0
    return-void
.end method
