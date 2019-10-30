.class public Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
.super Landroid/support/v4/app/Fragment;
.source "SplitEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;,
        Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;,
        Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccountUID:Ljava/lang/String;

.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field private mBaseAmount:Ljava/math/BigDecimal;

.field mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

.field private mCommodity:Lorg/gnucash/android/model/Commodity;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field mImbalanceTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e8
    .end annotation
.end field

.field mImbalanceWatcher:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;

.field mKeyboardView:Landroid/inputmethodservice/KeyboardView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090051
    .end annotation
.end field

.field private mSplitItemViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mSplitsLinearLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 93
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mBaseAmount:Ljava/math/BigDecimal;

    .line 97
    new-instance v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;-><init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Lorg/gnucash/android/ui/transaction/SplitEditorFragment$1;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceWatcher:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;

    return-void
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitItemViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Landroid/widget/Spinner;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    .param p1, "x1"    # Landroid/widget/Spinner;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->updateTransferAccountsList(Landroid/widget/Spinner;)V

    return-void
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/model/Commodity;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    return-object v0
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mBaseAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$500(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;JLandroid/widget/Spinner;)V
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/widget/Spinner;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->setSelectedTransferAccount(JLandroid/widget/Spinner;)V

    return-void
.end method

.method static synthetic access$700(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method private addSplitView(Lorg/gnucash/android/model/Split;)Landroid/view/View;
    .locals 6
    .param p1, "split"    # Lorg/gnucash/android/model/Split;

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 201
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0b006d

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, "splitView":Landroid/view/View;
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 203
    new-instance v2, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    invoke-direct {v2, p0, v1, p1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;-><init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Landroid/view/View;Lorg/gnucash/android/model/Split;)V

    .line 204
    .local v2, "viewHolder":Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitItemViewList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-object v1
.end method

.method private canSave()Z
    .locals 4

    .prologue
    .line 352
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitItemViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 353
    .local v0, "splitView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .line 354
    .local v1, "viewHolder":Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    iget-object v3, v1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->evaluate()Ljava/lang/String;

    .line 355
    iget-object v3, v1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 356
    const/4 v2, 0x0

    .line 360
    .end local v0    # "splitView":Landroid/view/View;
    .end local v1    # "viewHolder":Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private extractSplitsFromView()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v4, "splitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/Split;>;"
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitItemViewList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 387
    .local v5, "splitView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .line 388
    .local v7, "viewHolder":Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    iget-object v9, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v9}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 391
    iget-object v9, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v9}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v1

    .line 393
    .local v1, "amountBigDecimal":Ljava/math/BigDecimal;
    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "currencyCode":Ljava/lang/String;
    new-instance v6, Lorg/gnucash/android/model/Money;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-static {v2}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 396
    .local v6, "valueAmount":Lorg/gnucash/android/model/Money;
    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v10, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->accountsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "accountUID":Ljava/lang/String;
    new-instance v3, Lorg/gnucash/android/model/Split;

    invoke-direct {v3, v6, v0}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 398
    .local v3, "split":Lorg/gnucash/android/model/Split;
    iget-object v9, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitMemoEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/gnucash/android/model/Split;->setMemo(Ljava/lang/String;)V

    .line 399
    iget-object v9, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v9}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->getTransactionType()Lorg/gnucash/android/model/TransactionType;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 400
    iget-object v9, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitUidTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/gnucash/android/model/Split;->setUID(Ljava/lang/String;)V

    .line 401
    iget-object v9, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->quantity:Lorg/gnucash/android/model/Money;

    if-eqz v9, :cond_1

    .line 402
    iget-object v9, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->quantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v9}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 403
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    .end local v0    # "accountUID":Ljava/lang/String;
    .end local v1    # "amountBigDecimal":Ljava/math/BigDecimal;
    .end local v2    # "currencyCode":Ljava/lang/String;
    .end local v3    # "split":Lorg/gnucash/android/model/Split;
    .end local v5    # "splitView":Landroid/view/View;
    .end local v6    # "valueAmount":Lorg/gnucash/android/model/Money;
    .end local v7    # "viewHolder":Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    :cond_2
    return-object v4
.end method

.method private initArgs()V
    .locals 5

    .prologue
    .line 213
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 215
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 216
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity;->getCurrentAccountUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountUID:Ljava/lang/String;

    .line 217
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "starting_amount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mBaseAmount:Ljava/math/BigDecimal;

    .line 219
    const-string v1, "(is_hidden = 0 AND is_placeholder = 0)"

    .line 223
    .local v1, "conditions":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCursor:Landroid/database/Cursor;

    .line 224
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 225
    return-void
