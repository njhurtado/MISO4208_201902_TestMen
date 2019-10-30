.class Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;
.super Ljava/lang/Object;
.source "SubscribeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->val$emailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_bad_email_format:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v2, v2, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v4, v4, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uservoice/uservoicesdk/Session;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/uservoice/uservoicesdk/Session;->persistIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    iget-object v3, v3, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uservoice/uservoicesdk/Session;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;

    invoke-direct {v3, p0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;)V

    invoke-static {v1, v2, v3}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->signinForSubscribe(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V

    goto :goto_0
.end method
