.class public Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;
.super Lorg/gnucash/android/ui/report/BaseReportFragment;
.source "StackedBarChartFragment.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x7d0

.field private static final NO_DATA_BAR_COUNTS:I = 0x3

.field private static final X_AXIS_MONTH_PATTERN:Ljava/lang/String; = "MMM YY"

.field private static final X_AXIS_QUARTER_PATTERN:Ljava/lang/String; = "Q%d %s"

.field private static final X_AXIS_YEAR_PATTERN:Ljava/lang/String; = "YYYY"


# instance fields
.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090030
    .end annotation
.end field

.field private mChartDataPresent:Z

.field private mTotalPercentageMode:Z

.field private mUseAccountColor:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;-><init>()V

    .line 74
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 78
    iput-boolean v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mUseAccountColor:Z

    .line 79
    iput-boolean v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mTotalPercentageMode:Z

    .line 80
    iput-boolean v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChartDataPresent:Z

    return-void
.end method

.method private floatListToArray(Ljava/util/List;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [F

    .line 283
    .local v0, "array":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 284
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-object v0
.end method

.method private getEmptyData()Lcom/github/mikephil/charting/data/BarData;
    .locals 6

    .prologue
    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v2, "xValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v3, "yValues":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 228
    const-string v4, ""

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v4, Lcom/github/mikephil/charting/data/BarEntry;

    add-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    invoke-direct {v4, v5, v0}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FI)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    new-instance v1, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 232
    .local v1, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 233
    const v4, -0x333334

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColor(I)V

    .line 235
    new-instance v4, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v4, v2, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/BarDataSet;)V

    return-object v4
.end method

