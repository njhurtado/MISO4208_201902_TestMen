.class Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$2;
.super Ljava/lang/Object;
.source "SuggestionDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-direct {v0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;-><init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)V

    .line 89
    .local v0, "dialog":Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CommentDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    return-void
.end method
