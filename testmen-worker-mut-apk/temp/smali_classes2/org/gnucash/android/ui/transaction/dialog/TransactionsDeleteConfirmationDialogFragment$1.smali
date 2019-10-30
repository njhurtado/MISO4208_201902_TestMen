.class Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "TransactionsDeleteConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->dismiss()V

    .line 94
    return-void
.end method
