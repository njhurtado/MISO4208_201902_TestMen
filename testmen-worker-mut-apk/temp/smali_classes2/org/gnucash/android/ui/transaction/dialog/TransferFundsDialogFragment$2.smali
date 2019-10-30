.class Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;
.super Ljava/lang/Object;
.source "TransferFundsDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInput:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 153
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mFetchExchangeRateButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    iget-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountRadioButton:Landroid/widget/RadioButton;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 155
    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 158
    :cond_0
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
