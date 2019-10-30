.class public Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;
.super Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;
.source "DeleteAllTransactionsConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;

    invoke-direct {v0}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;-><init>()V

    .line 49
    .local v0, "frag":Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;->getDialogBuilder()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108001d

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01ae

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0136

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0022

    new-instance v2, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog$1;-><init>(Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;)V

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 54
    return-object v0
.end method
