.class public Lorg/gnucash/android/ui/report/ReportsOverviewFragment;
.super Lorg/gnucash/android/ui/report/BaseReportFragment;
.source "ReportsOverviewFragment.java"


# static fields
.field public static final LEGEND_TEXT_SIZE:I = 0xe


# instance fields
.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field private mAssetsBalance:Lorg/gnucash/android/model/Money;

.field mBalanceSheetButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090036
    .end annotation
.end field

.field mBarChartButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090037
    .end annotation
.end field

.field mChart:Lcom/github/mikephil/charting/charts/PieChart;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090181
    .end annotation
.end field

.field private mChartHasData:Z

.field private mLiabilitiesBalance:Lorg/gnucash/android/model/Money;

.field mLineChartButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003a
    .end annotation
.end field

.field mNetWorth:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090160
    .end annotation
.end field

.field mPieChartButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003c
    .end annotation
.end field

.field mTotalAssets:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020c
    .end annotation
.end field

.field mTotalLiabilities:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChartHasData:Z

    return-void
.end method

.method private getData()Lcom/github/mikephil/charting/data/PieData;
    .locals 14

    .prologue
    .line 179
    new-instance v10, Lcom/github/mikephil/charting/data/PieDataSet;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {v10, v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 180
    .local v10, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v11, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v7, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSimpleAccountList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/Account;

    .line 183
    .local v6, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    sget-object v1, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->isPlaceholderAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0}, Lorg/joda/time/LocalDate;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDate;->minusMonths(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->dayOfMonth()Lorg/joda/time/LocalDate$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate$Property;->withMinimumValue()Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 188
    .local v2, "start":J
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0}, Lorg/joda/time/LocalDate;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDate;->plusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 189
    .local v4, "end":J
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 190
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 189
    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountsBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->asDouble()D

    move-result-wide v8

    .line 191
    .local v8, "balance":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_0

    .line 192
    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    double-to-float v1, v8

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->getEntryCount()I

    move-result v13

    invoke-direct {v0, v1, v13}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->addEntry(Lcom/github/mikephil/charting/data/Entry;)V

    .line 193
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v0

    const v1, -0x333334

    if-eq v0, v1, :cond_1

    .line 194
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v0

    .line 193
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 194
    :cond_1
    sget-object v0, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    .line 195
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->getEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget-object v13, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    array-length v13, v13

    rem-int/2addr v1, v13

    aget v0, v0, v1

    goto :goto_1

    .line 200
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v6    # "account":Lorg/gnucash/android/model/Account;
    .end local v8    # "balance":D
    :cond_2
    invoke-virtual {v10, v7}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 201
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    .line 202
    new-instance v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v0, v11, v10}, Lcom/github/mikephil/charting/data/PieData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/PieDataSet;)V

    return-object v0
.end method

.method private getEmptyData()Lcom/github/mikephil/charting/data/PieData;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 227
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->addEntry(Lcom/github/mikephil/charting/data/Entry;)V

    .line 228
    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->setColor(I)V

    .line 229
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawValues(Z)V

    .line 230
    new-instance v1, Lcom/github/mikephil/charting/data/PieData;

    const-string v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/github/mikephil/charting/data/PieData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/PieDataSet;)V

    return-object v1
.end method