.method private getEndDate(Lorg/gnucash/android/model/AccountType;)Lorg/joda/time/LocalDate;
    .locals 8
    .param p1, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 263
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v0

    .line 264
    .local v0, "adapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    iget-object v3, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "code":Ljava/lang/String;
    iget-wide v4, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mReportPeriodEnd:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 267
    new-instance v2, Lorg/joda/time/LocalDate;

    invoke-virtual {v0, p1, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTimestampOfLatestTransaction(Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/joda/time/LocalDate;-><init>(J)V

    .line 271
    .local v2, "endDate":Lorg/joda/time/LocalDate;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/joda/time/LocalDate;->withDayOfMonth(I)Lorg/joda/time/LocalDate;

    move-result-object v2

    .line 272
    sget-object v3, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " X-axis end date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dd MM yyyy"

    invoke-virtual {v2, v5}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v2

    .line 269
    .end local v2    # "endDate":Lorg/joda/time/LocalDate;
    :cond_0
    new-instance v2, Lorg/joda/time/LocalDate;

    iget-wide v4, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mReportPeriodEnd:J

    invoke-direct {v2, v4, v5}, Lorg/joda/time/LocalDate;-><init>(J)V

    .restart local v2    # "endDate":Lorg/joda/time/LocalDate;
    goto :goto_0
.end method

.method private getStartDate(Lorg/gnucash/android/model/AccountType;)Lorg/joda/time/LocalDate;
    .locals 8
    .param p1, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 244
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v0

    .line 245
    .local v0, "adapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    iget-object v3, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "code":Ljava/lang/String;
    iget-wide v4, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mReportPeriodStart:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 248
    new-instance v2, Lorg/joda/time/LocalDate;

    invoke-virtual {v0, p1, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTimestampOfEarliestTransaction(Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/joda/time/LocalDate;-><init>(J)V

    .line 252
    .local v2, "startDate":Lorg/joda/time/LocalDate;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/joda/time/LocalDate;->withDayOfMonth(I)Lorg/joda/time/LocalDate;

    move-result-object v2

    .line 253
    sget-object v3, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " X-axis star date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dd MM yyyy"

    invoke-virtual {v2, v5}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v2

    .line 250
    .end local v2    # "startDate":Lorg/joda/time/LocalDate;
    :cond_0
    new-instance v2, Lorg/joda/time/LocalDate;

    iget-wide v4, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mReportPeriodStart:J

    invoke-direct {v2, v4, v5}, Lorg/joda/time/LocalDate;-><init>(J)V

    .restart local v2    # "startDate":Lorg/joda/time/LocalDate;
    goto :goto_0
.end method

.method private setCustomLegend()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 318
    iget-object v4, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    .line 319
    .local v3, "legend":Lcom/github/mikephil/charting/components/Legend;
    iget-object v4, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 321
    .local v1, "dataSet":Lcom/github/mikephil/charting/data/BarDataSet;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getStackLabels()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 322
    .local v2, "labels":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getColors()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 324
    .local v0, "colors":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Integer;>;"
    sget-object v4, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    array-length v4, v4

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 325
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Lcom/github/mikephil/charting/components/Legend;->setCustom(Ljava/util/List;Ljava/util/List;)V

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected displayReport()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 303
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 304
    iget-boolean v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChartDataPresent:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 311
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 312
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->clearAnimation()V

    .line 308
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    const v1, 0x7f0f00c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public generateReport()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 293
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->setCustomLegend()V

    .line 295
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChartDataPresent:Z

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 296
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChartDataPresent:Z

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 297
    iget-object v0, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChartDataPresent:Z

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 298
    return-void
.end method

.method protected getData()Lcom/github/mikephil/charting/data/BarData;
    .locals 28

    .prologue
    .line 125
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v24, "values":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v18, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v14, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    .local v10, "accountToColorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v25, "xValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v23, Lorg/joda/time/LocalDateTime;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getStartDate(Lorg/gnucash/android/model/AccountType;)Lorg/joda/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 131
    .local v23, "tmpDate":Lorg/joda/time/LocalDateTime;
    new-instance v2, Lorg/joda/time/LocalDateTime;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getStartDate(Lorg/gnucash/android/model/AccountType;)Lorg/joda/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v2, v0, v1}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    new-instance v3, Lorg/joda/time/LocalDateTime;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v26, v0

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getEndDate(Lorg/gnucash/android/model/AccountType;)Lorg/joda/time/LocalDate;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v3, v0, v1}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 131
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getDateDiff(Lorg/joda/time/LocalDateTime;Lorg/joda/time/LocalDateTime;)I

    move-result v15

    .line 133
    .local v15, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-gt v0, v15, :cond_8

    .line 134
    const-wide/16 v4, 0x0

    .line 135
    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 136
    .local v6, "end":J
    sget-object v2, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment$1;->$SwitchMap$org$gnucash$android$ui$report$ReportsActivity$GroupInterval:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 160
    :goto_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v21, "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSimpleAccountList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_0
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/gnucash/android/model/Account;

    .line 162
    .local v8, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    if-ne v2, v3, :cond_0

    .line 163
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->isPlaceholderAccount()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 167
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 166
    invoke-virtual/range {v2 .. v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountsBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->asDouble()D

    move-result-wide v12

    .line 168
    .local v12, "balance":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v12, v2

    if-eqz v2, :cond_0

    .line 169
    double-to-float v2, v12

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "accountName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 174
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 175
    .local v17, "label":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 138
    .end local v8    # "account":Lorg/gnucash/android/model/Account;
    .end local v9    # "accountName":Ljava/lang/String;
    .end local v12    # "balance":D
    .end local v17    # "label":Ljava/lang/String;
    .end local v21    # "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :pswitch_0
    invoke-virtual/range {v23 .. v23}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 139
    invoke-virtual/range {v23 .. v23}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 141
    const-string v2, "MMM YY"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/joda/time/LocalDateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v23

    .line 143
    goto/16 :goto_1

    .line 145
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getQuarter(Lorg/joda/time/LocalDateTime;)I

    move-result v19

    .line 146
    .local v19, "quarter":I
    mul-int/lit8 v2, v19, 0x3

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/joda/time/LocalDateTime;->withMonthOfYear(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 147
    mul-int/lit8 v2, v19, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/joda/time/LocalDateTime;->withMonthOfYear(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 149
    const-string v2, "Q%d %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v26, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v3, v26

    const/16 v26, 0x1

    const-string v27, " YY"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v3, v26

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v2, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v23

    .line 151
    goto/16 :goto_1

    .line 153
    .end local v19    # "quarter":I
    :pswitch_2
    invoke-virtual/range {v23 .. v23}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 154
    invoke-virtual/range {v23 .. v23}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 156
    const-string v2, "YYYY"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/joda/time/LocalDateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v23

    goto/16 :goto_1

    .line 183
    .restart local v8    # "account":Lorg/gnucash/android/model/Account;
    .restart local v9    # "accountName":Ljava/lang/String;
    .restart local v12    # "balance":D
    .restart local v21    # "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_3
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 187
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mUseAccountColor:Z

    if-eqz v2, :cond_6

    .line 188
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v2

    const v3, -0x333334

    if-eq v2, v3, :cond_5

    .line 189
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v2

    .line 188
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 194
    .local v11, "color":Ljava/lang/Integer;
    :goto_5
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v11    # "color":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v2, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, " MMMM yyyy "

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, " = "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 189
    :cond_5
    sget-object v2, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    .line 190
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v3

    sget-object v27, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    rem-int v3, v3, v27

    aget v2, v2, v3

    goto :goto_4

    .line 192
    :cond_6
    sget-object v2, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v3

    sget-object v27, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    rem-int v3, v3, v27

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .restart local v11    # "color":Ljava/lang/Integer;
    goto/16 :goto_5

    .line 203
    .end local v8    # "account":Lorg/gnucash/android/model/Account;
    .end local v9    # "accountName":Ljava/lang/String;
    .end local v11    # "color":Ljava/lang/Integer;
    .end local v12    # "balance":D
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 204
    .local v22, "stackLabels":Ljava/lang/String;
    new-instance v2, Lcom/github/mikephil/charting/data/BarEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->floatListToArray(Ljava/util/List;)[F

    move-result-object v3

    move/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v2, v3, v0, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>([FILjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 207
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v21    # "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v22    # "stackLabels":Ljava/lang/String;
    :cond_8
    new-instance v20, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v2, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 208
    .local v20, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 209
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setStackLabels([Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    .line 212
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/BarDataSet;->getYValueSum()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChartDataPresent:Z

    .line 214
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getEmptyData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    .line 217
    :goto_6
    return-object v2

    .line 216
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChartDataPresent:Z

    .line 217
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/BarDataSet;)V

    goto :goto_6

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f0b0052

    return v0
.end method

.method public getReportType()Lorg/gnucash/android/ui/report/ReportType;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/gnucash/android/ui/report/ReportType;->BAR_CHART:Lorg/gnucash/android/ui/report/ReportType;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f0f01ab

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0f00b9

    .line 102
    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mUseAccountColor:Z

    .line 104
    iget-object v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 105
    iget-object v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDescription(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 108
    iget-object v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 109
    iget-object v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setStartAtZero(Z)V

    .line 110
    iget-object v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v4, v2}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    .line 111
    iget-object v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/utils/LargeValueFormatter;

    iget-object v3, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/utils/LargeValueFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V

    .line 112
    iget-object v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 113
    .local v0, "chartLegend":Lcom/github/mikephil/charting/components/Legend;
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 114
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setPosition(Lcom/github/mikephil/charting/components/Legend$LegendPosition;)V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setWordWrapEnabled(Z)V

    .line 117
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 345
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 366
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    :cond_1
    move v2, v4

    .line 344
    goto :goto_0

    .line 347
    :sswitch_0
    iget-object v2, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 348
    .local v0, "legend":Lcom/github/mikephil/charting/components/Legend;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isLegendCustom()Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0f01fe

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 350
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 352
    :cond_2
    iget-object v2, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 353
    iget-object v2, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 354
    iget-object v2, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    goto :goto_1

    :cond_4
    move v2, v4

    .line 352
    goto :goto_2

    .line 359
    .end local v0    # "legend":Lcom/github/mikephil/charting/components/Legend;
    :sswitch_1
    iget-boolean v2, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mTotalPercentageMode:Z

    if-nez v2, :cond_5

    move v4, v3

    :cond_5
    iput-boolean v4, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mTotalPercentageMode:Z

    .line 360
    iget-boolean v2, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mTotalPercentageMode:Z

    if-eqz v2, :cond_6

    const v1, 0x7f0f01f3

    .line 362
    .local v1, "msgId":I
    :goto_3
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 360
    .end local v1    # "msgId":I
    :cond_6
    const v1, 0x7f0f01f2

    goto :goto_3

    .line 345
    :sswitch_data_0
    .sparse-switch
        0x7f090140 -> :sswitch_1
        0x7f090145 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 333
    const v0, 0x7f090140

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChartDataPresent:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    const v0, 0x7f09013f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    const v0, 0x7f090144

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    const v0, 0x7f090143

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    const v0, 0x7f09013d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 339
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 20
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 372
    if-eqz p1, :cond_0

    move-object/from16 v7, p1

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v3, p1

    .line 373
    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    .line 374
    .local v3, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual/range {p3 .. p3}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v7

    const/4 v12, -0x1

    if-ne v7, v12, :cond_2

    const/4 v4, 0x0

    .line 375
    .local v4, "index":I
    :goto_1
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getData()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "stackLabels":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getXVals()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v13

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v12, 0x1

    .line 377
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v7

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v10, v7

    .line 379
    .local v10, "value":D
    const-wide/16 v8, 0x0

    .line 380
    .local v8, "sum":D
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mTotalPercentageMode:Z

    if-eqz v7, :cond_3

    .line 381
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    .line 382
    .local v2, "barEntry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v12

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v13

    add-float/2addr v12, v13

    float-to-double v12, v12

    add-double/2addr v8, v12

    .line 383
    goto :goto_2

    .line 374
    .end local v2    # "barEntry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v4    # "index":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "stackLabels":Ljava/lang/String;
    .end local v8    # "sum":D
    .end local v10    # "value":D
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v4

    goto/16 :goto_1

    .line 385
    .restart local v4    # "index":I
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v6    # "stackLabels":Ljava/lang/String;
    .restart local v8    # "sum":D
    .restart local v10    # "value":D
    :cond_3
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v7

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v12

    add-float/2addr v7, v12

    float-to-double v8, v7

    .line 387
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/gnucash/android/ui/report/barchart/StackedBarChartFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    const-string v12, "%s - %.2f (%.2f %%)"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    div-double v16, v10, v8

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
