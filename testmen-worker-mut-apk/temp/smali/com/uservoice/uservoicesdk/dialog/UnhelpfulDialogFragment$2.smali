.class Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$2;
.super Ljava/lang/Object;
.source "UnhelpfulDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/uservoice/uservoicesdk/activity/ContactActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 37
    return-void
.end method
