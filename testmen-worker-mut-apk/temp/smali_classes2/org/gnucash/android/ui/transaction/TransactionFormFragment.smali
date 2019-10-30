.class public Lorg/gnucash/android/ui/transaction/TransactionFormFragment;
.super Landroid/support/v4/app/Fragment;
.source "TransactionFormFragment.java"

# interfaces
.implements Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;
.implements Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$OnTimeSetListener;
.implements Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;
.implements Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/TransactionFormFragment$DropDownCursorAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final REQUEST_SPLIT_EDITOR:I = 0x11

.field public static final TIME_FORMATTER:Ljava/text/DateFormat;


# instance fields
.field private mAccountCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

.field mAccountType:Lorg/gnucash/android/model/AccountType;

.field private mAccountUID:Ljava/lang/String;

.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090101
    .end annotation
.end field

.field mCurrencyConversionDone:Z

.field mCurrencyTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090079
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDate:Ljava/util/Calendar;

.field mDateTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f6
    .end annotation
.end field

.field mDescriptionEditText:Landroid/widget/AutoCompleteTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090102
    .end annotation
.end field

.field mDoubleEntryLayout:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090124
    .end annotation
.end field

.field private mEditMode:Z

.field private mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

.field mKeyboardView:Landroid/inputmethodservice/KeyboardView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090051
    .end annotation
.end field

.field mNotesEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f8
    .end annotation
.end field

.field mOpenSplitEditor:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090040
    .end annotation
.end field

.field private mRecurrenceRule:Ljava/lang/String;

.field mRecurrenceTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fc
    .end annotation
.end field

.field mSaveTemplateCheckbox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090062
    .end annotation
.end field

.field private mSplitQuantity:Lorg/gnucash/android/model/Money;

.field private mSplitsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:Ljava/util/Calendar;

.field mTimeTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090100
    .end annotation
.end field

.field private mTransaction:Lorg/gnucash/android/model/Transaction;

.field mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field

.field private mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

.field mTransferAccountSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090104
    .end annotation
.end field

.field private mUseDoubleEntry:Z

.field private onSaveAttempt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->$assertionsDisabled:Z

    .line 137
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    .line 142
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->TIME_FORMATTER:Ljava/text/DateFormat;

    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 230
    new-instance v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    .line 236
    iput-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEditMode:Z

    .line 243
    iput-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->onSaveAttempt:Z

    .line 1044
    iput-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyConversionDone:Z

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->openSplitEditor()V

    return-void
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->startTransferFunds()V

    return-void
.end method

