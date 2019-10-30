.class public Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TransferFundsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;
    }
.end annotation


# instance fields
.field mCancelButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090038
    .end annotation
.end field

.field mConvertedAmount:Lorg/gnucash/android/model/Money;

.field mConvertedAmountCurrencyLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e7
    .end annotation
.end field

.field mConvertedAmountInput:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f4
    .end annotation
.end field

.field mConvertedAmountInputLayout:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090072
    .end annotation
.end field

.field mConvertedAmountRadioButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090189
    .end annotation
.end field

.field mExchangeRateInput:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f9
    .end annotation
.end field

.field mExchangeRateInputLayout:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ac
    .end annotation
.end field

.field mExchangeRateRadioButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018c
    .end annotation
.end field

.field mFetchExchangeRateButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090039
    .end annotation
.end field

.field mFromCurrencyLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900cf
    .end annotation
.end field

.field mOnTransferFundsListener:Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;

.field mOriginAmount:Lorg/gnucash/android/model/Money;

.field mSampleExchangeRate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090114
    .end annotation
.end field

.field mSaveButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003f
    .end annotation
.end field

.field mStartAmountLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090027
    .end annotation
.end field

.field private mTargetCommodity:Lorg/gnucash/android/model/Commodity;

.field mToCurrencyLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090205
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->transferFunds()V

    return-void
.end method

.method public static getInstance(Lorg/gnucash/android/model/Money;Ljava/lang/String;Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;)Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
    .locals 2
    .param p0, "transactionAmount"    # Lorg/gnucash/android/model/Money;
    .param p1, "targetCurrencyCode"    # Ljava/lang/String;
    .param p2, "transferFundsListener"    # Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;

    .prologue
    .line 87
    new-instance v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;-><init>()V

    .line 88
    .local v0, "fragment":Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
    iput-object p0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOriginAmount:Lorg/gnucash/android/model/Money;

    .line 89
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v1

    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    .line 90
    iput-object p2, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOnTransferFundsListener:Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;

    .line 91
    return-object v0
.end method

