.class Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment$1;
.super Ljava/lang/Object;
.source "HelpfulDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 25
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 26
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/dialog/HelpfulDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 27
    return-void
.end method
