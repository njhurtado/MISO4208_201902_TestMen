.class public Lcom/github/mikephil/charting/charts/CombinedChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "CombinedChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/LineDataProvider;
.implements Lcom/github/mikephil/charting/interfaces/BarDataProvider;
.implements Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;
.implements Lcom/github/mikephil/charting/interfaces/CandleDataProvider;
.implements Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/CombinedData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/LineDataProvider;",
        "Lcom/github/mikephil/charting/interfaces/BarDataProvider;",
        "Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;",
        "Lcom/github/mikephil/charting/interfaces/CandleDataProvider;",
        "Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;"
    }
.end annotation


# instance fields
.field private mDrawBarShadow:Z

.field private mDrawHighlightArrow:Z

.field protected mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field private mDrawValueAboveBar:Z

.field protected mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawHighlightArrow:Z

    .line 41
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    .line 47
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BAR:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BUBBLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->LINE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->CANDLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->SCATTER:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawHighlightArrow:Z

    .line 41
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    .line 47
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BAR:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BUBBLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->LINE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->CANDLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->SCATTER:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawHighlightArrow:Z

    .line 41
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    .line 47
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BAR:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BUBBLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->LINE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->CANDLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->SCATTER:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 71
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 6

    .prologue
    .line 84
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 86
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 87
    :cond_0
    const/high16 v4, -0x41000000    # -0.5f

    iput v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMin:F

    .line 88
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v4, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/CombinedData;->getXVals()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMax:F

    .line 90
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleDataSet;

    .line 94
    .local v1, "set":Lcom/github/mikephil/charting/data/BubbleDataSet;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getXMin()F

    move-result v3

    .line 95
    .local v3, "xmin":F
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getXMax()F

    move-result v2

    .line 97
    .local v2, "xmax":F
    iget v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMin:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 98
    iput v3, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMin:F

    .line 100
    :cond_2
    iget v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMax:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 101
    iput v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMax:F

    goto :goto_0

    .line 105
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "set":Lcom/github/mikephil/charting/data/BubbleDataSet;
    .end local v2    # "xmax":F
    .end local v3    # "xmin":F
    :cond_3
    const/4 v4, 0x0

    iput v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMin:F

    .line 106
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v4, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/CombinedData;->getXValCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iput v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMax:F

    .line 109
    :cond_4
    iget v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMax:F

    iget v5, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mXChartMin:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDeltaX:F

    .line 110
    return-void
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    goto :goto_0
.end method

.method public getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v0

    goto :goto_0
.end method

.method public getCandleData()Lcom/github/mikephil/charting/data/CandleData;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    goto :goto_0
.end method

.method public getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    return-object v0
.end method

.method public getFillFormatter()Lcom/github/mikephil/charting/utils/FillFormatter;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    return-object v0
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    goto :goto_0
.end method

.method public getScatterData()Lcom/github/mikephil/charting/data/ScatterData;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 77
    new-instance v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    .line 80
    return-void
.end method

.method public isDrawBarShadowEnabled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    return v0
.end method

.method public isDrawHighlightArrowEnabled()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawHighlightArrow:Z

    return v0
.end method

.method public isDrawValueAboveBarEnabled()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    return v0
.end method

.method public bridge synthetic setData(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 0
    .param p1, "x0"    # Lcom/github/mikephil/charting/data/ChartData;

    .prologue
    .line 28
    check-cast p1, Lcom/github/mikephil/charting/data/CombinedData;

    .end local p1    # "x0":Lcom/github/mikephil/charting/data/ChartData;
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lcom/github/mikephil/charting/data/CombinedData;)V

    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/CombinedData;)V
    .locals 3
    .param p1, "data"    # Lcom/github/mikephil/charting/data/CombinedData;

    .prologue
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 115
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 116
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 117
    new-instance v0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 118
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->initBuffers()V

    .line 119
    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    .line 212
    return-void
.end method

.method public setDrawHighlightArrow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawHighlightArrow:Z

    .line 191
    return-void
.end method

.method public setDrawOrder([Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;)V
    .locals 1
    .param p1, "order"    # [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    goto :goto_0
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    .line 201
    return-void
.end method

.method public setFillFormatter(Lcom/github/mikephil/charting/utils/FillFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lcom/github/mikephil/charting/utils/FillFormatter;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance p1, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;

    .end local p1    # "formatter":Lcom/github/mikephil/charting/utils/FillFormatter;
    invoke-direct {p1, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;)V

    .line 127
    .restart local p1    # "formatter":Lcom/github/mikephil/charting/utils/FillFormatter;
    :goto_0
    return-void

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    goto :goto_0
.end method