.method static synthetic access$500(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Lorg/gnucash/android/model/Transaction;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    return-object v0
.end method

.method static synthetic access$602(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;Lorg/gnucash/android/model/Transaction;)Lorg/gnucash/android/model/Transaction;
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;
    .param p1, "x1"    # Lorg/gnucash/android/model/Transaction;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    return-object p1
.end method

.method static synthetic access$700(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->initializeViewsWithTransaction()V

    return-void
.end method

.method static synthetic access$800(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;I)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setDoubleEntryViewsVisibility(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    return v0
.end method

.method private canSave()Z
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isInputValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    .line 972
    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 973
    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isInputValid()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 971
    :goto_0
    return v0

    .line 973
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private extractSplitsFromView()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v15}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    .line 758
    :goto_0
    return-object v10

    .line 711
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v15}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v2

    .line 712
    .local v2, "amountBigd":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "baseCurrencyCode":Ljava/lang/String;
    new-instance v14, Lorg/gnucash/android/model/Money;

    invoke-static {v3}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v15

    invoke-direct {v14, v2, v15}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 714
    .local v14, "value":Lorg/gnucash/android/model/Money;
    new-instance v7, Lorg/gnucash/android/model/Money;

    invoke-direct {v7, v14}, Lorg/gnucash/android/model/Money;-><init>(Lorg/gnucash/android/model/Money;)V

    .line 716
    .local v7, "quantity":Lorg/gnucash/android/model/Money;
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getTransferAccountUID()Ljava/lang/String;

    move-result-object v12

    .line 717
    .local v12, "transferAcctUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v4

    .line 719
    .local v4, "cmdtyDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->isMultiCurrencyTransaction()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 720
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v15, v12}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 721
    .local v13, "transferCurrencyCode":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, "commodityUID":Ljava/lang/String;
    invoke-virtual {v4, v13}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 724
    .local v11, "targetCmdtyUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    move-result-object v15

    .line 725
    invoke-virtual {v15, v5, v11}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->getPrice(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 727
    .local v6, "pricePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v15, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_1

    iget-object v15, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_1

    .line 728
    iget-object v15, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Lorg/gnucash/android/model/Money;->multiply(I)Lorg/gnucash/android/model/Money;

    move-result-object v16

    iget-object v15, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    .line 729
    invoke-virtual {v15}, Ljava/lang/Long;->intValue()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/gnucash/android/model/Money;->divide(I)Lorg/gnucash/android/model/Money;

    move-result-object v16

    .line 730
    invoke-virtual {v4, v11}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v15

    check-cast v15, Lorg/gnucash/android/model/Commodity;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/gnucash/android/model/Money;->withCurrency(Lorg/gnucash/android/model/Commodity;)Lorg/gnucash/android/model/Money;

    move-result-object v7

    .line 737
    .end local v5    # "commodityUID":Ljava/lang/String;
    .end local v6    # "pricePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "targetCmdtyUID":Ljava/lang/String;
    .end local v13    # "transferCurrencyCode":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 738
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/gnucash/android/model/Split;

    .line 739
    .local v8, "split1":Lorg/gnucash/android/model/Split;
    invoke-virtual {v8, v14}, Lorg/gnucash/android/model/Split;->setValue(Lorg/gnucash/android/model/Money;)V

    .line 740
    invoke-virtual {v8, v14}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/gnucash/android/model/Split;

    .line 744
    .local v9, "split2":Lorg/gnucash/android/model/Split;
    invoke-virtual {v9, v14}, Lorg/gnucash/android/model/Split;->setValue(Lorg/gnucash/android/model/Money;)V

    .line 745
    invoke-virtual {v9, v7}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 746
    invoke-virtual {v9, v12}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    .line 751
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v15}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getTransactionType()Lorg/gnucash/android/model/TransactionType;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v15}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getTransactionType()Lorg/gnucash/android/model/TransactionType;

    move-result-object v15

    invoke-virtual {v15}, Lorg/gnucash/android/model/TransactionType;->invert()Lorg/gnucash/android/model/TransactionType;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 754
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v10, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 748
    .end local v8    # "split1":Lorg/gnucash/android/model/Split;
    .end local v9    # "split2":Lorg/gnucash/android/model/Split;
    .end local v10    # "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    :cond_2
    new-instance v8, Lorg/gnucash/android/model/Split;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-direct {v8, v14, v15}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 749
    .restart local v8    # "split1":Lorg/gnucash/android/model/Split;
    new-instance v9, Lorg/gnucash/android/model/Split;

    invoke-direct {v9, v14, v7, v12}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .restart local v9    # "split2":Lorg/gnucash/android/model/Split;
    goto :goto_1
.end method

.method private extractTransactionFromView()Lorg/gnucash/android/model/Transaction;
    .locals 14
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 783
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    .line 784
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    .line 785
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    .line 786
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTime:Ljava/util/Calendar;

    const/16 v5, 0xb

    .line 787
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTime:Ljava/util/Calendar;

    const/16 v6, 0xc

    .line 788
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTime:Ljava/util/Calendar;

    const/16 v13, 0xd

    .line 789
    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 790
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 791
    .local v9, "description":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mNotesEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 792
    .local v10, "notes":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, "currencyCode":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v7

    .line 795
    .local v7, "commodity":Lorg/gnucash/android/model/Commodity;
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->extractSplitsFromView()Ljava/util/List;

    move-result-object v11

    .line 797
    .local v11, "splits":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    new-instance v12, Lorg/gnucash/android/model/Transaction;

    invoke-direct {v12, v9}, Lorg/gnucash/android/model/Transaction;-><init>(Ljava/lang/String;)V

    .line 798
    .local v12, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 799
    invoke-virtual {v12, v7}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 800
    invoke-virtual {v12, v10}, Lorg/gnucash/android/model/Transaction;->setNote(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v12, v11}, Lorg/gnucash/android/model/Transaction;->setSplits(Ljava/util/List;)V

    .line 802
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lorg/gnucash/android/model/Transaction;->setExported(Z)V

    .line 804
    return-object v12
