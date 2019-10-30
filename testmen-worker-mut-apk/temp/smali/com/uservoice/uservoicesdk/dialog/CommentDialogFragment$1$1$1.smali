.class Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "CommentDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/Comment;)V
    .locals 3
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/Comment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;->val$context:Landroid/app/Activity;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_comment_posted:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;)Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->commentPosted(Lcom/uservoice/uservoicesdk/model/Comment;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/uservoice/uservoicesdk/model/Comment;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1$1$1;->onModel(Lcom/uservoice/uservoicesdk/model/Comment;)V

    return-void
.end method
