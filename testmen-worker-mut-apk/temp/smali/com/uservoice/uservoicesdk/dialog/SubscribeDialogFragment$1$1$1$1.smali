.class Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "SubscribeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$3"    # Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;->this$3:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/Suggestion;)V
    .locals 3
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/Suggestion;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;->this$3:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;->this$3:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "subscribed"

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;->this$3:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;

    iget-object v2, v2, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    iget-object v2, v2, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v2, v2, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->trackDeflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/model/BaseModel;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;->this$3:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;)Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->suggestionSubscriptionUpdated(Lcom/uservoice/uservoicesdk/model/Suggestion;)V

    .line 76
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;->this$3:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 77
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;->onModel(Lcom/uservoice/uservoicesdk/model/Suggestion;)V

    return-void
.end method
