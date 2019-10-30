.class public Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;
.super Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;
.source "TransactionDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final REQUEST_EDIT_TRANSACTION:I = 0x10


# instance fields
.field private mAccountUID:Ljava/lang/String;

.field mCreditBalance:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09002e
    .end annotation
.end field

.field mDebitBalance:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09002f
    .end annotation
.end field

.field mDetailTableLayout:Landroid/widget/TableLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c9
    .end annotation
.end field

.field private mDetailTableRows:I

.field mNotes:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09021d
    .end annotation
.end field

.field mRecurrence:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09021e
    .end annotation
.end field

.field mTimeAndDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09021f
    .end annotation
.end field

.field mToolBar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090206
    .end annotation
.end field

.field mTransactionAccount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090210
    .end annotation
.end field

.field mTransactionDescription:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09021c
    .end annotation
.end field

.field private mTransactionUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;-><init>()V

    return-void
.end method

.method private bindViews()V
    .locals 25

    .prologue
    .line 118
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v19

    .line 119
    .local v19, "transactionsDbAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionUID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v18

    check-cast v18, Lorg/gnucash/android/model/Transaction;

    .line 121
    .local v18, "transaction":Lorg/gnucash/android/model/Transaction;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionDescription:Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionAccount:Landroid/widget/TextView;

    const v6, 0x7f0f00e4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mAccountUID:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v4

    .line 126
    .local v4, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mAccountUID:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v10

    .line 127
    .local v10, "accountBalance":Lorg/gnucash/android/model/Money;
    invoke-virtual {v10}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDebitBalance:Landroid/widget/TextView;

    .line 128
    .local v11, "balanceTextView":Landroid/widget/TextView;
    :goto_0
    invoke-static {v11, v10}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v5}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableRows:I

    .line 131
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v21

    .line 132
    .local v21, "useDoubleEntry":Z
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 133
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/4 v12, 0x0

    .line 134
    .local v12, "index":I
    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/gnucash/android/model/Split;

    .line 135
    .local v16, "split":Lorg/gnucash/android/model/Split;
    if-nez v21, :cond_1

    invoke-virtual/range {v16 .. v16}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual/range {v16 .. v16}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v7

    invoke-virtual {v7}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getImbalanceAccountUID(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 140
    :cond_1
    const v6, 0x7f0b006c

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableLayout:Landroid/widget/TableLayout;

    const/4 v8, 0x0

    invoke-virtual {v14, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 141
    .local v22, "view":Landroid/view/View;
    new-instance v23, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;-><init>(Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;Landroid/view/View;Lorg/gnucash/android/model/Split;)V

    .line 142
    .local v23, "viewHolder":Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableLayout:Landroid/widget/TableLayout;

    move-object/from16 v0, v23

    iget-object v7, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->itemView:Landroid/view/View;

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    invoke-virtual {v6, v7, v12}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    move v12, v13

    .line 143
    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_1

    .line 127
    .end local v11    # "balanceTextView":Landroid/widget/TextView;
    .end local v12    # "index":I
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "split":Lorg/gnucash/android/model/Split;
    .end local v21    # "useDoubleEntry":Z
    .end local v22    # "view":Landroid/view/View;
    .end local v23    # "viewHolder":Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mCreditBalance:Landroid/widget/TextView;

    goto :goto_0

    .line 146
    .restart local v11    # "balanceTextView":Landroid/widget/TextView;
    .restart local v12    # "index":I
    .restart local v14    # "inflater":Landroid/view/LayoutInflater;
    .restart local v21    # "useDoubleEntry":Z
    :cond_3
    new-instance v20, Ljava/util/Date;

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 147
    .local v20, "trnDate":Ljava/util/Date;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 148
    .local v17, "timeAndDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTimeAndDate:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getScheduledActionUID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 151
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getScheduledActionUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v15

    check-cast v15, Lorg/gnucash/android/model/ScheduledAction;

    .line 152
    .local v15, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mRecurrence:Landroid/widget/TextView;

    invoke-virtual {v15}, Lorg/gnucash/android/model/ScheduledAction;->getRepeatString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v5, 0x7f09019f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .end local v15    # "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getNote()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 160
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mNotes:Landroid/widget/TextView;

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getNote()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v5, 0x7f09019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_3
    return-void

    .line 156
    :cond_4
    const v5, 0x7f09019f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 163
    :cond_5
    const v5, 0x7f09019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->removeSplitItemViews()V

    .line 173
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->bindViews()V

    .line 174
    return-void
.end method

.method private removeSplitItemViews()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableLayout:Landroid/widget/TableLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    iget v3, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDetailTableRows:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 182
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mDebitBalance:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mCreditBalance:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method


# virtual methods
.method public editTransaction()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900ba
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v0, "createTransactionIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "account_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "selected_transaction_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 210
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 211
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->refresh()V

    .line 213
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 63
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v2, 0x7f0b0025

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "selected_transaction_uid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionUID:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account_uid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mAccountUID:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mTransactionUID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mAccountUID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 71
    :cond_0
    new-instance v2, Ljava/util/MissingFormatArgumentException;

    const-string v3, "You must specify both the transaction and account GUID"

    invoke-direct {v2, v3}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_1
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 75
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mToolBar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 77
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 78
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v2, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 79
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 80
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 81
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    const v2, 0x7f0800aa

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 85
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->bindViews()V

    .line 87
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mAccountUID:Ljava/lang/String;

    invoke-static {v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getActiveAccountColorResource(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "themeColor":I
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->mToolBar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    .line 91
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1}, Lorg/gnucash/android/app/GnuCashApplication;->darken(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 93
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 201
    :pswitch_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;->finish()V

    .line 202
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
