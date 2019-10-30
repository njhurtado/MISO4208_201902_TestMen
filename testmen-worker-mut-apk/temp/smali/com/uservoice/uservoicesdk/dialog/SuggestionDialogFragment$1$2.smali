.class Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$2;
.super Lcom/uservoice/uservoicesdk/flow/SigninCallback;
.source "SuggestionDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;

.field final synthetic val$callback:Lcom/uservoice/uservoicesdk/ui/DefaultCallback;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;Lcom/uservoice/uservoicesdk/ui/DefaultCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$2;->val$callback:Lcom/uservoice/uservoicesdk/ui/DefaultCallback;

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$2;->val$callback:Lcom/uservoice/uservoicesdk/ui/DefaultCallback;

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->subscribe(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 76
    return-void
.end method