.end method

.method private finish(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 994
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 995
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 997
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1002
    :goto_0
    return-void

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method private getTransferAccountUID()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 768
    iget-boolean v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    if-eqz v4, :cond_0

    .line 769
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v2

    .line 770
    .local v2, "transferAcctId":J
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v4, v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v1

    .line 775
    .end local v2    # "transferAcctId":J
    .local v1, "transferAcctUID":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 772
    .end local v1    # "transferAcctUID":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v4

    check-cast v4, Lorg/gnucash/android/model/Account;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    .line 773
    .local v0, "baseCommodity":Lorg/gnucash/android/model/Commodity;
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v4, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateImbalanceAccountUID(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "transferAcctUID":Ljava/lang/String;
    goto :goto_0
.end method

.method private initTransactionNameAutocomplete()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    new-array v6, v3, [I

    const v1, 0x7f090184

    aput v1, v6, v2

    .line 409
    .local v6, "to":[I
    new-array v5, v3, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v5, v2

    .line 411
    .local v5, "from":[Ljava/lang/String;
    new-instance v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$DropDownCursorAdapter;

    .line 412
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b004c

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$DropDownCursorAdapter;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 414
    .local v0, "adapter":Landroid/support/v4/widget/SimpleCursorAdapter;
    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$3;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$3;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setCursorToStringConverter(Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;)V

    .line 422
    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$4;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$4;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 429
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 457
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 458
    return-void
.end method

.method private initalizeViews()V
    .locals 12

    .prologue
    .line 550
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 551
    .local v6, "time":Ljava/util/Date;
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDateTextView:Landroid/widget/TextView;

    sget-object v9, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v9, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTimeTextView:Landroid/widget/TextView;

    sget-object v9, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->TIME_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v9, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDate:Ljava/util/Calendar;

    iput-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTime:Ljava/util/Calendar;

    .line 555
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v8, v9}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 556
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    const v9, 0x7f0f00a1

    invoke-virtual {p0, v9}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBIT"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 557
    .local v7, "typePref":Ljava/lang/String;
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-static {v7}, Lorg/gnucash/android/model/TransactionType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/TransactionType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setChecked(Lorg/gnucash/android/model/TransactionType;)V

    .line 559
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "code":Ljava/lang/String;
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 561
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_0
    invoke-static {v0}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v1

    .line 565
    .local v1, "commodity":Lorg/gnucash/android/model/Commodity;
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v8, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 568
    iget-boolean v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    if-eqz v8, :cond_2

    .line 569
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    .line 571
    .local v2, "currentAccountUID":Ljava/lang/String;
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v8}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, "rootAccountUID":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v9, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getDefaultTransferAccountID(J)J

    move-result-wide v4

    .line 574
    .local v4, "defaultTransferAccountID":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 575
    invoke-direct {p0, v4, v5}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setSelectedTransferAccount(J)V

    .line 581
    .end local v2    # "currentAccountUID":Ljava/lang/String;
    .end local v3    # "rootAccountUID":Ljava/lang/String;
    .end local v4    # "defaultTransferAccountID":J
    :cond_2
    :goto_0
    return-void

    .line 578
    .restart local v2    # "currentAccountUID":Ljava/lang/String;
    .restart local v3    # "rootAccountUID":Ljava/lang/String;
    .restart local v4    # "defaultTransferAccountID":J
    :cond_3
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v8, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getParentAccountUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0
.end method

.method private initializeViewsWithTransaction()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v14, 0x2

    .line 465
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v10}, Lorg/gnucash/android/model/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v10}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 468
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v7, v10}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 469
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    iget-object v11, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/gnucash/android/model/Transaction;->getBalance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v10

    invoke-virtual {v10}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v10

    invoke-virtual {v7, v10}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setChecked(Z)V

    .line 471
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v7}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isInputModified()Z

    move-result v7

    if-nez v7, :cond_0

    .line 473
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    iget-object v11, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/gnucash/android/model/Transaction;->getBalance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v10

    invoke-virtual {v10}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setValue(Ljava/math/BigDecimal;)V

    .line 475
    :cond_0
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v10}, Lorg/gnucash/android/model/Transaction;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mNotesEditText:Landroid/widget/EditText;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v10}, Lorg/gnucash/android/model/Transaction;->getNote()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDateTextView:Landroid/widget/TextView;

    sget-object v10, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    iget-object v11, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v11}, Lorg/gnucash/android/model/Transaction;->getTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTimeTextView:Landroid/widget/TextView;

    sget-object v10, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->TIME_FORMATTER:Ljava/text/DateFormat;

    iget-object v11, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v11}, Lorg/gnucash/android/model/Transaction;->getTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 480
    .local v1, "cal":Ljava/util/Calendar;
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v7}, Lorg/gnucash/android/model/Transaction;->getTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 481
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTime:Ljava/util/Calendar;

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDate:Ljava/util/Calendar;

    .line 484
    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v10}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    .line 485
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v14, :cond_2

    move v7, v8

    :goto_0
    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->toggleAmountInputEntryMode(Z)V

    .line 487
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v14, :cond_3

    .line 488
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/Split;

    .line 489
    .local v6, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v6}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 490
    invoke-virtual {v6}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v10

    invoke-virtual {v10}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v10

    iget-object v11, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v11}, Lorg/gnucash/android/model/Transaction;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 491
    invoke-virtual {v6}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v10

    iput-object v10, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitQuantity:Lorg/gnucash/android/model/Money;

    goto :goto_1

    .end local v6    # "split":Lorg/gnucash/android/model/Split;
    :cond_2
    move v7, v9

    .line 485
    goto :goto_0

    .line 498
    :cond_3
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v14, :cond_5

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gnucash/android/model/Split;

    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/gnucash/android/model/Split;

    invoke-virtual {v7, v8}, Lorg/gnucash/android/model/Split;->isPairOf(Lorg/gnucash/android/model/Split;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 499
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v7}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/Split;

    .line 501
    .restart local v6    # "split":Lorg/gnucash/android/model/Split;
    iget-boolean v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 502
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v6}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setSelectedTransferAccount(J)V

    goto :goto_2

    .line 506
    .end local v6    # "split":Lorg/gnucash/android/model/Split;
    :cond_5
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setDoubleEntryViewsVisibility(I)V

    .line 509
    :cond_6
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "currencyCode":Ljava/lang/String;
    invoke-static {v3}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    .line 511
    .local v0, "accountCommodity":Lorg/gnucash/android/model/Commodity;
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-static {v3}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    .line 514
    .local v2, "commodity":Lorg/gnucash/android/model/Commodity;
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v7, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 516
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSaveTemplateCheckbox:Landroid/widget/CheckBox;

    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v8}, Lorg/gnucash/android/model/Transaction;->isTemplate()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 517
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "scheduled_action_uid"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, "scheduledActionUID":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 519
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v4

    check-cast v4, Lorg/gnucash/android/model/ScheduledAction;

    .line 520
    .local v4, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    invoke-virtual {v4}, Lorg/gnucash/android/model/ScheduledAction;->getRuleString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceRule:Ljava/lang/String;

    .line 521
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceRule:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 522
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Lorg/gnucash/android/model/ScheduledAction;->getRepeatString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    .end local v4    # "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    :cond_7
    return-void
