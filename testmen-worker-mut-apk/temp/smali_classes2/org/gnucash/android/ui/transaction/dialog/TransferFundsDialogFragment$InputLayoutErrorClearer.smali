.class Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;
.super Ljava/lang/Object;
.source "TransferFundsDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputLayoutErrorClearer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;


# direct methods
.method private constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
    .param p2, "x1"    # Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$1;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 253
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 254
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 248
    return-void
.end method
