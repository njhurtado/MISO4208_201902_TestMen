.class Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;
.super Ljava/lang/Object;
.source "SubscribeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$emailField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->val$emailField:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 59
    .local v0, "positiveButton":Landroid/widget/Button;
    new-instance v1, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;

    invoke-direct {v1, p0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
