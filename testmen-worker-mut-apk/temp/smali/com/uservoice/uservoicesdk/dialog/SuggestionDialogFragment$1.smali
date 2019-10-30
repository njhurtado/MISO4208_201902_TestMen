.class Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;
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
    .line 57
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$1;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;Landroid/content/Context;)V

    .line 68
    .local v0, "callback":Lcom/uservoice/uservoicesdk/ui/DefaultCallback;, "Lcom/uservoice/uservoicesdk/ui/DefaultCallback<Lcom/uservoice/uservoicesdk/model/Suggestion;>;"
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->isSubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v2

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/uservoice/uservoicesdk/model/Suggestion;->unsubscribe(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 83
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uservoice/uservoicesdk/Session;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uservoice/uservoicesdk/Session;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$2;

    invoke-direct {v4, p0, v0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1$2;-><init>(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;Lcom/uservoice/uservoicesdk/ui/DefaultCallback;)V

    invoke-static {v2, v3, v4}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->signinForSubscribe(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v2

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-static {v4}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;-><init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;Ljava/lang/String;)V

    .line 80
    .local v1, "dialog":Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "SubscribeDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
