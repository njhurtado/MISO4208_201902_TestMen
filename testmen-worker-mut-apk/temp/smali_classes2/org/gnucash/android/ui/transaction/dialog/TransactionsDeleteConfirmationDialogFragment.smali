.class public Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TransactionsDeleteConfirmationDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IJ)Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;
    .locals 3
    .param p0, "title"    # I
    .param p1, "id"    # J

    .prologue
    .line 48
    new-instance v1, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    invoke-direct {v1}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;-><init>()V

    .line 49
    .local v1, "frag":Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v2, "selected_transactions"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    invoke-virtual {v1, v0}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "title":I
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selected_transactions"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 59
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const v0, 0x7f0f0136

    .line 60
    .local v0, "message":I
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x108001d

    .line 61
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0022

    new-instance v6, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;

    invoke-direct {v6, p0, v2, v3}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;J)V

    .line 63
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0021

    new-instance v6, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$1;

    invoke-direct {v6, p0}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$1;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;)V

    .line 90
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 60
    return-object v4

    .line 59
    .end local v0    # "message":I
    :cond_0
    const v0, 0x7f0f0137

    goto :goto_0
.end method
