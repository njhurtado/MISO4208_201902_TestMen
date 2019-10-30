.class Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;
.super Lcom/uservoice/uservoicesdk/flow/SigninCallback;
.source "CommentDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->val$text:Ljava/lang/String;

    new-instance v3, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1$1;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

    iget-object v4, v4, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/Comment;->createComment(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Suggestion;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 80
    return-void
.end method
