.class public Lcom/github/mikephil/charting/renderer/RadarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "RadarChartRenderer.java"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/RadarChart;

.field protected mWebPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 5
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/RadarChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 31
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xbb

    const/16 v3, 0x73

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    .line 57
    .local v1, "radarData":Lcom/github/mikephil/charting/data/RadarData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getDataSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/RadarDataSet;

    .line 59
    .local v2, "set":Lcom/github/mikephil/charting/data/RadarDataSet;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/RadarDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0, p1, v2}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/RadarDataSet;)V

    goto :goto_0

    .line 62
    .end local v2    # "set":Lcom/github/mikephil/charting/data/RadarDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/RadarDataSet;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/RadarDataSet;

    .prologue
    const/16 v12, 0xff

    .line 66
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v7

    .line 70
    .local v7, "sliceangle":F
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v3

    .line 72
    .local v3, "factor":F
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 74
    .local v0, "center":Landroid/graphics/PointF;
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/RadarDataSet;->getYVals()Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 78
    .local v8, "surface":Landroid/graphics/Path;
    const/4 v4, 0x0

    .line 80
    .local v4, "hasMovedToPoint":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 82
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v5}, Lcom/github/mikephil/charting/data/RadarDataSet;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 86
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v3

    int-to-float v10, v5

    mul-float/2addr v10, v7

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v0, v9, v10}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 89
    .local v6, "p":Landroid/graphics/PointF;
    iget v9, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    :cond_0
    if-nez v4, :cond_1

    .line 93
    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 94
    const/4 v4, 0x1

    goto :goto_1

    .line 96
    :cond_1
    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 99
    .end local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v6    # "p":Landroid/graphics/PointF;
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 102
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/RadarDataSet;->isDrawFilledEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 103
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/RadarDataSet;->getFillAlpha()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    :cond_3
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/RadarDataSet;->getLineWidth()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/RadarDataSet;->isDrawFilledEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/RadarDataSet;->getFillAlpha()I

    move-result v9

    if-ge v9, v12, :cond_5

    .line 114
    :cond_4
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 115
    :cond_5
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawWeb(Landroid/graphics/Canvas;)V

    .line 158
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 208
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v9

    .line 209
    .local v9, "sliceangle":F
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v3

    .line 211
    .local v3, "factor":F
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v1

    .line 213
    .local v1, "center":Landroid/graphics/PointF;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v4, v12, :cond_2

    .line 215
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/RadarData;

    aget-object v13, p2, v4

    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/RadarDataSet;

    .line 219
    .local v8, "set":Lcom/github/mikephil/charting/data/RadarDataSet;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/RadarDataSet;->isHighlightEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    .line 213
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/RadarDataSet;->getHighLightColor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/RadarDataSet;->getHighlightLineWidth()F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    aget-object v12, p2, v4

    invoke-virtual {v12}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v10

    .line 228
    .local v10, "xIndex":I
    invoke-virtual {v8, v10}, Lcom/github/mikephil/charting/data/RadarDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 229
    .local v2, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v12

    if-ne v12, v10, :cond_0

    .line 232
    invoke-virtual {v8, v2}, Lcom/github/mikephil/charting/data/RadarDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    .line 233
    .local v5, "j":I
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v12

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v13

    sub-float v11, v12, v13

    .line 235
    .local v11, "y":F
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_0

    .line 238
    mul-float v12, v11, v3

    int-to-float v13, v5

    mul-float/2addr v13, v9

    iget-object v14, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v1, v12, v13}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 241
    .local v6, "p":Landroid/graphics/PointF;
    const/16 v12, 0x8

    new-array v7, v12, [F

    const/4 v12, 0x0

    iget v13, v6, Landroid/graphics/PointF;->x:F

    aput v13, v7, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v7, v12

    const/4 v12, 0x2

    iget v13, v6, Landroid/graphics/PointF;->x:F

    aput v13, v7, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v13

    aput v13, v7, v12

    const/4 v12, 0x4

    const/4 v13, 0x0

    aput v13, v7, v12

    const/4 v12, 0x5

    iget v13, v6, Landroid/graphics/PointF;->y:F

    aput v13, v7, v12

    const/4 v12, 0x6

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v13

    aput v13, v7, v12

    const/4 v12, 0x7

    iget v13, v6, Landroid/graphics/PointF;->y:F

    aput v13, v7, v12

    .line 247
    .local v7, "pts":[F
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/RadarDataSet;->isHorizontalHighlightIndicatorEnabled()Z

    move-result v12

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/RadarDataSet;->isVerticalHighlightIndicatorEnabled()Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v7, v12, v13}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FZZ)V

    goto/16 :goto_1

    .line 249
    .end local v2    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v5    # "j":I
    .end local v6    # "p":Landroid/graphics/PointF;
    .end local v7    # "pts":[F
    .end local v8    # "set":Lcom/github/mikephil/charting/data/RadarDataSet;
    .end local v10    # "xIndex":I
    .end local v11    # "y":F
    :cond_2
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v8

    .line 124
    .local v8, "sliceangle":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v4

    .line 126
    .local v4, "factor":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 128
    .local v0, "center":Landroid/graphics/PointF;
    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v9

    .line 130
    .local v9, "yoffset":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetCount()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 132
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v10, v5}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarDataSet;

    .line 134
    .local v1, "dataSet":Lcom/github/mikephil/charting/data/RadarDataSet;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarDataSet;->isDrawValuesEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 130
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 140
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarDataSet;->getYVals()Ljava/util/List;

    move-result-object v3

    .line 142
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 144
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 146
    .local v2, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v4

    int-to-float v11, v6

    mul-float/2addr v11, v8

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v0, v10, v11}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v7

    .line 149
    .local v7, "p":Landroid/graphics/PointF;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v10

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v11

    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v10

    iget v11, v7, Landroid/graphics/PointF;->x:F

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v9

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    .end local v1    # "dataSet":Lcom/github/mikephil/charting/data/RadarDataSet;
    .end local v2    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v6    # "j":I
    .end local v7    # "p":Landroid/graphics/PointF;
    :cond_2
    return-void
