.class public Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "BubbleChartRenderer.java"


# instance fields
.field private _hsvBuffer:[F

.field protected mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

.field private pointBuffer:[F

.field private sizeBuffer:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 192
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 32
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v0

    .line 50
    .local v0, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BubbleDataSet;

    .line 52
    .local v2, "set":Lcom/github/mikephil/charting/data/BubbleDataSet;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {p0, p1, v2}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BubbleDataSet;)V

    goto :goto_0

    .line 55
    .end local v2    # "set":Lcom/github/mikephil/charting/data/BubbleDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BubbleDataSet;)V
    .locals 24
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/BubbleDataSet;

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v19

    .line 70
    .local v19, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v15

    .line 71
    .local v15, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v16

    .line 73
    .local v16, "phaseY":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getYVals()Ljava/util/List;

    move-result-object v6

    .line 75
    .local v6, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    .line 76
    .local v8, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    .line 78
    .local v9, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 79
    .local v14, "minx":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 81
    .local v13, "maxx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 88
    .local v12, "maxBubbleWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v21

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 89
    .local v11, "maxBubbleHeight":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 91
    .local v17, "referenceSize":F
    move v10, v14

    .local v10, "j":I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 93
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 95
    .local v7, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v22

    sub-int v22, v22, v14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v15

    int-to-float v0, v14

    move/from16 v23, v0

    add-float v22, v22, v23

    aput v22, v20, v21

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v22

    mul-float v22, v22, v16

    aput v22, v20, v21

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 99
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getMaxSize()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFF)F

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v18, v20, v21

    .line 101
    .local v18, "shapeHalf":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-float v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    sub-float v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v20

    if-nez v20, :cond_1

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-float v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-float v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v20

    if-nez v20, :cond_3

    .line 116
    .end local v7    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v18    # "shapeHalf":F
    :cond_2
    return-void

    .line 111
    .restart local v7    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v18    # "shapeHalf":F
    :cond_3
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getColor(I)I

    move-result v5

    .line 113
    .local v5, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 190
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 29
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v6

    .line 199
    .local v6, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v20

    .line 200
    .local v20, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v21

    .line 202
    .local v21, "phaseY":F
    move-object/from16 v5, p2

    .local v5, "arr$":[Lcom/github/mikephil/charting/highlight/Highlight;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_2

    aget-object v13, v5, v12

    .line 204
    .local v13, "indice":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BubbleDataSet;

    .line 206
    .local v8, "dataSet":Lcom/github/mikephil/charting/data/BubbleDataSet;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->isHighlightEnabled()Z

    move-result v25

    if-nez v25, :cond_1

    .line 202
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 209
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    .line 210
    .local v10, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 212
    .local v11, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v8, v10}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v18

    .line 213
    .local v18, "minx":I
    invoke-virtual {v8, v11}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryCount()I

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 215
    .local v17, "maxx":I
    invoke-virtual {v6, v13}, Lcom/github/mikephil/charting/data/BubbleData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 216
    .local v9, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v25

    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    move-object/from16 v25, v0

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v24

    .line 221
    .local v24, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v25, v26

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 228
    .local v16, "maxBubbleWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v26

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 229
    .local v15, "maxBubbleHeight":F
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 231
    .local v22, "referenceSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v27

    sub-int v27, v27, v18

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v25, v26

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v27

    mul-float v27, v27, v21

    aput v27, v25, v26

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 235
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v25

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getMaxSize()F

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFF)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v23, v25, v26

    .line 237
    .local v23, "shapeHalf":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    add-float v26, v26, v23

    invoke-virtual/range {v25 .. v26}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-float v26, v26, v23

    invoke-virtual/range {v25 .. v26}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    add-float v26, v26, v23

    invoke-virtual/range {v25 .. v26}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    sub-float v26, v26, v23

    invoke-virtual/range {v25 .. v26}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v25

    if-nez v25, :cond_3

    .line 261
    .end local v8    # "dataSet":Lcom/github/mikephil/charting/data/BubbleDataSet;
    .end local v9    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v10    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v11    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "indice":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v15    # "maxBubbleHeight":F
    .end local v16    # "maxBubbleWidth":F
    .end local v17    # "maxx":I
    .end local v18    # "minx":I
    .end local v22    # "referenceSize":F
    .end local v23    # "shapeHalf":F
    .end local v24    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    :cond_2
    return-void

    .line 247
    .restart local v8    # "dataSet":Lcom/github/mikephil/charting/data/BubbleDataSet;
    .restart local v9    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v10    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v11    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .restart local v13    # "indice":Lcom/github/mikephil/charting/highlight/Highlight;
    .restart local v15    # "maxBubbleHeight":F
    .restart local v16    # "maxBubbleWidth":F
    .restart local v17    # "maxx":I
    .restart local v18    # "minx":I
    .restart local v22    # "referenceSize":F
    .restart local v23    # "shapeHalf":F
    .restart local v24    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    :cond_3
    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 250
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getColor(I)I

    move-result v19

    .line 252
    .local v19, "originalColor":I
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->red(I)I

    move-result v25

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->green(I)I

    move-result v26

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->blue(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v28, v0

    invoke-static/range {v25 .. v28}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget v27, v25, v26

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    aput v27, v25, v26

    .line 255
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->alpha(I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    .line 257
    .local v7, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getHighlightCircleWidth()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v11

    .line 123
    .local v11, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    if-nez v11, :cond_1

    .line 186
    :cond_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleData;->getYValCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getMaxVisibleCount()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v4, v0, :cond_0

    .line 130
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v13

    .line 132
    .local v13, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleDataSet;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v25, "1"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v0, v4

    move/from16 v19, v0

    .line 134
    .local v19, "lineHeight":F
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/BubbleDataSet;

    .line 136
    .local v12, "dataSet":Lcom/github/mikephil/charting/data/BubbleDataSet;
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->isDrawValuesEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v6

    .line 143
    .local v6, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v7

    .line 145
    .local v7, "phaseY":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v6, v4

    if-nez v4, :cond_4

    move v10, v7

    .line 146
    .local v10, "alpha":F
    :goto_0
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getValueTextColor()I

    move-result v22

    .line 147
    .local v22, "valueTextColor":I
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->red(I)I

    move-result v25

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->green(I)I

    move-result v26

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->blue(I)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getYVals()Ljava/util/List;

    move-result-object v5

    .line 154
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    invoke-virtual {v12, v4}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v15

    .line 155
    .local v15, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    invoke-virtual {v12, v4}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v16

    .line 157
    .local v16, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v12, v15}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v8

    .line 158
    .local v8, "minx":I
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getEntryCount()I

    move-result v25

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 160
    .local v9, "maxx":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBubble(Ljava/util/List;FFII)[F

    move-result-object v20

    .line 163
    .local v20, "positions":[F
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v18

    if-ge v0, v4, :cond_2

    .line 165
    aget v23, v20, v18

    .line 166
    .local v23, "x":F
    add-int/lit8 v4, v18, 0x1

    aget v24, v20, v4

    .line 168
    .local v24, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v4

    if-nez v4, :cond_5

    .line 163
    :cond_3
    :goto_2
    add-int/lit8 v18, v18, 0x2

    goto :goto_1

    .end local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    .end local v8    # "minx":I
    .end local v9    # "maxx":I
    .end local v10    # "alpha":F
    .end local v15    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v16    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v18    # "j":I
    .end local v20    # "positions":[F
    .end local v22    # "valueTextColor":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_4
    move v10, v6

    .line 145
    goto/16 :goto_0

    .line 174
    .restart local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    .restart local v8    # "minx":I
    .restart local v9    # "maxx":I
    .restart local v10    # "alpha":F
    .restart local v15    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v16    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .restart local v18    # "j":I
    .restart local v20    # "positions":[F
    .restart local v22    # "valueTextColor":I
    .restart local v23    # "x":F
    .restart local v24    # "y":F
    :cond_5
    div-int/lit8 v4, v18, 0x2

    add-int/2addr v4, v8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 176
    .local v14, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v21

    .line 178
    .local v21, "val":F
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v4

    move/from16 v0, v21

    invoke-interface {v4, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v4

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v25, v25, v19

    add-float v25, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected getShapeSize(FFF)F
    .locals 4
    .param p1, "entrySize"    # F
    .param p2, "maxSize"    # F
    .param p3, "reference"    # F

    .prologue
    .line 61
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    .local v0, "factor":F
    :goto_0
    mul-float v1, p3, v0

    .line 63
    .local v1, "shapeSize":F
    return v1

    .line 61
    .end local v0    # "factor":F
    .end local v1    # "shapeSize":F
    :cond_0
    div-float v2, p1, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
