.class public Lorg/gnucash/android/ui/report/piechart/PieChartFragment;
.super Lorg/gnucash/android/ui/report/BaseReportFragment;
.source "PieChartFragment.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x708

.field public static final CENTER_TEXT_SIZE:I = 0x12

.field private static final GROUPING_SMALLER_SLICES_THRESHOLD:D = 5.0

.field public static final SPACE_BETWEEN_SLICES:F = 2.0f

.field public static final TOTAL_VALUE_LABEL_PATTERN:Ljava/lang/String; = "%s\n%.2f %s"


# instance fields
.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mChart:Lcom/github/mikephil/charting/charts/PieChart;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090181
    .end annotation
.end field

.field private mChartDataPresent:Z

.field private mGroupSmallerSlices:Z

.field private mUseAccountColor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChartDataPresent:Z

    .line 76
    iput-boolean v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mUseAccountColor:Z

    .line 78
    iput-boolean v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mGroupSmallerSlices:Z

    return-void
.end method

.method private bubbleSort()V
    .locals 10

    .prologue
    .line 195
    iget-object v8, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v3

    .line 196
    .local v3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v7

    .line 197
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-object v8, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieDataSet;->getColors()Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_2

    .line 202
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    if-ge v2, v8, :cond_1

    .line 203
    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v9

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    cmpl-float v8, v9, v8

    if-lez v8, :cond_0

    .line 204
    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    .line 205
    .local v4, "tmp1":F
    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/data/Entry;->setVal(F)V

    .line 206
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v8, v4}, Lcom/github/mikephil/charting/data/Entry;->setVal(F)V

    .line 208
    add-int/lit8 v8, v2, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 209
    .local v5, "tmp2":Ljava/lang/String;
    add-int/lit8 v8, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-interface {v3, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 213
    .local v6, "tmp3":Ljava/lang/Integer;
    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {v0, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v4    # "tmp1":F
    .end local v5    # "tmp2":Ljava/lang/String;
    .end local v6    # "tmp3":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 219
    .end local v2    # "j":I
    :cond_2
    iget-object v8, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->notifyDataSetChanged()V

    .line 220
    iget-object v8, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/charts/PieChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 221
    iget-object v8, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 222
    return-void
.end method

.method private getData()Lcom/github/mikephil/charting/data/PieData;
    .locals 14

    .prologue
    .line 148
    new-instance v11, Lcom/github/mikephil/charting/data/PieDataSet;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {v11, v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 149
    .local v11, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v12, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v10, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSimpleAccountList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/Account;

    .line 152
    .local v6, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    if-ne v0, v1, :cond_0

    .line 153
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->isPlaceholderAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mReportPeriodStart:J

    iget-wide v4, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mReportPeriodEnd:J

    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountsBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->asDouble()D

    move-result-wide v8

    .line 158
    .local v8, "balance":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_0

    .line 159
    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    double-to-float v1, v8

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/PieDataSet;->getEntryCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->addEntry(Lcom/github/mikephil/charting/data/Entry;)V

    .line 161
    iget-boolean v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mUseAccountColor:Z

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v0

    const v1, -0x333334

    if-eq v0, v1, :cond_1

    .line 163
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v7

    .line 168
    .local v7, "color":I
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v7    # "color":I
    :cond_1
    sget-object v0, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    .line 164
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/PieDataSet;->getEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v7, v0, v1

    goto :goto_1

    .line 166
    :cond_2
    sget-object v0, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/PieDataSet;->getEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v7, v0, v1

    .restart local v7    # "color":I
    goto :goto_1

    .line 173
    .end local v6    # "account":Lorg/gnucash/android/model/Account;
    .end local v7    # "color":I
    .end local v8    # "balance":D
    :cond_3
    invoke-virtual {v11, v10}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 174
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    .line 175
    new-instance v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v0, v12, v11}, Lcom/github/mikephil/charting/data/PieData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/PieDataSet;)V

    return-object v0
.end method

.method private getEmptyData()Lcom/github/mikephil/charting/data/PieData;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 185
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->addEntry(Lcom/github/mikephil/charting/data/Entry;)V

    .line 186
    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->setColor(I)V

    .line 187
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawValues(Z)V

    .line 188
    new-instance v1, Lcom/github/mikephil/charting/data/PieData;

    const-string v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/github/mikephil/charting/data/PieData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/PieDataSet;)V

    return-object v1
.end method

