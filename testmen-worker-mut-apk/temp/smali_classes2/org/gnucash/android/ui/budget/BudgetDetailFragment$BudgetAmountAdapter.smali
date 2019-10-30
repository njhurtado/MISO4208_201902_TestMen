.class public Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BudgetDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/budget/BudgetDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BudgetAmountAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBudget:Lorg/gnucash/android/model/Budget;

.field private mBudgetAmounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetDetailFragment;)V
    .locals 2
    .param p1, "this$0"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 193
    invoke-static {p1}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->access$100(Lorg/gnucash/android/ui/budget/BudgetDetailFragment;)Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v0

    invoke-static {p1}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->access$000(Lorg/gnucash/android/ui/budget/BudgetDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Budget;

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    .line 194
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Budget;->getCompactedBudgetAmounts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudgetAmounts:Ljava/util/List;

    .line 195
    return-void
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudgetAmounts:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public generateChartData(Lcom/github/mikephil/charting/charts/BarChart;Lorg/gnucash/android/model/BudgetAmount;)V
    .locals 19
    .param p1, "barChart"    # Lcom/github/mikephil/charting/charts/BarChart;
    .param p2, "budgetAmount"    # Lorg/gnucash/android/model/BudgetAmount;

    .prologue
    .line 249
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    .line 251
    .local v2, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v11, "barEntries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v18, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Budget;->getNumberOfPeriods()J

    move-result-wide v4

    long-to-int v12, v4

    .line 256
    .local v12, "budgetPeriods":I
    if-nez v12, :cond_0

    const/16 v12, 0xc

    .line 257
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/gnucash/android/model/Recurrence;->getNumberOfPeriods(I)I

    move-result v17

    .line 259
    .local v17, "periods":I
    const/16 v16, 0x1

    .local v16, "periodNum":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 260
    invoke-virtual/range {p2 .. p2}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    .line 261
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/gnucash/android/model/Budget;->getStartOfPeriod(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/gnucash/android/model/Budget;->getEndOfPeriod(I)J

    move-result-wide v6

    .line 260
    invoke-virtual/range {v2 .. v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v8

    .line 264
    .local v8, "amount":Ljava/math/BigDecimal;
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v8, v3}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 267
    :cond_1
    new-instance v3, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    move/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FI)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Recurrence;->getTextOfCurrentPeriod(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    .end local v8    # "amount":Ljava/math/BigDecimal;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 272
    .local v13, "label":Ljava/lang/String;
    new-instance v10, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-direct {v10, v11, v13}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 274
    .local v10, "barDataSet":Lcom/github/mikephil/charting/data/BarDataSet;
    new-instance v9, Lcom/github/mikephil/charting/data/BarData;

    move-object/from16 v0, v18

    invoke-direct {v9, v0, v10}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/BarDataSet;)V

    .line 275
    .local v9, "barData":Lcom/github/mikephil/charting/data/BarData;
    new-instance v14, Lcom/github/mikephil/charting/components/LimitLine;

    invoke-virtual/range {p2 .. p2}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-direct {v14, v3}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(F)V

    .line 276
    .local v14, "limitLine":Lcom/github/mikephil/charting/components/LimitLine;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v14, v3}, Lcom/github/mikephil/charting/components/LimitLine;->setLineWidth(F)V

    .line 277
    const/high16 v3, -0x10000

    invoke-virtual {v14, v3}, Lcom/github/mikephil/charting/components/LimitLine;->setLineColor(I)V

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/github/mikephil/charting/components/YAxis;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    const-string v6, "0.2"

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/gnucash/android/model/Money;->multiply(Ljava/math/BigDecimal;)Lorg/gnucash/android/model/Money;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v15

    .line 283
    .local v15, "maxValue":Ljava/math/BigDecimal;
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 284
    const/16 v3, 0x3e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->animateX(I)V

    .line 285
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setAutoScaleMinMaxEnabled(Z)V

    .line 286
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 288
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->onBindViewHolder(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/BudgetAmount;

    .line 206
    .local v6, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v6}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v7

    .line 207
    .local v7, "projectedAmount":Lorg/gnucash/android/model/Money;
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    .line 209
    .local v0, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetAccount:Landroid/widget/TextView;

    invoke-virtual {v6}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetAmount:Landroid/widget/TextView;

    invoke-virtual {v7}, Lorg/gnucash/android/model/Money;->formattedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v6}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    .line 213
    invoke-virtual {v2}, Lorg/gnucash/android/model/Budget;->getStartofCurrentPeriod()J

    move-result-wide v2

    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->mBudget:Lorg/gnucash/android/model/Budget;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Budget;->getEndOfCurrentPeriod()J

    move-result-wide v4

    .line 212
    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v10

    .line 215
    .local v10, "spentAmount":Lorg/gnucash/android/model/Money;
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetSpent:Landroid/widget/TextView;

    invoke-virtual {v10}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->formattedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetLeft:Landroid/widget/TextView;

    invoke-virtual {v10}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/gnucash/android/model/Money;->subtract(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->formattedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const-wide/16 v8, 0x0

    .line 219
    .local v8, "budgetProgress":D
    invoke-virtual {v7}, Lorg/gnucash/android/model/Money;->asDouble()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v10}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v7}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    .line 221
    invoke-virtual {v10}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v3

    sget-object v4, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 220
    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    .line 225
    :cond_0
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 226
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetSpent:Landroid/widget/TextView;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Lorg/gnucash/android/ui/budget/BudgetsActivity;->getBudgetProgressColor(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetLeft:Landroid/widget/TextView;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Lorg/gnucash/android/ui/budget/BudgetsActivity;->getBudgetProgressColor(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0, v1, v6}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->generateChartData(Lcom/github/mikephil/charting/charts/BarChart;Lorg/gnucash/android/model/BudgetAmount;)V

    .line 231
    iget-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;

    invoke-direct {v2, p0, p2}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$1;-><init>(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 199
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b002f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;-><init>(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;Landroid/view/View;)V

    return-object v1
.end method
