.class public Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "BarChartRenderer.java"


# instance fields
.field protected mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

.field protected mBarRect:Landroid/graphics/RectF;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

.field protected mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 4
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 39
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 70
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 72
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 74
    .local v2, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "set":Lcom/github/mikephil/charting/data/BarDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/BarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    .line 84
    .local v11, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarShadowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 87
    .local v9, "phaseX":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 89
    .local v10, "phaseY":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v7

    .line 92
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v6, v0, p3

    .line 93
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    invoke-virtual {v6, v9, v10}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 94
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarSpace(F)V

    .line 95
    invoke-virtual {v6, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 96
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 98
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Ljava/util/List;)V

    .line 100
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 103
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 105
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_1
    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    :cond_1
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v1, v8, 0x4

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 128
    .end local v8    # "j":I
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_2
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    :goto_3
    add-int/lit8 v8, v8, 0x4

    goto :goto_2

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 144
    :cond_6
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 415
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 25
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v20

    .line 325
    .local v20, "setCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v15, v2, :cond_5

    .line 327
    aget-object v14, p2, v15

    .line 328
    .local v14, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v16

    .line 330
    .local v16, "index":I
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v11

    .line 331
    .local v11, "dataSetIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v19

    check-cast v19, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 333
    .local v19, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/BarDataSet;->isHighlightEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v2

    const/high16 v23, 0x40000000    # 2.0f

    div-float v6, v2, v23

    .line 338
    .local v6, "barspaceHalf":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    .line 340
    .local v7, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/BarDataSet;->getHighLightColor()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/BarDataSet;->getHighLightAlpha()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 344
    if-ltz v16, :cond_0

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getXChartMax()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    cmpg-float v2, v2, v23

    if-gez v2, :cond_0

    .line 347
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/BarEntry;

    .line 349
    .local v12, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_0

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v13

    .line 353
    .local v13, "groupspace":F
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v2

    if-gez v2, :cond_3

    const/16 v17, 0x0

    .line 356
    .local v17, "isStack":Z
    :goto_2
    mul-int v2, v16, v20

    add-int/2addr v2, v11

    int-to-float v2, v2

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v13, v23

    add-float v2, v2, v23

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v13

    add-float v3, v2, v23

    .line 362
    .local v3, "x":F
    if-eqz v17, :cond_4

    .line 363
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getRange()Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v2

    iget v4, v2, Lcom/github/mikephil/charting/highlight/Range;->from:F

    .line 364
    .local v4, "y1":F
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getRange()Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v2

    iget v2, v2, Lcom/github/mikephil/charting/highlight/Range;->to:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v23

    mul-float v5, v2, v23

    .local v5, "y2":F
    :goto_3
    move-object/from16 v2, p0

    .line 370
    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawHighlightArrowEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v23, 0xff

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v2

    const v23, 0x3d8f5c29    # 0.07f

    mul-float v18, v2, v23

    .line 381
    .local v18, "offsetY":F
    const/16 v2, 0x9

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 382
    .local v21, "values":[F
    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelToValueMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 383
    const/4 v2, 0x4

    aget v2, v21, v2

    const/16 v23, 0x0

    aget v23, v21, v23

    div-float v2, v2, v23

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 385
    .local v22, "xToYRel":F
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v2

    const/high16 v23, 0x40000000    # 2.0f

    div-float v10, v2, v23

    .line 386
    .local v10, "arrowWidth":F
    mul-float v9, v10, v22

    .line 388
    .local v9, "arrowHeight":F
    neg-float v2, v5

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    .line 390
    .local v4, "yArrow":F
    :cond_2
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 391
    .local v8, "arrow":Landroid/graphics/Path;
    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    add-float v23, v4, v18

    move/from16 v0, v23

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 392
    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    add-float/2addr v2, v10

    add-float v23, v4, v18

    sub-float v23, v23, v9

    move/from16 v0, v23

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    add-float/2addr v2, v10

    add-float v23, v4, v18

    add-float v23, v23, v9

    move/from16 v0, v23

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 395
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 353
    .end local v3    # "x":F
    .end local v4    # "yArrow":F
    .end local v5    # "y2":F
    .end local v8    # "arrow":Landroid/graphics/Path;
    .end local v9    # "arrowHeight":F
    .end local v10    # "arrowWidth":F
    .end local v17    # "isStack":Z
    .end local v18    # "offsetY":F
    .end local v21    # "values":[F
    .end local v22    # "xToYRel":F
    :cond_3
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 366
    .restart local v3    # "x":F
    .restart local v17    # "isStack":Z
    :cond_4
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    .line 367
    .local v4, "y1":F
    const/4 v5, 0x0

    .restart local v5    # "y2":F
    goto/16 :goto_3

    .line 400
    .end local v3    # "x":F
    .end local v4    # "y1":F
    .end local v5    # "y2":F
    .end local v6    # "barspaceHalf":F
    .end local v7    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v11    # "dataSetIndex":I
    .end local v12    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v13    # "groupspace":F
    .end local v14    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v16    # "index":I
    .end local v17    # "isStack":Z
    .end local v19    # "set":Lcom/github/mikephil/charting/data/BarDataSet;
    :cond_5
    return-void
.end method

.method protected drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "xPos"    # F
    .param p4, "yPos"    # F

    .prologue
    .line 316
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 35
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->passesCheck()Z

    move-result v30

    if-eqz v30, :cond_12

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v6

    .line 181
    .local v6, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    const/high16 v30, 0x40900000    # 4.5f

    invoke-static/range {v30 .. v30}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v25

    .line 182
    .local v25, "valueOffsetPlus":F
    const/16 v18, 0x0

    .line 183
    .local v18, "posOffset":F
    const/16 v16, 0x0

    .line 184
    .local v16, "negOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v7

    .line 186
    .local v7, "drawValueAboveBar":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v11, v0, :cond_12

    .line 188
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 190
    .local v5, "dataSet":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->isDrawValuesEnabled()Z

    move-result v30

    if-nez v30, :cond_1

    .line 186
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 194
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v30, v0

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v13

    .line 200
    .local v13, "isInverted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    const-string v31, "8"

    invoke-static/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 201
    .local v27, "valueTextHeight":F
    if-eqz v7, :cond_4

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v18, v0

    .line 202
    :goto_1
    if-eqz v7, :cond_5

    add-float v16, v27, v25

    .line 204
    :goto_2
    if-eqz v13, :cond_2

    .line 205
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v30, v0

    sub-float v18, v30, v27

    .line 206
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v30, v0

    sub-float v16, v30, v27

    .line 209
    :cond_2
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v10

    .line 211
    .local v10, "formatter":Lcom/github/mikephil/charting/utils/ValueFormatter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v30, v0

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v20

    .line 213
    .local v20, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v9

    .line 215
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9, v11}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Ljava/util/List;I)[F

    move-result-object v26

    .line 218
    .local v26, "valuePoints":[F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v30

    if-nez v30, :cond_8

    .line 220
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    int-to-float v0, v14

    move/from16 v30, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v32

    mul-float v31, v31, v32

    cmpg-float v30, v30, v31

    if-gez v30, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    aget v31, v26, v14

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    add-int/lit8 v31, v14, 0x1

    aget v31, v26, v31

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    aget v31, v26, v14

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v30

    if-nez v30, :cond_6

    .line 220
    :cond_3
    :goto_4
    add-int/lit8 v14, v14, 0x2

    goto :goto_3

    .line 201
    .end local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    .end local v10    # "formatter":Lcom/github/mikephil/charting/utils/ValueFormatter;
    .end local v14    # "j":I
    .end local v20    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v26    # "valuePoints":[F
    :cond_4
    add-float v18, v27, v25

    goto/16 :goto_1

    .line 202
    :cond_5
    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_2

    .line 229
    .restart local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    .restart local v10    # "formatter":Lcom/github/mikephil/charting/utils/ValueFormatter;
    .restart local v14    # "j":I
    .restart local v20    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .restart local v26    # "valuePoints":[F
    :cond_6
    div-int/lit8 v30, v14, 0x2

    move/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v22

    .line 231
    .local v22, "val":F
    move/from16 v0, v22

    invoke-interface {v10, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v31

    aget v32, v26, v14

    add-int/lit8 v30, v14, 0x1

    aget v33, v26, v30

    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-ltz v30, :cond_7

    move/from16 v30, v18

    :goto_5
    add-float v30, v30, v33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_4

    :cond_7
    move/from16 v30, v16

    goto :goto_5

    .line 238
    .end local v14    # "j":I
    .end local v22    # "val":F
    :cond_8
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    int-to-float v0, v14

    move/from16 v30, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v32

    mul-float v31, v31, v32

    cmpg-float v30, v30, v31

    if-gez v30, :cond_0

    .line 240
    div-int/lit8 v30, v14, 0x2

    move/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BarEntry;

    .line 242
    .local v8, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v23

    .line 247
    .local v23, "vals":[F
    if-nez v23, :cond_c

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    aget v31, v26, v14

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    add-int/lit8 v31, v14, 0x1

    aget v31, v26, v31

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v30

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    aget v31, v26, v14

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v30

    if-nez v30, :cond_a

    .line 238
    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x2

    goto :goto_6

    .line 256
    :cond_a
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v30

    move/from16 v0, v30

    invoke-interface {v10, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v31

    aget v32, v26, v14

    add-int/lit8 v30, v14, 0x1

    aget v33, v26, v30

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v30

    const/16 v34, 0x0

    cmpl-float v30, v30, v34

    if-ltz v30, :cond_b

    move/from16 v30, v18

    :goto_8
    add-float v30, v30, v33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_7

    :cond_b
    move/from16 v30, v16

    goto :goto_8

    .line 262
    :cond_c
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v21, v0

    .line 264
    .local v21, "transformed":[F
    const/16 v19, 0x0

    .line 265
    .local v19, "posY":F
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v30

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v17, v0

    .line 267
    .local v17, "negY":F
    const/4 v15, 0x0

    .local v15, "k":I
    const/4 v12, 0x0

    .local v12, "idx":I
    :goto_9
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_e

    .line 269
    aget v24, v23, v12

    .line 272
    .local v24, "value":F
    const/16 v30, 0x0

    cmpl-float v30, v24, v30

    if-ltz v30, :cond_d

    .line 273
    add-float v19, v19, v24

    .line 274
    move/from16 v29, v19

    .line 280
    .local v29, "y":F
    :goto_a
    add-int/lit8 v30, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v31

    mul-float v31, v31, v29

    aput v31, v21, v30

    .line 267
    add-int/lit8 v15, v15, 0x2

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 276
    .end local v29    # "y":F
    :cond_d
    move/from16 v29, v17

    .line 277
    .restart local v29    # "y":F
    sub-float v17, v17, v24

    goto :goto_a

    .line 283
    .end local v24    # "value":F
    .end local v29    # "y":F
    :cond_e
    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 285
    const/4 v15, 0x0

    :goto_b
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_9

    .line 287
    aget v28, v26, v14

    .line 288
    .local v28, "x":F
    add-int/lit8 v30, v15, 0x1

    aget v31, v21, v30

    div-int/lit8 v30, v15, 0x2

    aget v30, v23, v30

    const/16 v32, 0x0

    cmpl-float v30, v30, v32

    if-ltz v30, :cond_10

    move/from16 v30, v18

    :goto_c
    add-float v29, v31, v30

    .line 291
    .restart local v29    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v30

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v30

    if-nez v30, :cond_11

    .line 285
    :cond_f
    :goto_d
    add-int/lit8 v15, v15, 0x2

    goto :goto_b

    .end local v29    # "y":F
    :cond_10
    move/from16 v30, v16

    .line 288
    goto :goto_c

    .line 298
    .restart local v29    # "y":F
    :cond_11
    div-int/lit8 v30, v15, 0x2

    aget v30, v23, v30

    move/from16 v0, v30

    invoke-interface {v10, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_d

    .line 305
    .end local v5    # "dataSet":Lcom/github/mikephil/charting/data/BarDataSet;
    .end local v6    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    .end local v7    # "drawValueAboveBar":Z
    .end local v8    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    .end local v10    # "formatter":Lcom/github/mikephil/charting/utils/ValueFormatter;
    .end local v11    # "i":I
    .end local v12    # "idx":I
    .end local v13    # "isInverted":Z
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v16    # "negOffset":F
    .end local v17    # "negY":F
    .end local v18    # "posOffset":F
    .end local v19    # "posY":F
    .end local v20    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v21    # "transformed":[F
    .end local v23    # "vals":[F
    .end local v25    # "valueOffsetPlus":F
    .end local v26    # "valuePoints":[F
    .end local v27    # "valueTextHeight":F
    .end local v28    # "x":F
    .end local v29    # "y":F
    :cond_12
    return-void
.end method

.method public getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Ljava/util/List;I)[F
    .locals 2
    .param p1, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p3, "dataSetIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/utils/Transformer;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;I)[F"
        }
    .end annotation

    .prologue
    .line 404
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBarChart(Ljava/util/List;ILcom/github/mikephil/charting/data/BarData;F)[F

    move-result-object v0

    return-object v0
.end method

.method public initBuffers()V
    .locals 9

    .prologue
    .line 54
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 55
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/BarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 59
    .local v2, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getStackSize()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v7

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IFIZ)V

    aput-object v4, v3, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "set":Lcom/github/mikephil/charting/data/BarDataSet;
    :cond_0
    return-void
.end method

.method protected passesCheck()Z
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getYValCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "barspaceHalf"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 162
    const/high16 v0, 0x3f000000    # 0.5f

    .line 164
    .local v0, "barWidth":F
    sub-float v5, p1, v0

    add-float v2, v5, p4

    .line 165
    .local v2, "left":F
    add-float v5, p1, v0

    sub-float v3, v5, p4

    .line 166
    .local v3, "right":F
    move v4, p2

    .line 167
    .local v4, "top":F
    move v1, p3

    .line 169
    .local v1, "bottom":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    invoke-virtual {p5, v5, v6}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;F)V

    .line 172
    return-void
.end method
