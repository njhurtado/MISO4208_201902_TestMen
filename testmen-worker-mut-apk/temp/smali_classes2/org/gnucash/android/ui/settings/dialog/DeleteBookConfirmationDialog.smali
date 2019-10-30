.class public Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;
.super Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;
.source "DeleteBookConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;
    .locals 3
    .param p0, "bookUID"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    new-instance v1, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;

    invoke-direct {v1}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;-><init>()V

    .line 38
    .local v1, "frag":Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "bookUID"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;->getDialogBuilder()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01af

    .line 48
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800a9

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0133

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f002f

    new-instance v2, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog$1;-><init>(Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;)V

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 47
    return-object v0
.end method
