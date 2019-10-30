.class Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;
.super Ljava/lang/Object;
.source "PasswordDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 44
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getRequestToken()Lcom/uservoice/uservoicesdk/model/RequestToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;)V

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1$1;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getRequestToken(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0
.end method
