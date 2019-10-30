.class public Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;
.super Lorg/gnucash/android/ui/report/BaseReportFragment;
.source "BalanceSheetFragment.java"


# instance fields
.field mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field private mAssetAccountTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAssetsBalance:Lorg/gnucash/android/model/Money;

.field mAssetsTableLayout:Landroid/widget/TableLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e2
    .end annotation
.end field

.field private mEquityAccountTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field mEquityTableLayout:Landroid/widget/TableLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e3
    .end annotation
.end field

.field private mLiabilitiesBalance:Lorg/gnucash/android/model/Money;

.field mLiabilitiesTableLayout:Landroid/widget/TableLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e4
    .end annotation
.end field

.field private mLiabilityAccountTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field mNetWorth:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;-><init>()V

    .line 55
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-void
.end method

.method private loadAccountViews(Ljava/util/List;Landroid/widget/TableLayout;)V
    .locals 19
    .param p2, "tableLayout"    # Landroid/widget/TableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            ">;",
            "Landroid/widget/TableLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/AccountType;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 133
    .local v14, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type IN ( \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' , \'"

    .line 134
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_placeholder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "full_name ASC"

    .line 133
    invoke-virtual {v2, v3, v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 138
    .local v13, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-string v2, "uid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 140
    .local v10, "accountUID":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2, v10}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v11

    .line 142
    .local v11, "balance":Lorg/gnucash/android/model/Money;
    const v2, 0x7f0b009e

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 143
    .local v18, "view":Landroid/view/View;
    const v2, 0x7f090009

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v2, 0x7f090006

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 145
    .local v12, "balanceTextView":Landroid/widget/TextView;
    invoke-static {v12, v11}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 146
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 149
    .end local v10    # "accountUID":Ljava/lang/String;
    .end local v11    # "balance":Lorg/gnucash/android/model/Money;
    .end local v12    # "balanceTextView":Landroid/widget/TextView;
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "view":Landroid/view/View;
    :cond_0
    const v2, 0x7f0b009e

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 150
    .local v17, "totalView":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/TableLayout$LayoutParams;

    .line 151
    .local v15, "layoutParams":Landroid/widget/TableLayout$LayoutParams;
    iget v2, v15, Landroid/widget/TableLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x14

    iget v4, v15, Landroid/widget/TableLayout$LayoutParams;->rightMargin:I

    iget v5, v15, Landroid/widget/TableLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    const v2, 0x7f090009

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 155
    .local v9, "accountName":Landroid/widget/TextView;
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    const v2, 0x7f0f00c3

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 157
    const v2, 0x7f090006

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 158
    .local v8, "accountBalance":Landroid/widget/TextView;
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const-wide/16 v4, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-static {v8, v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 162
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected displayReport()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetAccountTypes:Ljava/util/List;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetsTableLayout:Landroid/widget/TableLayout;

    invoke-direct {p0, v0, v1}, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->loadAccountViews(Ljava/util/List;Landroid/widget/TableLayout;)V

    .line 113
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilityAccountTypes:Ljava/util/List;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilitiesTableLayout:Landroid/widget/TableLayout;

    invoke-direct {p0, v0, v1}, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->loadAccountViews(Ljava/util/List;Landroid/widget/TableLayout;)V

    .line 114
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mEquityAccountTypes:Ljava/util/List;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mEquityTableLayout:Landroid/widget/TableLayout;

    invoke-direct {p0, v0, v1}, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->loadAccountViews(Ljava/util/List;Landroid/widget/TableLayout;)V

    .line 116
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mNetWorth:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetsBalance:Lorg/gnucash/android/model/Money;

    iget-object v2, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilitiesBalance:Lorg/gnucash/android/model/Money;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Money;->subtract(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 117
    return-void
.end method

.method protected generateReport()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 106
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetAccountTypes:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetsBalance:Lorg/gnucash/android/model/Money;

    .line 107
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilityAccountTypes:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilitiesBalance:Lorg/gnucash/android/model/Money;

    .line 108
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0b0063

    return v0
.end method

.method public getReportType()Lorg/gnucash/android/ui/report/ReportType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/gnucash/android/ui/report/ReportType;->TEXT:Lorg/gnucash/android/ui/report/ReportType;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0f01a8

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetAccountTypes:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetAccountTypes:Ljava/util/List;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->ASSET:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetAccountTypes:Ljava/util/List;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->CASH:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetAccountTypes:Ljava/util/List;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->BANK:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilityAccountTypes:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilityAccountTypes:Ljava/util/List;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->LIABILITY:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilityAccountTypes:Ljava/util/List;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->CREDIT:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mEquityAccountTypes:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mEquityAccountTypes:Ljava/util/List;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->EQUITY:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 122
    const v0, 0x7f09013e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    return-void
.end method

.method public requiresAccountTypeOptions()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public requiresTimeRangeOptions()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