.end method

.method private loadSplitViews(Ljava/util/List;)V
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
    .line 162
    .local p1, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Split;

    .line 163
    .local v0, "split":Lorg/gnucash/android/model/Split;
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->addSplitView(Lorg/gnucash/android/model/Split;)Landroid/view/View;

    goto :goto_0

    .line 165
    .end local v0    # "split":Lorg/gnucash/android/model/Split;
    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 106
    new-instance v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;-><init>()V

    .line 107
    .local v0, "fragment":Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    invoke-virtual {v0, p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v0
.end method

.method private saveSplits()V
    .locals 4

    .prologue
    .line 367
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->canSave()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f01f7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 378
    :goto_0
    return-void

    .line 373
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "split_list"

    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->extractSplitsFromView()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 377
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method private setSelectedTransferAccount(JLandroid/widget/Spinner;)V
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "accountsSpinner"    # Landroid/widget/Spinner;

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 332
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    .line 333
    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 337
    :cond_0
    return-void

    .line 331
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateTransferAccountsList(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "transferAccountSpinner"    # Landroid/widget/Spinner;

    .prologue
    .line 343
    new-instance v0, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 344
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 345
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v7}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 123
    .local v1, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez v1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 124
    :cond_0
    const v7, 0x7f0f01e3

    invoke-virtual {v1, v7}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 125
    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->setHasOptionsMenu(Z)V

    .line 127
    new-instance v7, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    iget-object v11, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/high16 v12, 0x7f120000

    invoke-direct {v7, v10, v11, v12}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;I)V

    iput-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mSplitItemViewList:Ljava/util/List;

    .line 133
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "split_list"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 134
    .local v4, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    sget-boolean v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez v4, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 136
    :cond_1
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->initArgs()V

    .line 137
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 139
    invoke-direct {p0, v4}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->loadSplitViews(Ljava/util/List;)V

    .line 140
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceWatcher:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 153
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "currencyCode":Ljava/lang/String;
    new-instance v3, Lorg/gnucash/android/model/Split;

    new-instance v7, Lorg/gnucash/android/model/Money;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mBaseAmount:Ljava/math/BigDecimal;

    invoke-static {v2}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountUID:Ljava/lang/String;

    invoke-direct {v3, v7, v10}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 144
    .local v3, "split":Lorg/gnucash/android/model/Split;
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    .line 145
    .local v0, "accountType":Lorg/gnucash/android/model/AccountType;
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mBaseAmount:Ljava/math/BigDecimal;

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-gez v7, :cond_3

    move v7, v8

    :goto_1
    invoke-static {v0, v7}, Lorg/gnucash/android/model/Transaction;->getTypeForBalance(Lorg/gnucash/android/model/AccountType;Z)Lorg/gnucash/android/model/TransactionType;

    move-result-object v5

    .line 146
    .local v5, "transactionType":Lorg/gnucash/android/model/TransactionType;
    invoke-virtual {v3, v5}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 147
    invoke-direct {p0, v3}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->addSplitView(Lorg/gnucash/android/model/Split;)Landroid/view/View;

    move-result-object v6

    .line 148
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0900ed

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    const v7, 0x7f09003e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceTextView:Landroid/widget/TextView;

    new-instance v8, Lorg/gnucash/android/model/Money;

    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mBaseAmount:Ljava/math/BigDecimal;

    invoke-virtual {v9}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v9

    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v8, v9, v10}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    invoke-static {v7, v8}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    goto :goto_0

    .end local v5    # "transactionType":Lorg/gnucash/android/model/TransactionType;
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    move v7, v9

    .line 145
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    new-instance v0, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/high16 v3, 0x7f120000

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;I)V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mCalculatorKeyboard:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .line 159
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 169
    const v0, 0x7f0c000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    const v1, 0x7f0b0062

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 115
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 190
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :sswitch_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 182
    :sswitch_1
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->saveSplits()V

    goto :goto_0

    .line 186
    :sswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->addSplitView(Lorg/gnucash/android/model/Split;)Landroid/view/View;

    goto :goto_0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090136 -> :sswitch_2
        0x7f090141 -> :sswitch_1
    .end sparse-switch
.end method
