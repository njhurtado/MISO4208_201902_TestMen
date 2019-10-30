.class public Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;
.super Lorg/gnucash/android/ui/report/BaseReportFragment;
.source "CashFlowLineChartFragment.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xbb8

.field private static final COLORS:[I

.field private static final FILL_COLORS:[I

.field private static final NO_DATA_BAR_COUNTS:I = 0x5

.field private static final X_AXIS_PATTERN:Ljava/lang/String; = "MMM YY"


# instance fields
.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mChart:Lcom/github/mikephil/charting/charts/LineChart;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012b
    .end annotation
.end field

.field private mChartDataPresent:Z

.field private mEarliestTimestampsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEarliestTransactionTimestamp:J

.field private mLatestTimestampsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestTransactionTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [I

    const-string v1, "#68F1AF"

    .line 68
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "#cc1f09"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string v1, "#EE8600"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    const-string v1, "#1469EB"

    .line 69
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    const-string v1, "#B304AD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->COLORS:[I

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [I

    const-string v1, "#008000"

    .line 72
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "#FF0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string v1, "#BE6B00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    const-string v1, "#0065FF"

    .line 73
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    const-string v1, "#8F038A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->FILL_COLORS:[I

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;-><init>()V

    .line 76
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTimestampsMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mLatestTimestampsMap:Ljava/util/Map;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChartDataPresent:Z

    return-void
.end method

.method private calculateEarliestAndLatestTimestamps(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "accountTypeList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/AccountType;>;"
    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    .line 269
    iget-wide v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodStart:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    iget-wide v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodEnd:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 270
    iget-wide v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodStart:J

    iput-wide v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTransactionTimestamp:J

    .line 271
    iget-wide v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodEnd:J

    iput-wide v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mLatestTransactionTimestamp:J

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v0

    .line 276
    .local v0, "dbAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/gnucash/android/model/AccountType;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gnucash/android/model/AccountType;

    .line 278
    .local v7, "type":Lorg/gnucash/android/model/AccountType;
    iget-object v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v8}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTimestampOfEarliestTransaction(Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J

    move-result-wide v2

    .line 279
    .local v2, "earliest":J
    iget-object v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v8}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTimestampOfLatestTransaction(Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J

    move-result-wide v4

    .line 280
    .local v4, "latest":J
    cmp-long v8, v2, v12

    if-lez v8, :cond_2

    cmp-long v8, v4, v12

    if-lez v8, :cond_2

    .line 281
    iget-object v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTimestampsMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mLatestTimestampsMap:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 284
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 288
    .end local v2    # "earliest":J
    .end local v4    # "latest":J
    .end local v7    # "type":Lorg/gnucash/android/model/AccountType;
    :cond_3
    iget-object v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTimestampsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mLatestTimestampsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 292
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTimestampsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v6, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mLatestTimestampsMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 295
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTransactionTimestamp:J

    .line 296
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mLatestTransactionTimestamp:J

    goto/16 :goto_0
.end method

.method private getData(Ljava/util/List;)Lcom/github/mikephil/charting/data/LineData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            ">;)",
            "Lcom/github/mikephil/charting/data/LineData;"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "accountTypeList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/AccountType;>;"
    sget-object v10, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->TAG:Ljava/lang/String;

    const-string v11, "getData"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->calculateEarliestAndLatestTimestamps(Ljava/util/List;)V

    .line 129
    iget-wide v10, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodStart:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    iget-wide v10, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodEnd:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 130
    new-instance v10, Lorg/joda/time/LocalDate;

    iget-wide v12, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTransactionTimestamp:J

    invoke-direct {v10, v12, v13}, Lorg/joda/time/LocalDate;-><init>(J)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/joda/time/LocalDate;->withDayOfMonth(I)Lorg/joda/time/LocalDate;

    move-result-object v8

    .line 131
    .local v8, "startDate":Lorg/joda/time/LocalDate;
    new-instance v10, Lorg/joda/time/LocalDate;

    iget-wide v12, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mLatestTransactionTimestamp:J

    invoke-direct {v10, v12, v13}, Lorg/joda/time/LocalDate;-><init>(J)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/joda/time/LocalDate;->withDayOfMonth(I)Lorg/joda/time/LocalDate;

    move-result-object v3

    .line 137
    .local v3, "endDate":Lorg/joda/time/LocalDate;
    :goto_0
    new-instance v10, Lorg/joda/time/LocalDateTime;

    invoke-virtual {v8}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    new-instance v11, Lorg/joda/time/LocalDateTime;

    invoke-virtual {v3}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    invoke-virtual {p0, v10, v11}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getDateDiff(Lorg/joda/time/LocalDateTime;Lorg/joda/time/LocalDateTime;)I

    move-result v1

    .line 138
    .local v1, "count":I
    sget-object v10, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X-axis count"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v9, "xValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-gt v4, v1, :cond_1

    .line 141
    sget-object v10, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment$1;->$SwitchMap$org$gnucash$android$ui$report$ReportsActivity$GroupInterval:[I

    iget-object v11, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    invoke-virtual {v11}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 140
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "count":I
    .end local v3    # "endDate":Lorg/joda/time/LocalDate;
    .end local v4    # "i":I
    .end local v8    # "startDate":Lorg/joda/time/LocalDate;
    .end local v9    # "xValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v10, Lorg/joda/time/LocalDate;

    iget-wide v12, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodStart:J

    invoke-direct {v10, v12, v13}, Lorg/joda/time/LocalDate;-><init>(J)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/joda/time/LocalDate;->withDayOfMonth(I)Lorg/joda/time/LocalDate;

    move-result-object v8

    .line 134
    .restart local v8    # "startDate":Lorg/joda/time/LocalDate;
    new-instance v10, Lorg/joda/time/LocalDate;

    iget-wide v12, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodEnd:J

    invoke-direct {v10, v12, v13}, Lorg/joda/time/LocalDate;-><init>(J)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/joda/time/LocalDate;->withDayOfMonth(I)Lorg/joda/time/LocalDate;

    move-result-object v3

    .restart local v3    # "endDate":Lorg/joda/time/LocalDate;
    goto :goto_0

    .line 143
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    .restart local v9    # "xValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v10, "MMM YY"

    invoke-virtual {v8, v10}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v10, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X-axis "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MM yy"

    invoke-virtual {v8, v12}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lorg/joda/time/LocalDate;->plusMonths(I)Lorg/joda/time/LocalDate;

    move-result-object v8

    .line 146
    goto :goto_2

    .line 148
    :pswitch_1
    new-instance v10, Lorg/joda/time/LocalDateTime;

    invoke-virtual {v8}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    invoke-virtual {p0, v10}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getQuarter(Lorg/joda/time/LocalDateTime;)I

    move-result v6

    .line 149
    .local v6, "quarter":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Q"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " yy"

    invoke-virtual {v8, v11}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v10, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X-axis Q"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MM yy"

    invoke-virtual {v8, v12}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Lorg/joda/time/LocalDate;->plusMonths(I)Lorg/joda/time/LocalDate;

    move-result-object v8

    .line 152
    goto/16 :goto_2

    .line 154
    .end local v6    # "quarter":I
    :pswitch_2
    const-string v10, "yyyy"

    invoke-virtual {v8, v10}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v10, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X-axis "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "yyyy"

    invoke-virtual {v8, v12}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lorg/joda/time/LocalDate;->plusYears(I)Lorg/joda/time/LocalDate;

    move-result-object v8

    goto/16 :goto_2

    .line 162
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/AccountType;

    .line 164
    .local v0, "accountType":Lorg/gnucash/android/model/AccountType;
    new-instance v7, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getEntryList(Lorg/gnucash/android/model/AccountType;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0}, Lorg/gnucash/android/model/AccountType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 165
    .local v7, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 166
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 167
    sget-object v11, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->COLORS:[I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    aget v11, v11, v12

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 168
    sget-object v11, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->FILL_COLORS:[I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    aget v11, v11, v12

    invoke-virtual {v7, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 170
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 173
    .end local v0    # "accountType":Lorg/gnucash/android/model/AccountType;
    .end local v7    # "set":Lcom/github/mikephil/charting/data/LineDataSet;
    :cond_2
    new-instance v5, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v5, v9, v2}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 174
    .local v5, "lineData":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/LineData;->getYValueSum()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    .line 175
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChartDataPresent:Z

    .line 176
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getEmptyData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v5

    .line 178
    .end local v5    # "lineData":Lcom/github/mikephil/charting/data/LineData;
    :cond_3
    return-object v5

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEmptyData()Lcom/github/mikephil/charting/data/LineData;
    .locals 7

    .prologue
    const v6, -0x333334

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v2, "xValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v3, "yValues":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    .line 189
    const-string v4, ""

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    const/high16 v4, 0x40a00000    # 5.0f

    :goto_1
    invoke-direct {v5, v4, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/high16 v4, 0x40900000    # 4.5f

    goto :goto_1

    .line 192
    :cond_1
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 193
    .local v1, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 195
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 196
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 198
    new-instance v4, Lcom/github/mikephil/charting/data/LineData;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method

.method private getEntryList(Lorg/gnucash/android/model/AccountType;)Ljava/util/List;
    .locals 22
    .param p1, "accountType"    # Lorg/gnucash/android/model/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/gnucash/android/model/AccountType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v3, "accountUIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSimpleAccountList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/gnucash/android/model/Account;

    .line 209
    .local v8, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->isPlaceholderAccount()Z

    move-result v17

    if-nez v17, :cond_0

    .line 211
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 212
    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v8    # "account":Lorg/gnucash/android/model/Account;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodStart:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v2, v18, v20

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodEnd:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v2, v18, v20

    if-nez v2, :cond_2

    .line 219
    new-instance v11, Lorg/joda/time/LocalDateTime;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTimestampsMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v11, v2}, Lorg/joda/time/LocalDateTime;-><init>(Ljava/lang/Object;)V

    .line 220
    .local v11, "earliest":Lorg/joda/time/LocalDateTime;
    new-instance v13, Lorg/joda/time/LocalDateTime;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mLatestTimestampsMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/joda/time/LocalDateTime;-><init>(Ljava/lang/Object;)V

    .line 225
    .local v13, "latest":Lorg/joda/time/LocalDateTime;
    :goto_1
    sget-object v2, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Earliest "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " date "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "dd MM yyyy"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/joda/time/LocalDateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v2, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Latest "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " date "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "dd MM yyyy"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/joda/time/LocalDateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v2, Lorg/joda/time/LocalDateTime;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mEarliestTransactionTimestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v2, v0, v1}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getDateDiff(Lorg/joda/time/LocalDateTime;Lorg/joda/time/LocalDateTime;)I

    move-result v16

    .line 229
    .local v16, "xAxisOffset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getDateDiff(Lorg/joda/time/LocalDateTime;Lorg/joda/time/LocalDateTime;)I

    move-result v10

    .line 230
    .local v10, "count":I
    new-instance v15, Ljava/util/ArrayList;

    add-int/lit8 v2, v10, 0x1

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v15, "values":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-gt v12, v10, :cond_3

    .line 232
    const-wide/16 v4, 0x0

    .line 233
    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 234
    .local v6, "end":J
    sget-object v2, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment$1;->$SwitchMap$org$gnucash$android$ui$report$ReportsActivity$GroupInterval:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->ordinal()I

    move-result v17

    aget v2, v2, v17

    packed-switch v2, :pswitch_data_0

    .line 255
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual/range {v2 .. v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountsBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->asDouble()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .line 256
    .local v9, "balance":F
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    add-int v17, v12, v16

    move/from16 v0, v17

    invoke-direct {v2, v9, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v2, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " MMM yyyy"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/joda/time/LocalDateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", balance = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 222
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v9    # "balance":F
    .end local v10    # "count":I
    .end local v11    # "earliest":Lorg/joda/time/LocalDateTime;
    .end local v12    # "i":I
    .end local v13    # "latest":Lorg/joda/time/LocalDateTime;
    .end local v15    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v16    # "xAxisOffset":I
    :cond_2
    new-instance v11, Lorg/joda/time/LocalDateTime;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodStart:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v11, v0, v1}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 223
    .restart local v11    # "earliest":Lorg/joda/time/LocalDateTime;
    new-instance v13, Lorg/joda/time/LocalDateTime;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodEnd:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .restart local v13    # "latest":Lorg/joda/time/LocalDateTime;
    goto/16 :goto_1

    .line 236
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    .restart local v15    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .restart local v16    # "xAxisOffset":I
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getQuarter(Lorg/joda/time/LocalDateTime;)I

    move-result v14

    .line 237
    .local v14, "quarter":I
    mul-int/lit8 v2, v14, 0x3

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v11, v2}, Lorg/joda/time/LocalDateTime;->withMonthOfYear(I)Lorg/joda/time/LocalDateTime;

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

    .line 238
    mul-int/lit8 v2, v14, 0x3

    invoke-virtual {v11, v2}, Lorg/joda/time/LocalDateTime;->withMonthOfYear(I)Lorg/joda/time/LocalDateTime;

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

    .line 240
    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v11

    .line 241
    goto/16 :goto_3

    .line 243
    .end local v14    # "quarter":I
    :pswitch_1
    invoke-virtual {v11}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

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

    .line 244
    invoke-virtual {v11}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

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

    .line 246
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v11

    .line 247
    goto/16 :goto_3

    .line 249
    :pswitch_2
    invoke-virtual {v11}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

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

    .line 250
    invoke-virtual {v11}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

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

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v11

    goto/16 :goto_3

    .line 261
    .end local v4    # "start":J
    .end local v6    # "end":J
    :cond_3
    return-object v15

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected displayReport()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-boolean v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChartDataPresent:Z

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 319
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 320
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 321
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 322
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 327
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->animateX(I)V

    goto :goto_0
.end method

.method protected generateReport()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/gnucash/android/model/AccountType;

    sget-object v3, Lorg/gnucash/android/model/AccountType;->INCOME:Lorg/gnucash/android/model/AccountType;

    aput-object v3, v2, v4

    sget-object v3, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getData(Ljava/util/List;)Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 307
    .local v0, "lineData":Lcom/github/mikephil/charting/data/LineData;
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 309
    iput-boolean v5, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChartDataPresent:Z

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iput-boolean v4, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChartDataPresent:Z

    goto :goto_0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f0b0059

    return v0
.end method

.method public getReportType()Lorg/gnucash/android/ui/report/ReportType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/gnucash/android/ui/report/ReportType;->LINE_CHART:Lorg/gnucash/android/ui/report/ReportType;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0f01ab

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    .line 97
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    iget-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, p0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 100
    iget-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 102
    iget-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    .line 104
    iget-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/utils/LargeValueFormatter;

    iget-object v3, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/utils/LargeValueFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V

    .line 106
    iget-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 107
    .local v0, "legend":Lcom/github/mikephil/charting/components/Legend;
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setPosition(Lcom/github/mikephil/charting/components/Legend$LegendPosition;)V

    .line 108
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setTextSize(F)V

    .line 109
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 111
    return-void
.end method

.method public onGroupingUpdated(Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;)V
    .locals 5
    .param p1, "groupInterval"    # Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    .prologue
    .line 341
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    if-eq v0, p1, :cond_0

    .line 342
    iput-object p1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    .line 343
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/gnucash/android/model/AccountType;

    const/4 v3, 0x0

    sget-object v4, Lorg/gnucash/android/model/AccountType;->INCOME:Lorg/gnucash/android/model/AccountType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getData(Ljava/util/List;)Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 344
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 346
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 362
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 383
    :pswitch_0
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    :cond_1
    move v2, v4

    .line 361
    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v2, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    iget-object v5, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 365
    iget-object v2, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    goto :goto_1

    .line 369
    :pswitch_2
    iget-object v2, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->getLimitLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    iget-object v2, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 371
    .local v1, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    new-instance v0, Lcom/github/mikephil/charting/components/LimitLine;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getYValueSum()F

    move-result v4

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryCount()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(FLjava/lang/String;)V

    .line 372
    .local v0, "line":Lcom/github/mikephil/charting/components/LimitLine;
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/github/mikephil/charting/components/LimitLine;->enableDashedLine(FFF)V

    .line 373
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getColor()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/LimitLine;->setLineColor(I)V

    .line 374
    iget-object v4, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/components/YAxis;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    goto :goto_2

    .line 377
    .end local v0    # "line":Lcom/github/mikephil/charting/components/LimitLine;
    .end local v1    # "set":Lcom/github/mikephil/charting/data/LineDataSet;
    :cond_3
    iget-object v2, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->removeAllLimitLines()V

    .line 379
    :cond_4
    iget-object v2, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    goto/16 :goto_1

    .line 362
    :pswitch_data_0
    .packed-switch 0x7f090143
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 350
    const v0, 0x7f090143

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChartDataPresent:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    const v0, 0x7f09013f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    const v0, 0x7f090144

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    const v0, 0x7f090140

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    const v0, 0x7f09013d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    return-void
.end method

.method public onTimeRangeUpdated(JJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 331
    iget-wide v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodStart:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodEnd:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    iput-wide p1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodStart:J

    .line 333
    iput-wide p3, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mReportPeriodEnd:J

    .line 334
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/gnucash/android/model/AccountType;

    const/4 v3, 0x0

    sget-object v4, Lorg/gnucash/android/model/AccountType;->INCOME:Lorg/gnucash/android/model/AccountType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->getData(Ljava/util/List;)Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 335
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 337
    :cond_1
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 16
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 390
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineData;->getXVals()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v8

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 391
    .local v2, "label":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    float-to-double v6, v3

    .line 392
    .local v6, "value":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineData;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineDataSet;->getYValueSum()F

    move-result v3

    float-to-double v4, v3

    .line 393
    .local v4, "sum":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    const-string v8, "%s - %.2f (%.2f %%)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    div-double v12, v6, v4

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public requiresAccountTypeOptions()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method
