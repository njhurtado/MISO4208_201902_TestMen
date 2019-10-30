.class public Lcom/github/mikephil/charting/charts/LineChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "LineChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/LineDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/LineData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/LineDataProvider;"
    }
.end annotation


# instance fields
.field private mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 45
    iget v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mDeltaX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getYValCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mDeltaX:F

    .line 47
    :cond_0
    return-void
.end method

.method public getFillFormatter()Lcom/github/mikephil/charting/utils/FillFormatter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    return-object v0
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 37
    new-instance v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/LineChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/LineChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 38
    new-instance v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    .line 39
    return-void
.end method

.method public setFillFormatter(Lcom/github/mikephil/charting/utils/FillFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lcom/github/mikephil/charting/utils/FillFormatter;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance p1, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;

    .end local p1    # "formatter":Lcom/github/mikephil/charting/utils/FillFormatter;
    invoke-direct {p1, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;)V

    .line 56
    .restart local p1    # "formatter":Lcom/github/mikephil/charting/utils/FillFormatter;
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/LineChart;->mFillFormatter:Lcom/github/mikephil/charting/utils/FillFormatter;

    goto :goto_0
.end method
