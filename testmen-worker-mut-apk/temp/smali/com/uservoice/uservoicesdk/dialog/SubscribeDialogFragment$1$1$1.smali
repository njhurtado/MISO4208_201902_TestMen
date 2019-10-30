.class Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;
.super Lcom/uservoice/uservoicesdk/flow/SigninCallback;
.source "SubscribeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->access$200(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    iget-object v3, v3, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v3, v3, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/model/Suggestion;->subscribe(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 79
    return-void
.end method
