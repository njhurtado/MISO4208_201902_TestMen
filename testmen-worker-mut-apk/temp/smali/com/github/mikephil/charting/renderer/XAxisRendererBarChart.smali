.class public Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "XAxisRendererBarChart.java"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/BarChart;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 0
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "xAxis"    # Lcom/github/mikephil/charting/components/XAxis;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p4, "chart"    # Lcom/github/mikephil/charting/charts/BarChart;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 21
    iput-object p4, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 22
    return-void
.end method


# virtual methods
.method protected drawLabels(Landroid/graphics/Canvas;F)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pos"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 33
    const/4 v6, 0x2

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    .line 37
    .local v3, "position":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    .line 38
    .local v0, "bd":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v4

    .line 40
    .local v4, "step":I
    iget v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mMinX:I

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mMaxX:I

    if-gt v1, v6, :cond_4

    .line 42
    mul-int v6, v1, v4

    int-to-float v6, v6

    int-to-float v7, v1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v7

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    aput v6, v3, v9

    .line 46
    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    .line 47
    aget v6, v3, v9

    int-to-float v7, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    aput v6, v3, v9

    .line 50
    :cond_0
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 52
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ltz v1, :cond_2

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 55
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, "label":Ljava/lang/String;
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->isAvoidFirstLastClippingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_3

    .line 61
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v6, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v5, v6

    .line 63
    .local v5, "width":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v6

    mul-float/2addr v6, v10

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    aget v6, v3, v9

    add-float/2addr v6, v5

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 65
    aget v6, v3, v9

    div-float v7, v5, v10

    sub-float/2addr v6, v7

    aput v6, v3, v9

    .line 75
    .end local v5    # "width":F
    :cond_1
    :goto_1
    aget v6, v3, v9

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, p2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 40
    .end local v2    # "label":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v6, v6, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    add-int/2addr v1, v6

    goto/16 :goto_0

    .line 68
    .restart local v2    # "label":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_1

    .line 70
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v6, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v5, v6

    .line 71
    .restart local v5    # "width":F
    aget v6, v3, v9

    div-float v7, v5, v10

    add-float/2addr v6, v7

    aput v6, v3, v9

    goto :goto_1

    .line 80
    .end local v2    # "label":Ljava/lang/String;
    .end local v5    # "width":F
    :cond_4
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawGridLinesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x2

    new-array v8, v0, [F

    fill-array-data v8, :array_0

    .line 92
    .local v8, "position":[F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mGridPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getGridColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mGridPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getGridLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarData;

    .line 96
    .local v6, "bd":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v9

    .line 98
    .local v9, "step":I
    iget v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mMinX:I

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mMaxX:I

    if-ge v7, v0, :cond_0

    .line 100
    mul-int v0, v7, v9

    int-to-float v0, v0

    int-to-float v1, v7

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    aput v0, v8, v10

    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 104
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v1, v8, v10

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    aget v1, v8, v10

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v2

    aget v3, v8, v10

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mGridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    add-int/2addr v7, v0

    goto :goto_0

    .line 88
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