.method private transferFunds()V
    .locals 10

    .prologue
    .line 196
    const/4 v3, 0x0

    .line 198
    .local v3, "price":Lorg/gnucash/android/model/Price;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOriginAmount:Lorg/gnucash/android/model/Money;

    invoke-virtual {v6}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/gnucash/android/model/Commodity;->getUID()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "originCommodityUID":Ljava/lang/String;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v6}, Lorg/gnucash/android/model/Commodity;->getUID()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "targetCommodityUID":Ljava/lang/String;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    :try_start_0
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/gnucash/android/util/AmountParser;->parse(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 209
    .local v4, "rate":Ljava/math/BigDecimal;
    new-instance v3, Lorg/gnucash/android/model/Price;

    .end local v3    # "price":Lorg/gnucash/android/model/Price;
    invoke-direct {v3, v2, v5, v4}, Lorg/gnucash/android/model/Price;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 211
    .restart local v3    # "price":Lorg/gnucash/android/model/Price;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOriginAmount:Lorg/gnucash/android/model/Money;

    invoke-virtual {v6, v4}, Lorg/gnucash/android/model/Money;->multiply(Ljava/math/BigDecimal;)Lorg/gnucash/android/model/Money;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v6, v7}, Lorg/gnucash/android/model/Money;->withCurrency(Lorg/gnucash/android/model/Commodity;)Lorg/gnucash/android/model/Money;

    move-result-object v6

    iput-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmount:Lorg/gnucash/android/model/Money;

    .line 214
    .end local v4    # "rate":Ljava/math/BigDecimal;
    :cond_0
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    :try_start_1
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/gnucash/android/util/AmountParser;->parse(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 222
    .local v0, "amount":Ljava/math/BigDecimal;
    new-instance v6, Lorg/gnucash/android/model/Money;

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v6, v0, v7}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    iput-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmount:Lorg/gnucash/android/model/Money;

    .line 224
    new-instance v3, Lorg/gnucash/android/model/Price;

    .end local v3    # "price":Lorg/gnucash/android/model/Price;
    invoke-direct {v3, v2, v5}, Lorg/gnucash/android/model/Price;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .restart local v3    # "price":Lorg/gnucash/android/model/Price;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmount:Lorg/gnucash/android/model/Money;

    invoke-virtual {v6}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v6

    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOriginAmount:Lorg/gnucash/android/model/Money;

    invoke-virtual {v8}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v8

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lorg/gnucash/android/model/Price;->setValueNum(J)V

    .line 227
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOriginAmount:Lorg/gnucash/android/model/Money;

    invoke-virtual {v6}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v6

    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmount:Lorg/gnucash/android/model/Money;

    invoke-virtual {v8}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v8

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lorg/gnucash/android/model/Price;->setValueDenom(J)V

    .line 230
    .end local v0    # "amount":Ljava/math/BigDecimal;
    :cond_1
    const-string v6, "user:xfer-dialog"

    invoke-virtual {v3, v6}, Lorg/gnucash/android/model/Price;->setSource(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;)V

    .line 233
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOnTransferFundsListener:Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;

    if-eqz v6, :cond_2

    .line 234
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOnTransferFundsListener:Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmount:Lorg/gnucash/android/model/Money;

    invoke-interface {v6, v7}, Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;->transferComplete(Lorg/gnucash/android/model/Money;)V

    .line 236
    :cond_2
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->dismiss()V

    .line 237
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/text/ParseException;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInputLayout:Landroid/support/design/widget/TextInputLayout;

    const v7, 0x7f0f0079

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/text/ParseException;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInputLayout:Landroid/support/design/widget/TextInputLayout;

    const v7, 0x7f0f0078

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 188
    .local v0, "dialog":Landroid/app/Dialog;
    const v1, 0x7f0f01e6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 189
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 97
    const v17, 0x7f0b004b

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 98
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mStartAmountLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOriginAmount:Lorg/gnucash/android/model/Money;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOriginAmount:Lorg/gnucash/android/model/Money;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, "fromCurrencyCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mFromCurrencyLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mToCurrencyLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountCurrencyLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mSampleExchangeRate:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f0f016d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    move-object/from16 v21, v0

    .line 108
    invoke-virtual/range {v21 .. v21}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 106
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v15, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$1;)V

    .line 111
    .local v15, "textChangeListener":Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$InputLayoutErrorClearer;
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v4

    .line 112
    .local v4, "commoditiesDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    invoke-virtual {v4, v10}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "commodityUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/gnucash/android/model/Commodity;->getUID()Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "currencyUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    move-result-object v14

    .line 115
    .local v14, "pricesDbAdapter":Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    invoke-virtual {v14, v5, v7}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->getPrice(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    .line 117
    .local v13, "pricePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_0

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_0

    .line 119
    new-instance v12, Lorg/gnucash/android/model/Price;

    invoke-direct {v12, v5, v7}, Lorg/gnucash/android/model/Price;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v12, "price":Lorg/gnucash/android/model/Price;
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lorg/gnucash/android/model/Price;->setValueNum(J)V

    .line 121
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lorg/gnucash/android/model/Price;->setValueDenom(J)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInput:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lorg/gnucash/android/model/Price;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v11, Ljava/math/BigDecimal;

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v11, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 125
    .local v11, "numerator":Ljava/math/BigDecimal;
    new-instance v8, Ljava/math/BigDecimal;

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 127
    .local v8, "denominator":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mOriginAmount:Lorg/gnucash/android/model/Money;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mTargetCommodity:Lorg/gnucash/android/model/Commodity;

    move-object/from16 v18, v0

    .line 128
    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v18

    const/16 v19, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v6

    .line 129
    .local v6, "convertedAmount":Ljava/math/BigDecimal;
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v9

    check-cast v9, Ljava/text/DecimalFormat;

    .line 130
    .local v9, "formatter":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInput:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual {v9, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v6    # "convertedAmount":Ljava/math/BigDecimal;
    .end local v8    # "denominator":Ljava/math/BigDecimal;
    .end local v9    # "formatter":Ljava/text/DecimalFormat;
    .end local v11    # "numerator":Ljava/math/BigDecimal;
    .end local v12    # "price":Lorg/gnucash/android/model/Price;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateInput:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountInput:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mConvertedAmountRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    new-instance v18, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$1;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mExchangeRateRadioButton:Landroid/widget/RadioButton;

    move-object/from16 v17, v0

    new-instance v18, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$2;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mFetchExchangeRateButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$3;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$4;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->mSaveButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$5;-><init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-object v16
.end method