# virtual methods
.method protected displayReport()V
    .locals 3

    .prologue
    const/16 v1, 0x708

    .line 207
    iget-boolean v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChartHasData:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->animateXY(II)V

    .line 209
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setTouchEnabled(Z)V

    .line 213
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 214
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 216
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mTotalAssets:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mAssetsBalance:Lorg/gnucash/android/model/Money;

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 217
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mTotalLiabilities:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mLiabilitiesBalance:Lorg/gnucash/android/model/Money;

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 218
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mNetWorth:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mAssetsBalance:Lorg/gnucash/android/model/Money;

    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mLiabilitiesBalance:Lorg/gnucash/android/model/Money;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Money;->subtract(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 219
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setTouchEnabled(Z)V

    goto :goto_0
.end method

.method protected generateReport()V
    .locals 12

    .prologue
    const-wide/16 v2, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 147
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getData()Lcom/github/mikephil/charting/data/PieData;

    move-result-object v0

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->groupSmallerSlices(Lcom/github/mikephil/charting/data/PieData;Landroid/content/Context;)Lcom/github/mikephil/charting/data/PieData;

    move-result-object v7

    .line 148
    .local v7, "pieData":Lcom/github/mikephil/charting/data/PieData;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/PieData;->getYValCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 150
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v8

    .line 151
    .local v8, "sum":F
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f00c8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "total":Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "currencySymbol":Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const-string v4, "%s\n%.2f %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v11

    const/4 v10, 0x2

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/String;)V

    .line 154
    iput-boolean v11, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChartHasData:Z

    .line 162
    .end local v6    # "currencySymbol":Ljava/lang/String;
    .end local v8    # "sum":F
    .end local v9    # "total":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/AccountType;>;"
    sget-object v0, Lorg/gnucash/android/model/AccountType;->ASSET:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lorg/gnucash/android/model/AccountType;->CASH:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lorg/gnucash/android/model/AccountType;->BANK:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mAssetsBalance:Lorg/gnucash/android/model/Money;

    .line 168
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 169
    sget-object v0, Lorg/gnucash/android/model/AccountType;->LIABILITY:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lorg/gnucash/android/model/AccountType;->CREDIT:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mLiabilitiesBalance:Lorg/gnucash/android/model/Money;

    .line 172
    return-void

    .line 156
    .end local v1    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/AccountType;>;"
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getEmptyData()Lcom/github/mikephil/charting/data/PieData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 157
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 159
    iput-boolean v10, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChartHasData:Z

    goto :goto_0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f0b0060

    return v0
.end method

.method public getReportType()Lorg/gnucash/android/ui/report/ReportType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/gnucash/android/ui/report/ReportType;->NONE:Lorg/gnucash/android/ui/report/ReportType;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f0f01d7

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 116
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->setHasOptionsMenu(Z)V

    .line 120
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextSize(F)V

    .line 121
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setDescription(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawSliceText(Z)V

    .line 123
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    .line 124
    .local v1, "legend":Lcom/github/mikephil/charting/components/Legend;
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 125
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/Legend;->setWordWrapEnabled(Z)V

    .line 126
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 127
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setPosition(Lcom/github/mikephil/charting/components/Legend$LegendPosition;)V

    .line 128
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setTextSize(F)V

    .line 130
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v7, [[I

    new-array v3, v6, [I

    aput-object v3, v2, v6

    new-array v3, v7, [I

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001d

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 131
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mPieChartButton:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->setButtonTint(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 132
    new-instance v0, Landroid/content/res/ColorStateList;

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    new-array v2, v7, [[I

    new-array v3, v6, [I

    aput-object v3, v2, v6

    new-array v3, v7, [I

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001f

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 133
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mBarChartButton:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->setButtonTint(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 134
    new-instance v0, Landroid/content/res/ColorStateList;

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    new-array v2, v7, [[I

    new-array v3, v6, [I

    aput-object v3, v2, v6

    new-array v3, v7, [I

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001b

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 135
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mLineChartButton:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->setButtonTint(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 136
    new-instance v0, Landroid/content/res/ColorStateList;

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    new-array v2, v7, [[I

    new-array v3, v6, [I

    aput-object v3, v2, v6

    new-array v3, v7, [I

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 137
    .restart local v0    # "csl":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mBalanceSheetButton:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->setButtonTint(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 138
    return-void
.end method

.method public onClickChartTypeButton(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090037,
            0x7f09003c,
            0x7f09003a,
            0x7f090036
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 250
    :pswitch_0
    move-object v0, p0

    .line 253
    .local v0, "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 254
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0900c8

    .line 255
    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 257
    return-void

    .line 238
    .end local v0    # "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    .end local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    :pswitch_1
    new-instance v0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;-><init>()V

    .line 239
    .restart local v0    # "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    goto :goto_0

    .line 241
    .end local v0    # "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    :pswitch_2
    new-instance v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;-><init>()V

    .line 242
    .restart local v0    # "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    goto :goto_0

    .line 244
    .end local v0    # "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    :pswitch_3
    new-instance v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;-><init>()V

    .line 245
    .restart local v0    # "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    goto :goto_0

    .line 247
    .end local v0    # "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    :pswitch_4
    new-instance v0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;-><init>()V

    .line 248
    .restart local v0    # "fragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x7f090036
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 87
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 142
    const v0, 0x7f09013e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    return-void
.end method

.method public requiresAccountTypeOptions()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public requiresTimeRangeOptions()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public setButtonTint(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/AppCompatButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 261
    check-cast v0, Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 265
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 266
    return-void

    .line 263
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