.end method

.method private isMultiCurrencyTransaction()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 823
    iget-boolean v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    if-nez v4, :cond_1

    .line 830
    :cond_0
    :goto_0
    return v3

    .line 826
    :cond_1
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "transferAcctUID":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "currencyCode":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v4, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, "transferCurrencyCode":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private openSplitEditor()V
    .locals 8

    .prologue
    .line 606
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v5

    if-nez v5, :cond_0

    .line 607
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0f01f6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 632
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    if-nez v5, :cond_1

    .line 614
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v2

    .line 615
    .local v2, "enteredAmount":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .end local v2    # "enteredAmount":Ljava/math/BigDecimal;
    .local v0, "baseAmountString":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "form_type"

    sget-object v6, Lorg/gnucash/android/ui/common/FormActivity$FormType;->SPLIT_EDITOR:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v5, "account_uid"

    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const-string v5, "starting_amount"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v6, "split_list"

    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->extractSplitsFromView()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 631
    const/16 v5, 0x11

    invoke-virtual {p0, v3, v5}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 617
    .end local v0    # "baseAmountString":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v5}, Lorg/gnucash/android/model/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    .line 618
    .local v1, "biggestAmount":Lorg/gnucash/android/model/Money;
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v5}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/gnucash/android/model/Split;

    .line 619
    .local v4, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v4}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v6

    invoke-virtual {v6}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-lez v6, :cond_2

    .line 620
    invoke-virtual {v4}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v1

    goto :goto_2

    .line 622
    .end local v4    # "split":Lorg/gnucash/android/model/Split;
    :cond_3
    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "baseAmountString":Ljava/lang/String;
    goto :goto_1
