.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;
.super Ljava/lang/Object;
.source "SigninDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "di"    # Landroid/content/DialogInterface;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;->val$dialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 109
    .local v1, "positiveButton":Landroid/widget/Button;
    new-instance v2, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4$1;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$200(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 117
    return-void
.end method