.end method

.method protected drawWeb(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v17

    .line 166
    .local v17, "sliceangle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v8

    .line 167
    .local v8, "factor":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v16

    .line 169
    .local v16, "rotationangle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v7

    .line 172
    .local v7, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 176
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getXValCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v1

    mul-float/2addr v1, v8

    int-to-float v2, v9

    mul-float v2, v2, v17

    add-float v2, v2, v16

    invoke-static {v7, v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v12

    .line 181
    .local v12, "p":Landroid/graphics/PointF;
    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    iget v4, v12, Landroid/graphics/PointF;->x:F

    iget v5, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 185
    .end local v12    # "p":Landroid/graphics/PointF;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidthInner()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColorInner()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v11, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 191
    .local v11, "labelCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v11, :cond_2

    .line 193
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getXValCount()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget-object v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v1, v1, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v15, v1, v8

    .line 197
    .local v15, "r":F
    int-to-float v1, v9

    mul-float v1, v1, v17

    add-float v1, v1, v16

    invoke-static {v7, v15, v1}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v13

    .line 198
    .local v13, "p1":Landroid/graphics/PointF;
    add-int/lit8 v1, v9, 0x1

    int-to-float v1, v1

    mul-float v1, v1, v17

    add-float v1, v1, v16

    invoke-static {v7, v15, v1}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v14

    .line 200
    .local v14, "p2":Landroid/graphics/PointF;
    iget v2, v13, Landroid/graphics/PointF;->x:F

    iget v3, v13, Landroid/graphics/PointF;->y:F

    iget v4, v14, Landroid/graphics/PointF;->x:F

    iget v5, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 193
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 191
    .end local v13    # "p1":Landroid/graphics/PointF;
    .end local v14    # "p2":Landroid/graphics/PointF;
    .end local v15    # "r":F
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 203
    :cond_2
    return-void
.end method

.method public getWebPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
