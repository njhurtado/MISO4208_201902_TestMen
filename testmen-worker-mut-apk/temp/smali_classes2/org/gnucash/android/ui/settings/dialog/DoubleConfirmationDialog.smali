.class public abstract Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DoubleConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private setUpConfirmCheckBox()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertDialog;

    .line 80
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 81
    .local v0, "confirmCheckBox":Landroid/widget/CheckBox;
    new-instance v2, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$2;

    invoke-direct {v2, p0, v1}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$2;-><init>(Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected getDialogBuilder()Landroid/support/v7/app/AlertDialog$Builder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0048

    .line 59
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f002d

    new-instance v2, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog$1;-><init>(Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;)V

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method protected onNegativeButton()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 71
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/DoubleConfirmationDialog;->setUpConfirmCheckBox()V

    .line 75
    :cond_0
    return-void
.end method
