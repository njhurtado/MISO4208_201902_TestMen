.class public Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "CandleStickChartRenderer.java"


# instance fields
.field private mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

.field private mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/CandleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 32
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 33
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    .line 34
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 54
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

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

    check-cast v2, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 56
    .local v2, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p0, p1, v2}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/CandleDataSet;)V

    goto :goto_0

    .line 59
    .end local v2    # "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/CandleDataSet;)V
    .locals 30
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/CandleDataSet;

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v29

    .line 65
    .local v29, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v24

    .line 66
    .local v24, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v25

    .line 68
    .local v25, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/data/CandleData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v16

    .line 70
    .local v16, "dataSetIndex":I
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getYVals()Ljava/util/List;

    move-result-object v18

    .line 72
    .local v18, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v19

    .line 73
    .local v19, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMaxX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v20

    .line 75
    .local v20, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    const/4 v9, 0x0

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 76
    .local v23, "minx":I
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 78
    .local v22, "maxx":I
    sub-int v4, v22, v23

    mul-int/lit8 v26, v4, 0x4

    .line 79
    .local v26, "range":I
    sub-int v4, v22, v23

    int-to-float v4, v4

    mul-float v4, v4, v24

    move/from16 v0, v23

    int-to-float v9, v0

    add-float/2addr v4, v9

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v28, v0

    .line 81
    .local v28, "to":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    aget-object v15, v4, v16

    .line 82
    .local v15, "bodyBuffer":Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getBodySpace()F

    move-result v4

    invoke-virtual {v15, v4}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->setBodySpace(F)V

    .line 83
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->setPhases(FF)V

    .line 84
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->limitFrom(I)V

    .line 85
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->limitTo(I)V

    .line 86
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->feed(Ljava/util/List;)V

    .line 88
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 90
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    aget-object v27, v4, v16

    .line 91
    .local v27, "shadowBuffer":Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;
    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->setPhases(FF)V

    .line 92
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->limitFrom(I)V

    .line 93
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->limitTo(I)V

    .line 94
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->feed(Ljava/util/List;)V

    .line 96
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowWidth()F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 104
    div-int/lit8 v4, v21, 0x4

    add-int v4, v4, v23

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 106
    .local v17, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    int-to-float v9, v9

    move/from16 v0, v28

    int-to-float v10, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v10}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->fitsBounds(FFF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    :goto_1
    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColorSameAsCandle()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 111
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v4

    :goto_2
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    aget v5, v4, v21

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x1

    aget v6, v4, v9

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x2

    aget v7, v4, v9

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x3

    aget v8, v4, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 147
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    aget v5, v4, v21

    .line 148
    .local v5, "leftBody":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x1

    aget v8, v4, v9

    .line 149
    .local v8, "open":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x2

    aget v7, v4, v9

    .line 150
    .local v7, "rightBody":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v21, 0x3

    aget v6, v4, v9

    .line 153
    .local v6, "close":F
    cmpl-float v4, v8, v6

    if-lez v4, :cond_9

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v21, 0x4

    add-int v9, v9, v23

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 112
    .end local v5    # "leftBody":F
    .end local v6    # "close":F
    .end local v7    # "rightBody":F
    .end local v8    # "open":F
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v4

    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v9

    cmpg-float v4, v4, v9

    if-gez v4, :cond_4

    .line 119
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_3

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v4

    :goto_5
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v4

    goto :goto_5

    .line 126
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_5

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v4

    :goto_6
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    goto :goto_6

    .line 133
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_7

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v4

    :goto_7
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    goto :goto_7

    .line 158
    .restart local v5    # "leftBody":F
    .restart local v6    # "close":F
    .restart local v7    # "rightBody":F
    .restart local v8    # "open":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 165
    :cond_9
    cmpg-float v4, v8, v6

    if-gez v4, :cond_b

    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v21, 0x4

    add-int v9, v9, v23

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 170
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 178
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 182
    .end local v5    # "leftBody":F
    .end local v6    # "close":F
    .end local v7    # "rightBody":F
    .end local v8    # "open":F
    .end local v17    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    :cond_c
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 284
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, p2

    if-ge v2, v10, :cond_2

    .line 286
    aget-object v10, p2, v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v8

    .line 289
    .local v8, "xIndex":I
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v10

    aget-object v11, p2, v2

    invoke-virtual {v11}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 292
    .local v7, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->isHighlightEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 284
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->getHighLightColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->getHighlightLineWidth()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 298
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 300
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v10

    if-ne v10, v8, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float v3, v10, v11

    .line 304
    .local v3, "low":F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float v1, v10, v11

    .line 305
    .local v1, "high":F
    add-float v10, v3, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v9, v10, v11

    .line 307
    .local v9, "y":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getYChartMin()F

    move-result v5

    .line 308
    .local v5, "min":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getYChartMax()F

    move-result v4

    .line 311
    .local v4, "max":F
    const/16 v10, 0x8

    new-array v6, v10, [F

    const/4 v10, 0x0

    int-to-float v11, v8

    aput v11, v6, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getYChartMax()F

    move-result v11

    aput v11, v6, v10

    const/4 v10, 0x2

    int-to-float v11, v8

    aput v11, v6, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getYChartMin()F

    move-result v11

    aput v11, v6, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getXChartMin()F

    move-result v11

    aput v11, v6, v10

    const/4 v10, 0x5

    aput v9, v6, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getXChartMax()F

    move-result v11

    aput v11, v6, v10

    const/4 v10, 0x7

    aput v9, v6, v10

    .line 316
    .local v6, "pts":[F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 319
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->isHorizontalHighlightIndicatorEnabled()Z

    move-result v10

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->isVerticalHighlightIndicatorEnabled()Z

    move-result v11

    invoke-virtual {p0, p1, v6, v10, v11}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FZZ)V

    goto/16 :goto_1

    .line 321
    .end local v0    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v1    # "high":F
    .end local v3    # "low":F
    .end local v4    # "max":F
    .end local v5    # "min":F
    .end local v6    # "pts":[F
    .end local v7    # "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    .end local v8    # "xIndex":I
    .end local v9    # "y":F
    :cond_2
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleData;->getYValCount()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getMaxVisibleCount()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v20

    mul-float v6, v6, v20

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 230
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v10

    .line 232
    .local v10, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleDataSet;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ge v13, v5, :cond_4

    .line 234
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 236
    .local v9, "dataSet":Lcom/github/mikephil/charting/data/CandleDataSet;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->isDrawValuesEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 240
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    .line 244
    .local v3, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getYVals()Ljava/util/List;

    move-result-object v4

    .line 246
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    move-object/from16 v0, p0

    iget v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 247
    .local v11, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMaxX:I

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 249
    .local v12, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v9, v11}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 250
    .local v7, "minx":I
    invoke-virtual {v9, v12}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 252
    .local v8, "maxx":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    invoke-virtual/range {v3 .. v8}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesCandle(Ljava/util/List;FFII)[F

    move-result-object v15

    .line 255
    .local v15, "positions":[F
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v19

    .line 257
    .local v19, "yOffset":F
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    array-length v5, v15

    if-ge v14, v5, :cond_0

    .line 259
    aget v17, v15, v14

    .line 260
    .local v17, "x":F
    add-int/lit8 v5, v14, 0x1

    aget v18, v15, v5

    .line 262
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v5

    if-nez v5, :cond_3

    .line 257
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_1

    .line 268
    :cond_3
    div-int/lit8 v5, v14, 0x2

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v16

    .line 270
    .local v16, "val":F
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v5

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v5

    sub-float v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v5, v1, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 275
    .end local v3    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    .end local v7    # "minx":I
    .end local v8    # "maxx":I
    .end local v9    # "dataSet":Lcom/github/mikephil/charting/data/CandleDataSet;
    .end local v10    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleDataSet;>;"
    .end local v11    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v12    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v15    # "positions":[F
    .end local v16    # "val":F
    .end local v17    # "x":F
    .end local v18    # "y":F
    .end local v19    # "yOffset":F
    :cond_4
    return-void
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 38
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 39
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    .line 40
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 43
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 44
    .local v2, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 45
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    :cond_0
    return-void
.end method
