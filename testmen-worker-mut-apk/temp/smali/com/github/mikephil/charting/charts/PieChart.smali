.class public Lcom/github/mikephil/charting/charts/PieChart;
.super Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/PieData;",
        ">;"
    }
.end annotation


# instance fields
.field private mAbsoluteAngles:[F

.field private mCenterText:Ljava/lang/String;

.field private mCenterTextRadiusPercent:F

.field private mCenterTextWordWrapEnabled:Z

.field private mCircleBox:Landroid/graphics/RectF;

.field private mDrawAngles:[F

.field private mDrawCenterText:Z

.field private mDrawHole:Z

.field private mDrawRoundedSlices:Z

.field private mDrawXLabels:Z

.field private mHoleRadiusPercent:F

.field protected mTransparentCircleRadiusPercent:F

.field private mUsePercentValues:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    .line 38
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    .line 47
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    .line 50
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    .line 53
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawRoundedSlices:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    .line 70
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    .line 75
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextWordWrapEnabled:Z

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    .line 38
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    .line 47
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    .line 50
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    .line 53
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawRoundedSlices:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    .line 70
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    .line 75
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextWordWrapEnabled:Z

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    .line 38
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    .line 47
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    .line 50
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    .line 53
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawRoundedSlices:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    .line 70
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    .line 75
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextWordWrapEnabled:Z

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    .line 89
    return-void
.end method

.method private calcAngle(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 215
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v0

    div-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private calcAngles()V
    .locals 9

    .prologue
    .line 156
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getYValCount()I

    move-result v6

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    .line 157
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getYValCount()I

    move-result v6

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    .line 159
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieDataSet;>;"
    const/4 v0, 0x0

    .line 163
    .local v0, "cnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getDataSetCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 165
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/PieDataSet;

    .line 166
    .local v5, "set":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v2

    .line 168
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 170
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/github/mikephil/charting/charts/PieChart;->calcAngle(F)F

    move-result v6

    aput v6, v7, v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    aget v7, v7, v0

    aput v7, v6, v0

    .line 178
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 175
    :cond_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    add-int/lit8 v8, v0, -0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    aget v8, v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v0

    goto :goto_2

    .line 163
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v4    # "j":I
    .end local v5    # "set":Lcom/github/mikephil/charting/data/PieDataSet;
    :cond_2
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calcMinMax()V

    .line 142
    invoke-direct {p0}, Lcom/github/mikephil/charting/charts/PieChart;->calcAngles()V

    .line 143
    return-void
.end method

.method public calculateOffsets()V
    .locals 8

    .prologue
    .line 121
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calculateOffsets()V

    .line 124
    iget-boolean v3, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDataNotSet:Z

    if-eqz v3, :cond_0

    .line 136
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getDiameter()F

    move-result v2

    .line 128
    .local v2, "diameter":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    .line 130
    .local v0, "boxSize":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v1

    .line 134
    .local v1, "c":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v0

    iget v6, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget v7, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public getAbsoluteAngles()[F
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    return-object v0
.end method

.method public getCenterCircleBox()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 400
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCenterText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterTextRadiusPercent()F
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    return v0
.end method

.method public getCircleBox()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDataSetIndexForIndex(I)I
    .locals 3
    .param p1, "xIndex"    # I

    .prologue
    .line 240
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "dataSets":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/DataSet<+Lcom/github/mikephil/charting/data/Entry;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 247
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 242
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getDrawAngles()[F
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    return-object v0
.end method

.method public getHoleRadius()F
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    return v0
.end method

.method public getIndexForAngle(F)I
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v2

    sub-float v2, p1, v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->getNormalizedAngle(F)F

    move-result v0

    .line 224
    .local v0, "a":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 229
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 224
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getMarkerPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)[F
    .locals 1
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 148
    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 379
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected getRequiredBaseOffset()F
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method protected getRequiredBottomOffset()F
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTransparentCircleRadius()F
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    return v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->init()V

    .line 95
    new-instance v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 96
    return-void
.end method

.method public isCenterTextWordWrapEnabled()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextWordWrapEnabled:Z

    return v0
.end method

.method public isDrawCenterTextEnabled()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    return v0
.end method

.method public isDrawHoleEnabled()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    return v0
.end method

.method public isDrawRoundedSlicesEnabled()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawRoundedSlices:Z

    return v0
.end method

.method public isDrawSliceTextEnabled()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    return v0
.end method

.method public isHoleTransparent()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsePercentValuesEnabled()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    return v0
.end method

.method public needsHighlight(II)Z
    .locals 3
    .param p1, "xIndex"    # I
    .param p2, "dataSetIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->valuesToHighlight()Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez p2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 203
    const/4 v1, 0x1

    goto :goto_0

    .line 198
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDataNotSet:Z

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawData(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->valuesToHighlight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v0, p1, v1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    .line 112
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->renderLegend(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/PieChart;->drawDescription(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintCenterText()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 438
    return-void
.end method

.method public setCenterTextRadiusPercent(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 569
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    .line 570
    return-void
.end method

.method public setCenterTextSize(F)V
    .locals 2
    .param p1, "sizeDp"    # F

    .prologue
    .line 418
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintCenterText()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 420
    return-void
.end method

.method public setCenterTextSizePixels(F)V
    .locals 1
    .param p1, "sizePixels"    # F

    .prologue
    .line 428
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintCenterText()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 429
    return-void
.end method

.method public setCenterTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintCenterText()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 410
    return-void
.end method

.method public setCenterTextWordWrapEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextWordWrapEnabled:Z

    .line 553
    return-void
.end method

.method public setDrawCenterText(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    .line 356
    return-void
.end method

.method public setDrawHoleEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    .line 317
    return-void
.end method

.method public setDrawSliceText(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    .line 505
    return-void
.end method

.method public setHoleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 280
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    return-void
.end method

.method public setHoleColorTransparent(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method

.method public setHoleRadius(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 447
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    .line 448
    return-void
.end method

.method public setTransparentCircleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintTransparentCircle()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 496
    return-void
.end method

.method public setTransparentCircleColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 465
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v2, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintTransparentCircle()Landroid/graphics/Paint;

    move-result-object v1

    .line 466
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 467
    .local v0, "alpha":I
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 469
    return-void
.end method

.method public setTransparentCircleRadius(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 480
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    .line 481
    return-void
.end method

.method public setUsePercentValues(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 534
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    .line 535
    return-void
.end method