.method public static groupSmallerSlices(Lcom/github/mikephil/charting/data/PieData;Landroid/content/Context;)Lcom/github/mikephil/charting/data/PieData;
    .locals 12
    .param p0, "data"    # Lcom/github/mikephil/charting/data/PieData;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const/4 v6, 0x0

    .line 275
    .local v6, "otherSlice":F
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v4, "newEntries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v5, "newLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v3, "newColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v1

    .line 279
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 280
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    .line 281
    .local v7, "val":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v8

    div-float v8, v7, v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 282
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v7, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/PieDataSet;->getColors()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_0
    add-float/2addr v6, v7

    goto :goto_1

    .line 290
    .end local v7    # "val":F
    :cond_1
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_2

    .line 291
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v6, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f00f4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const v8, -0x333334

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_2
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v8, ""

    invoke-direct {v0, v4, v8}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 297
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    .line 298
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 299
    new-instance v8, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v8, v5, v0}, Lcom/github/mikephil/charting/data/PieData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/PieDataSet;)V

    return-object v8
.end method


# virtual methods
.method protected displayReport()V
    .locals 2

    .prologue
    const/16 v1, 0x708

    .line 133
    iget-boolean v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChartDataPresent:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->animateXY(II)V

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChartDataPresent:Z

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setTouchEnabled(Z)V

    .line 139
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 140
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 141
    return-void
.end method

.method protected generateReport()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->getData()Lcom/github/mikephil/charting/data/PieData;

    move-result-object v1

    .line 117
    .local v1, "pieData":Lcom/github/mikephil/charting/data/PieData;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->getYValCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    iput-boolean v8, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChartDataPresent:Z

    .line 119
    iget-object v4, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-boolean v5, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mGroupSmallerSlices:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->groupSmallerSlices(Lcom/github/mikephil/charting/data/PieData;Landroid/content/Context;)Lcom/github/mikephil/charting/data/PieData;

    move-result-object v1

    .end local v1    # "pieData":Lcom/github/mikephil/charting/data/PieData;
    :cond_0
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 120
    iget-object v4, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v2

    .line 121
    .local v2, "sum":F
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "total":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "currencySymbol":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const-string v5, "%s\n%.2f %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/String;)V

    .line 129
    .end local v0    # "currencySymbol":Ljava/lang/String;
    .end local v2    # "sum":F
    .end local v3    # "total":Ljava/lang/String;
    :goto_0
    return-void

    .line 125
    .restart local v1    # "pieData":Lcom/github/mikephil/charting/data/PieData;
    :cond_1
    iput-boolean v7, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChartDataPresent:Z

    .line 126
    iget-object v4, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-direct {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->getEmptyData()Lcom/github/mikephil/charting/data/PieData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    goto :goto_0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f0b005f

    return v0
.end method

.method public getReportType()Lorg/gnucash/android/ui/report/ReportType;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/gnucash/android/ui/report/ReportType;->PIE_CHART:Lorg/gnucash/android/ui/report/ReportType;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f0f01d0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f00b9

    .line 85
    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mUseAccountColor:Z

    .line 87
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 90
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextSize(F)V

    .line 91
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDescription(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 93
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 94
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setWordWrapEnabled(Z)V

    .line 95
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setPosition(Lcom/github/mikephil/charting/components/Legend$LegendPosition;)V

    .line 97
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 239
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    :pswitch_0
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 238
    goto :goto_0

    .line 241
    :pswitch_1
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->bubbleSort()V

    goto :goto_1

    .line 245
    :pswitch_2
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    iget-object v3, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->notifyDataSetChanged()V

    .line 247
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    goto :goto_1

    .line 251
    :pswitch_3
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    iget-object v3, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSliceTextEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/PieData;->setDrawValues(Z)V

    .line 252
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v3, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSliceTextEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawSliceText(Z)V

    .line 253
    iget-object v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    goto :goto_1

    :cond_4
    move v3, v2

    .line 251
    goto :goto_2

    .line 257
    :pswitch_4
    iget-boolean v0, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mGroupSmallerSlices:Z

    if-nez v0, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mGroupSmallerSlices:Z

    .line 258
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->refresh()V

    goto :goto_1

    .line 239
    :pswitch_data_0
    .packed-switch 0x7f09013d
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 226
    const v0, 0x7f09013f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChartDataPresent:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    const v0, 0x7f090144

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChartDataPresent:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 228
    const v0, 0x7f09013d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChartDataPresent:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    const v0, 0x7f090140

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    const v0, 0x7f090143

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    const v0, 0x7f09013e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 8
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v3, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    .line 307
    .local v2, "value":F
    iget-object v3, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v3

    div-float v3, v2, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v1, v3, v4

    .line 308
    .local v1, "percent":F
    iget-object v3, p0, Lorg/gnucash/android/ui/report/piechart/PieChartFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    const-string v4, "%s - %.2f (%.2f %%)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