.end method

.method private saveNewTransaction()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 838
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getCalculatorKeyboard()Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->hideCustomKeyboard()V

    .line 842
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->isMultiCurrencyTransaction()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->splitEditorUsed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyConversionDone:Z

    if-nez v3, :cond_0

    .line 843
    iput-boolean v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->onSaveAttempt:Z

    .line 844
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->startTransferFunds()V

    .line 887
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->extractTransactionFromView()Lorg/gnucash/android/model/Transaction;

    move-result-object v2

    .line 849
    .local v2, "transaction":Lorg/gnucash/android/model/Transaction;
    iget-boolean v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEditMode:Z

    if-eqz v3, :cond_1

    .line 850
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Transaction;->setUID(Ljava/lang/String;)V

    .line 853
    :cond_1
    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    .line 854
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->beginTransaction()V

    .line 860
    :try_start_0
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    sget-object v5, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->replace:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v3, v4, v5}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->addRecord(Lorg/gnucash/android/model/Transaction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 862
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSaveTemplateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 863
    iget-boolean v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEditMode:Z

    if-nez v3, :cond_3

    .line 864
    new-instance v1, Lorg/gnucash/android/model/Transaction;

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/gnucash/android/model/Transaction;-><init>(Lorg/gnucash/android/model/Transaction;Z)V

    .line 865
    .local v1, "templateTransaction":Lorg/gnucash/android/model/Transaction;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/gnucash/android/model/Transaction;->setTemplate(Z)V

    .line 866
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    sget-object v4, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->replace:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v3, v1, v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->addRecord(Lorg/gnucash/android/model/Transaction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 867
    invoke-virtual {v1}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->scheduleRecurringTransaction(Ljava/lang/String;)V

    .line 877
    .end local v1    # "templateTransaction":Lorg/gnucash/android/model/Transaction;
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->endTransaction()V

    .line 884
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 886
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->finish(I)V

    goto :goto_0

    .line 869
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->scheduleRecurringTransaction(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 880
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->endTransaction()V

    throw v3

    .line 871
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "scheduled_action_uid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "scheduledActionUID":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 873
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->deleteRecord(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private scheduleRecurringTransaction(Ljava/lang/String;)V
    .locals 7
    .param p1, "transactionUID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 894
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v2

    .line 896
    .local v2, "scheduledActionDbAdapter":Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-static {v4}, Lorg/gnucash/android/ui/util/RecurrenceParser;->parse(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)Lorg/gnucash/android/model/Recurrence;

    move-result-object v0

    .line 898
    .local v0, "recurrence":Lorg/gnucash/android/model/Recurrence;
    new-instance v1, Lorg/gnucash/android/model/ScheduledAction;

    sget-object v4, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-direct {v1, v4}, Lorg/gnucash/android/model/ScheduledAction;-><init>(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V

    .line 899
    .local v1, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    invoke-virtual {v1, v0}, Lorg/gnucash/android/model/ScheduledAction;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    .line 901
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "scheduled_action_uid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 903
    .local v3, "scheduledActionUID":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 904
    if-nez v0, :cond_1

    .line 905
    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->deleteRecord(Ljava/lang/String;)Z

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-virtual {v1, v3}, Lorg/gnucash/android/model/ScheduledAction;->setUID(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v2, v1}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->updateRecurrenceAttributes(Lorg/gnucash/android/model/ScheduledAction;)J

    .line 909
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0f0209

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 912
    :cond_2
    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v1, p1}, Lorg/gnucash/android/model/ScheduledAction;->setActionUID(Ljava/lang/String;)V

    .line 914
    sget-object v4, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->replace:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v2, v1, v4}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->addRecord(Lorg/gnucash/android/model/ScheduledAction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 915
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0f0204

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setDoubleEntryViewsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDoubleEntryLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setVisibility(I)V

    .line 529
    return-void
.end method

.method private setListeners()V
    .locals 4

    .prologue
    .line 638
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setAmountFormattingListener(Lorg/gnucash/android/ui/util/widget/CalculatorEditText;Landroid/widget/TextView;)V

    .line 640
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDateTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$7;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$7;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTimeTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$8;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$8;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceRule:Ljava/lang/String;

    invoke-direct {v2, v0, v3, p0}, Lorg/gnucash/android/ui/util/RecurrenceViewClickListener;-><init>(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$OnRecurrenceSetListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    return-void
.end method

.method private setSelectedTransferAccount(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 695
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;->getPosition(Ljava/lang/String;)I

    move-result v0

    .line 696
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 697
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 698
    :cond_0
    return-void
.end method

.method private splitEditorUsed()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTransferFunds()V
    .locals 9

    .prologue
    .line 272
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v3

    .line 273
    .local v3, "fromCommodity":Lorg/gnucash/android/model/Commodity;
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v4

    .line 274
    .local v4, "id":J
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v8, v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "targetCurrencyCode":Ljava/lang/String;
    invoke-static {v6}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 277
    invoke-virtual {v7}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isInputModified()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitQuantity:Lorg/gnucash/android/model/Money;

    if-eqz v7, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v7}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v1

    .line 282
    .local v1, "amountBigd":Ljava/math/BigDecimal;
    if-eqz v1, :cond_0

    sget-object v7, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v7}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 284
    new-instance v7, Lorg/gnucash/android/model/Money;

    invoke-direct {v7, v1, v3}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    invoke-virtual {v7}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 287
    .local v0, "amount":Lorg/gnucash/android/model/Money;
    invoke-static {v0, v6, p0}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->getInstance(Lorg/gnucash/android/model/Money;Ljava/lang/String;Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;)Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    move-result-object v2

    .line 288
    .local v2, "fragment":Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const-string v8, "transfer_funds_editor"

    invoke-virtual {v2, v7, v8}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stripCurrencyFormatting(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1038
    .end local p0    # "s":Ljava/lang/String;
    .local v0, "sign":Ljava/lang/String;
    .local v1, "stripped":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1031
    .end local v0    # "sign":Ljava/lang/String;
    .end local v1    # "stripped":Ljava/lang/String;
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .restart local v0    # "sign":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\D*"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .restart local v1    # "stripped":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1034
    const-string p0, ""

    goto :goto_0

    .line 1035
    :cond_1
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1036
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object p0, v1

    .line 1038
    goto :goto_0
.end method

.method private toggleAmountInputEntryMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setFocusable(Z)V

    .line 534
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Landroid/inputmethodservice/KeyboardView;)V

    .line 544
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setFocusable(Z)V

    .line 537
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$6;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$6;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateTransferAccountsList()V
    .locals 5

    .prologue
    .line 588
    const-string v0, "(uid != ? AND type != ? AND is_placeholder = 0)"

    .line 593
    .local v0, "conditions":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 596
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v4}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFavoriteAndFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCursor:Landroid/database/Cursor;

    .line 598
    new-instance v1, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v1, v2, v3}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    .line 599
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 600
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 299
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setHasOptionsMenu(Z)V

    .line 302
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 303
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    const v3, 0x7f0f00bb

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    .line 304
    iget-boolean v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    if-nez v3, :cond_0

    .line 305
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDoubleEntryLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mOpenSplitEditor:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "account_uid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    .line 310
    sget-boolean v3, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 311
    :cond_1
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    iput-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 312
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v3

    iput-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 314
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "selected_transaction_uid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "transactionUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v3

    iput-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 316
    if-eqz v2, :cond_2

    .line 317
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v3, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Transaction;

    iput-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    .line 320
    :cond_2
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setListeners()V

    .line 322
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->updateTransferAccountsList()V

    .line 323
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    new-instance v4, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;

    invoke-direct {v4, p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$2;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 362
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 363
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v3, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 366
    :cond_3
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransaction:Lorg/gnucash/android/model/Transaction;

    if-nez v3, :cond_4

    .line 367
    const v3, 0x7f0f01a3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 368
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->initalizeViews()V

    .line 369
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->initTransactionNameAutocomplete()V

    .line 376
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 377
    return-void

    .line 371
    :cond_4
    const v3, 0x7f0f01bd

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 372
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->initializeViewsWithTransaction()V

    .line 373
    iput-boolean v5, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEditMode:Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1078
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1079
    const-string v1, "split_list"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1080
    .local v0, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setSplitList(Ljava/util/List;)V

    .line 1083
    invoke-direct {p0, v2}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->toggleAmountInputEntryMode(Z)V

    .line 1084
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setDoubleEntryViewsVisibility(I)V

    .line 1085
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mOpenSplitEditor:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1087
    .end local v0    # "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 294
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Landroid/inputmethodservice/KeyboardView;)V

    .line 295
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 931
    const v0, 0x7f0c0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 932
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    const v1, 0x7f0b0064

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "v":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 258
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->bindListeners(Landroid/inputmethodservice/KeyboardView;)V

    .line 259
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mOpenSplitEditor:Landroid/widget/ImageView;

    new-instance v2, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$1;-><init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-object v0
.end method

.method public onDateSet(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;III)V
    .locals 4
    .param p1, "calendarDatePickerDialog"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 1006
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 1007
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDateTextView:Landroid/widget/TextView;

    sget-object v2, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1009
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 1010
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 1011
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 924
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 925
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 927
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 937
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 938
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 940
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 961
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 942
    :sswitch_0
    invoke-direct {p0, v4}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->finish(I)V

    goto :goto_0

    .line 946
    :sswitch_1
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->canSave()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->saveNewTransaction()V

    goto :goto_0

    .line 949
    :cond_1
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v2

    if-nez v2, :cond_2

    .line 950
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0207

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 952
    :cond_2
    iget-boolean v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mUseDoubleEntry:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 953
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f01f5

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 955
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 940
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090141 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRecurrenceSet(Ljava/lang/String;)V
    .locals 6
    .param p1, "rrule"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1059
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceRule:Ljava/lang/String;

    .line 1060
    const v1, 0x7f0f010a

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "repeatString":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceRule:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1062
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mEventRecurrence:Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    invoke-static {v1, v2, v3, v4}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->getRepeatString(Landroid/content/Context;Landroid/content/res/Resources;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;Z)Ljava/lang/String;

    move-result-object v0

    .line 1066
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSaveTemplateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1067
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSaveTemplateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1073
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    return-void

    .line 1069
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSaveTemplateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1070
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSaveTemplateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onTimeSet(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;II)V
    .locals 6
    .param p1, "radialTimePickerDialog"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 1015
    new-instance v0, Ljava/util/GregorianCalendar;

    move v2, v1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 1016
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTimeTextView:Landroid/widget/TextView;

    sget-object v2, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->TIME_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTime:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1018
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTime:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 1019
    return-void
.end method

.method public setSplitList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    .line 982
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAccountUID:Ljava/lang/String;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitsList:Ljava/util/List;

    invoke-static {v1, v2}, Lorg/gnucash/android/model/Transaction;->computeBalance(Ljava/lang/String;Ljava/util/List;)Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 984
    .local v0, "balance":Lorg/gnucash/android/model/Money;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setValue(Ljava/math/BigDecimal;)V

    .line 985
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setChecked(Z)V

    .line 986
    return-void
.end method

.method public transferComplete(Lorg/gnucash/android/model/Money;)V
    .locals 1
    .param p1, "amount"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyConversionDone:Z

    .line 1049
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSplitQuantity:Lorg/gnucash/android/model/Money;

    .line 1052
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->onSaveAttempt:Z

    if-eqz v0, :cond_0

    .line 1053
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->saveNewTransaction()V

    .line 1054
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->onSaveAttempt:Z

    .line 1055
    return-void
.end method
