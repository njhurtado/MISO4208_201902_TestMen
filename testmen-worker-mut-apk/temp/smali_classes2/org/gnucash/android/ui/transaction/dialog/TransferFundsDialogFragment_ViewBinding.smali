.class public Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "TransferFundsDialogFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    .line 25
    const v0, 0x7f0900cf

    const-string v1, "field \'mFromCurrencyLabel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mFromCurrencyLabel:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f090205

    const-string v1, "field \'mToCurrencyLabel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mToCurrencyLabel:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0901e7

    const-string v1, "field \'mConvertedAmountCurrencyLabel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountCurrencyLabel:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f090027

    const-string v1, "field \'mStartAmountLabel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mStartAmountLabel:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0900f9

    const-string v1, "field \'mExchangeRateInput\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInput:Landroid/widget/EditText;

    .line 30
    const v0, 0x7f0900f4

    const-string v1, "field \'mConvertedAmountInput\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInput:Landroid/widget/EditText;

    .line 31
    const v0, 0x7f090039

    const-string v1, "field \'mFetchExchangeRateButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mFetchExchangeRateButton:Landroid/widget/Button;

    .line 32
    const v0, 0x7f09018c

    const-string v1, "field \'mExchangeRateRadioButton\'"

    const-class v2, Landroid/widget/RadioButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateRadioButton:Landroid/widget/RadioButton;

    .line 33
    const v0, 0x7f090189

    const-string v1, "field \'mConvertedAmountRadioButton\'"

    const-class v2, Landroid/widget/RadioButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountRadioButton:Landroid/widget/RadioButton;

    .line 34
    const v0, 0x7f090114

    const-string v1, "field \'mSampleExchangeRate\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mSampleExchangeRate:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0900ac

    const-string v1, "field \'mExchangeRateInputLayout\'"

    const-class v2, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 36
    const v0, 0x7f090072

    const-string v1, "field \'mConvertedAmountInputLayout\'"

    const-class v2, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 37
    const v0, 0x7f09003f

    const-string v1, "field \'mSaveButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mSaveButton:Landroid/widget/Button;

    .line 38
    const v0, 0x7f090038

    const-string v1, "field \'mCancelButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 39
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    .line 45
    .local v0, "target":Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    .line 48
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mFromCurrencyLabel:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mToCurrencyLabel:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountCurrencyLabel:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mStartAmountLabel:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInput:Landroid/widget/EditText;

    .line 53
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInput:Landroid/widget/EditText;

    .line 54
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mFetchExchangeRateButton:Landroid/widget/Button;

    .line 55
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateRadioButton:Landroid/widget/RadioButton;

    .line 56
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountRadioButton:Landroid/widget/RadioButton;

    .line 57
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mSampleExchangeRate:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 59
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 60
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mSaveButton:Landroid/widget/Button;

    .line 61
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 62
    return-void
.end method
