.class public Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;
.super Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;
.source "DeleteAllAccountsConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;

    invoke-direct {v0}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;-><init>()V

    .line 40
    .local v0, "frag":Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;->getDialogBuilder()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108001d

    .line 46
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01ae

    .line 47
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0022

    new-instance v2, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog$1;-><init>(Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;)V

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 45
    return-object v0
.end method
