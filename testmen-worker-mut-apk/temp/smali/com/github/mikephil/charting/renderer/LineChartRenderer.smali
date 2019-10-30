.class public Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "LineChartRenderer.java"


# instance fields
.field protected cubicFillPath:Landroid/graphics/Path;

.field protected cubicPath:Landroid/graphics/Path;

.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

.field protected mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

.field protected mCirclePaintInner:Landroid/graphics/Paint;

.field protected mDrawBitmap:Landroid/graphics/Bitmap;

.field protected mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/LineDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 51
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 52
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    return-void
.end method

.method private generateFilledPath(Ljava/util/List;FII)Landroid/graphics/Path;
    .locals 8
    .param p2, "fillMin"    # F
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;FII)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    .line 376
    .local v3, "phaseX":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    .line 378
    .local v4, "phaseY":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 379
    .local v2, "filled":Landroid/graphics/Path;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 380
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v7, v6

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 383
    add-int/lit8 v5, p3, 0x1

    .local v5, "x":I
    sub-int v6, p4, p3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    int-to-float v7, p3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .local v0, "count":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 385
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 386
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 383
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_0
    sub-int v6, p4, p3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    int-to-float v7, p3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 396
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 398
    return-object v2
.end method


# virtual methods
.method protected drawCircles(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v19

    .line 469
    .local v19, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v20

    .line 471
    .local v20, "phaseY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v10

    .line 473
    .local v10, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_5

    .line 475
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 477
    .local v9, "dataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCirclesEnabled()Z

    move-result v24

    if-nez v24, :cond_1

    .line 473
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 480
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleHoleColor()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    move-object/from16 v24, v0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v21

    .line 483
    .local v21, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getYVals()Ljava/util/List;

    move-result-object v11

    .line 485
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move/from16 v24, v0

    if-gez v24, :cond_3

    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 486
    .local v12, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    .line 488
    .local v13, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v9, v12}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v24

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 489
    .local v18, "minx":I
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 491
    .local v17, "maxx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    move-object/from16 v24, v0

    aget-object v6, v24, v15

    .line 492
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->setPhases(FF)V

    .line 493
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->limitFrom(I)V

    .line 494
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->limitTo(I)V

    .line 495
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->feed(Ljava/util/List;)V

    .line 497
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 499
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v14, v24, v25

    .line 501
    .local v14, "halfsize":F
    const/16 v16, 0x0

    .local v16, "j":I
    sub-int v24, v17, v18

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v8, v24, 0x2

    .local v8, "count":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v8, :cond_0

    .line 503
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v24, v0

    aget v22, v24, v16

    .line 504
    .local v22, "x":F
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v24, v0

    add-int/lit8 v25, v16, 0x1

    aget v23, v24, v25

    .line 506
    .local v23, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v24

    if-nez v24, :cond_4

    .line 501
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x2

    goto :goto_2

    .line 485
    .end local v6    # "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    .end local v8    # "count":I
    .end local v12    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v14    # "halfsize":F
    .end local v16    # "j":I
    .end local v17    # "maxx":I
    .end local v18    # "minx":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move/from16 v24, v0

    goto/16 :goto_1

    .line 514
    .restart local v6    # "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    .restart local v8    # "count":I
    .restart local v12    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v13    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .restart local v14    # "halfsize":F
    .restart local v16    # "j":I
    .restart local v17    # "maxx":I
    .restart local v18    # "minx":I
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_4
    div-int/lit8 v24, v16, 0x2

    add-int v24, v24, v18

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleColor(I)I

    move-result v7

    .line 516
    .local v7, "circleColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 518
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 521
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCircleHoleEnabled()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getColor()I

    move-result v24

    move/from16 v0, v24

    if-eq v7, v0, :cond_2

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 528
    .end local v6    # "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    .end local v7    # "circleColor":I
    .end local v8    # "count":I
    .end local v9    # "dataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v12    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v14    # "halfsize":F
    .end local v16    # "j":I
    .end local v17    # "maxx":I
    .end local v18    # "minx":I
    .end local v21    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_5
    return-void
.end method

.method protected drawCubic(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v27

    .line 138
    .local v27, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    .line 139
    .local v13, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    .line 141
    .local v14, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 142
    .local v18, "minx":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 144
    .local v17, "maxx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v20

    .line 145
    .local v20, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v21

    .line 147
    .local v21, "phaseY":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getCubicIntensity()F

    move-result v15

    .line 149
    .local v15, "intensity":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 151
    sub-int v2, v17, v18

    int-to-float v2, v2

    mul-float v2, v2, v20

    move/from16 v0, v18

    int-to-float v3, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v26, v0

    .line 153
    .local v26, "size":I
    sub-int v2, v26, v18

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 155
    const/16 v23, 0x0

    .line 156
    .local v23, "prevDx":F
    const/16 v24, 0x0

    .line 157
    .local v24, "prevDy":F
    const/4 v11, 0x0

    .line 158
    .local v11, "curDx":F
    const/4 v12, 0x0

    .line 160
    .local v12, "curDy":F
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/github/mikephil/charting/data/Entry;

    .line 161
    .local v25, "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/github/mikephil/charting/data/Entry;

    .line 162
    .local v22, "prev":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/Entry;

    .line 163
    .local v10, "cur":Lcom/github/mikephil/charting/data/Entry;
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/github/mikephil/charting/data/Entry;

    .line 166
    .local v19, "next":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    mul-float v4, v4, v21

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v23, v2, v15

    .line 169
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v24, v2, v15

    .line 171
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v15

    .line 172
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v15

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v23

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v24

    mul-float v4, v4, v21

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v21

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v21

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 179
    add-int/lit8 v16, v18, 0x1

    .local v16, "j":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v26

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .local v9, "count":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v9, :cond_1

    .line 181
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    check-cast v25, Lcom/github/mikephil/charting/data/Entry;

    .line 182
    .restart local v25    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    add-int/lit8 v2, v16, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "prev":Lcom/github/mikephil/charting/data/Entry;
    check-cast v22, Lcom/github/mikephil/charting/data/Entry;

    .line 183
    .restart local v22    # "prev":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    check-cast v10, Lcom/github/mikephil/charting/data/Entry;

    .line 184
    .restart local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "next":Lcom/github/mikephil/charting/data/Entry;
    check-cast v19, Lcom/github/mikephil/charting/data/Entry;

    .line 186
    .restart local v19    # "next":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v23, v2, v15

    .line 187
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v24, v2, v15

    .line 188
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v15

    .line 189
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v15

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v23

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v24

    mul-float v4, v4, v21

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v21

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v21

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 179
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 181
    :cond_0
    add-int/lit8 v2, v16, -0x2

    goto/16 :goto_1

    .line 196
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v26

    if-le v0, v2, :cond_2

    .line 198
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    :goto_2
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    check-cast v25, Lcom/github/mikephil/charting/data/Entry;

    .line 200
    .restart local v25    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "prev":Lcom/github/mikephil/charting/data/Entry;
    check-cast v22, Lcom/github/mikephil/charting/data/Entry;

    .line 201
    .restart local v22    # "prev":Lcom/github/mikephil/charting/data/Entry;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    check-cast v10, Lcom/github/mikephil/charting/data/Entry;

    .line 202
    .restart local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v19, v10

    .line 204
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v23, v2, v15

    .line 205
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v24, v2, v15

    .line 206
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v15

    .line 207
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v15

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v23

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v24

    mul-float v4, v4, v21

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v21

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v21

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 217
    .end local v9    # "count":I
    .end local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    .end local v11    # "curDx":F
    .end local v12    # "curDy":F
    .end local v16    # "j":I
    .end local v19    # "next":Lcom/github/mikephil/charting/data/Entry;
    .end local v22    # "prev":Lcom/github/mikephil/charting/data/Entry;
    .end local v23    # "prevDx":F
    .end local v24    # "prevDy":F
    .end local v25    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawFilledEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    add-int v7, v2, v26

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, v27

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicFill(Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;II)V

    .line 226
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 235
    return-void

    .line 198
    .restart local v9    # "count":I
    .restart local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    .restart local v11    # "curDx":F
    .restart local v12    # "curDy":F
    .restart local v16    # "j":I
    .restart local v19    # "next":Lcom/github/mikephil/charting/data/Entry;
    .restart local v22    # "prev":Lcom/github/mikephil/charting/data/Entry;
    .restart local v23    # "prevDx":F
    .restart local v24    # "prevDy":F
    .restart local v25    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_2
.end method

.method protected drawCubicFill(Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;II)V
    .locals 5
    .param p1, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .param p2, "spline"    # Landroid/graphics/Path;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p4, "from"    # I
    .param p5, "to"    # I

    .prologue
    .line 240
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getFillFormatter()Lcom/github/mikephil/charting/utils/FillFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getYChartMax()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getYChartMin()F

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/FillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/data/LineData;FF)F

    move-result v0

    .line 244
    .local v0, "fillMin":F
    add-int/lit8 v1, p5, -0x1

    int-to-float v1, v1

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    int-to-float v1, p4

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 248
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 254
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 255
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 258
    return-void
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 76
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v5

    float-to-int v4, v5

    .line 77
    .local v4, "width":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v5

    float-to-int v0, v5

    .line 79
    .local v0, "height":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 83
    :cond_0
    if-lez v4, :cond_4

    if-lez v0, :cond_4

    .line 85
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 86
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 91
    :cond_1
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 93
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    .line 95
    .local v2, "lineData":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 97
    .local v3, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    invoke-virtual {p0, p1, v3}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;)V

    goto :goto_0

    .line 101
    .end local v3    # "set":Lcom/github/mikephil/charting/data/LineDataSet;
    :cond_3
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lineData":Lcom/github/mikephil/charting/data/LineData;
    :cond_4
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;

    .prologue
    .line 106
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getYVals()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 115
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCubicEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubic(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V

    .line 124
    :goto_1
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V

    goto :goto_1
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCircles(Landroid/graphics/Canvas;)V

    .line 462
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 533
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p2

    if-ge v0, v6, :cond_2

    .line 535
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v6

    aget-object v7, p2, v0

    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 538
    .local v2, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->isHighlightEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 533
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_1
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getHighLightColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getHighlightLineWidth()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 544
    aget-object v6, p2, v0

    invoke-virtual {v6}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v3

    .line 547
    .local v3, "xIndex":I
    int-to-float v6, v3

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getXChartMax()F

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 550
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->getYValForXIndex(I)F

    move-result v5

    .line 551
    .local v5, "yVal":F
    const/high16 v6, 0x7fc00000    # NaNf

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_0

    .line 554
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    mul-float v4, v5, v6

    .line 558
    .local v4, "y":F
    const/16 v6, 0x8

    new-array v1, v6, [F

    const/4 v6, 0x0

    int-to-float v7, v3

    aput v7, v1, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getYChartMax()F

    move-result v7

    aput v7, v1, v6

    const/4 v6, 0x2

    int-to-float v7, v3

    aput v7, v1, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getYChartMin()F

    move-result v7

    aput v7, v1, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getXChartMin()F

    move-result v7

    aput v7, v1, v6

    const/4 v6, 0x5

    aput v4, v1, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getXChartMax()F

    move-result v7

    aput v7, v1, v6

    const/4 v6, 0x7

    aput v4, v1, v6

    .line 563
    .local v1, "pts":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 566
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->isHorizontalHighlightIndicatorEnabled()Z

    move-result v6

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->isVerticalHighlightIndicatorEnabled()Z

    move-result v7

    invoke-virtual {p0, p1, v1, v6, v7}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FZZ)V

    goto/16 :goto_1

    .line 568
    .end local v1    # "pts":[F
    .end local v2    # "set":Lcom/github/mikephil/charting/data/LineDataSet;
    .end local v3    # "xIndex":I
    .end local v4    # "y":F
    .end local v5    # "yVal":F
    :cond_2
    return-void
.end method

.method protected drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/LineData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v10

    .line 271
    .local v10, "dataSetIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    .line 273
    .local v8, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v15

    .line 274
    .local v15, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v16

    .line 276
    .local v16, "phaseY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    const/4 v1, 0x0

    .line 281
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDashedLineEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 287
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 288
    .local v11, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 290
    .local v12, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 291
    .local v14, "minx":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 293
    .local v7, "maxx":I
    sub-int v2, v7, v14

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v17, v2, -0x4

    .line 295
    .local v17, "range":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    aget-object v9, v2, v10

    .line 296
    .local v9, "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/github/mikephil/charting/buffer/LineBuffer;->setPhases(FF)V

    .line 297
    invoke-virtual {v9, v14}, Lcom/github/mikephil/charting/buffer/LineBuffer;->limitFrom(I)V

    .line 298
    invoke-virtual {v9, v7}, Lcom/github/mikephil/charting/buffer/LineBuffer;->limitTo(I)V

    .line 299
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/buffer/LineBuffer;->feed(Ljava/util/List;)V

    .line 301
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    invoke-virtual {v8, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 306
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    aget v3, v3, v13

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 336
    .end local v13    # "j":I
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawFilledEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v14

    .line 340
    invoke-virtual/range {v2 .. v8}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;IILcom/github/mikephil/charting/utils/Transformer;)V

    .line 342
    :cond_1
    return-void

    .line 284
    .end local v7    # "maxx":I
    .end local v9    # "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    .end local v11    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v12    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v14    # "minx":I
    .end local v17    # "range":I
    :cond_2
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 313
    .restart local v7    # "maxx":I
    .restart local v9    # "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    .restart local v11    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v12    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .restart local v13    # "j":I
    .restart local v14    # "minx":I
    .restart local v17    # "range":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v4, v13, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v4, v13, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v4, v13, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v4, v13, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v4, v13, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-nez v2, :cond_6

    .line 306
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x4

    goto/16 :goto_1

    .line 321
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v3, v13, 0x4

    add-int/2addr v3, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    aget v2, v2, v13

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v4, v13, 0x1

    aget v3, v3, v4

    iget-object v4, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v13, 0x2

    aget v4, v4, v5

    iget-object v5, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v6, v13, 0x3

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 329
    .end local v13    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;IILcom/github/mikephil/charting/utils/Transformer;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .param p4, "minx"    # I
    .param p5, "maxx"    # I
    .param p6, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;II",
            "Lcom/github/mikephil/charting/utils/Transformer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 348
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 354
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getFillFormatter()Lcom/github/mikephil/charting/utils/FillFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getYChartMax()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getYChartMin()F

    move-result v4

    invoke-interface {v1, p2, v2, v3, v4}, Lcom/github/mikephil/charting/utils/FillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/data/LineData;FF)F

    move-result v1

    invoke-direct {p0, p3, v1, p4, p5}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->generateFilledPath(Ljava/util/List;FII)Landroid/graphics/Path;

    move-result-object v0

    .line 359
    .local v0, "filled":Landroid/graphics/Path;
    invoke-virtual {p6, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 361
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 364
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 365
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/LineData;->getYValCount()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getMaxVisibleCount()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v20

    mul-float v6, v6, v20

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v10

    .line 409
    .local v10, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ge v13, v5, :cond_5

    .line 411
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 413
    .local v9, "dataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawValuesEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 417
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    .line 422
    .local v3, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v5

    const/high16 v6, 0x3fe00000    # 1.75f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v17, v0

    .line 424
    .local v17, "valOffset":I
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCirclesEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 425
    div-int/lit8 v17, v17, 0x2

    .line 427
    :cond_2
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getYVals()Ljava/util/List;

    move-result-object v4

    .line 429
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 430
    .local v11, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 432
    .local v12, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v9, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 433
    .local v7, "minx":I
    invoke-virtual {v9, v12}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 435
    .local v8, "maxx":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    invoke-virtual/range {v3 .. v8}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesLine(Ljava/util/List;FFII)[F

    move-result-object v15

    .line 438
    .local v15, "positions":[F
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    array-length v5, v15

    if-ge v14, v5, :cond_0

    .line 440
    aget v18, v15, v14

    .line 441
    .local v18, "x":F
    add-int/lit8 v5, v14, 0x1

    aget v19, v15, v5

    .line 443
    .local v19, "y":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v5

    if-nez v5, :cond_4

    .line 438
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_1

    .line 449
    :cond_4
    div-int/lit8 v5, v14, 0x2

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v16

    .line 451
    .local v16, "val":F
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v5

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v17

    int-to-float v6, v0

    sub-float v6, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v5, v1, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 457
    .end local v3    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v7    # "minx":I
    .end local v8    # "maxx":I
    .end local v9    # "dataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    .end local v10    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    .end local v11    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v12    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v15    # "positions":[F
    .end local v16    # "val":F
    .end local v17    # "valOffset":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    :cond_5
    return-void
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 62
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    .line 63
    .local v1, "lineData":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/LineBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    .line 64
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CircleBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 67
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 68
    .local v2, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/LineBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, -0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/LineBuffer;-><init>(I)V

    aput-object v4, v3, v0

    .line 69
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CircleBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CircleBuffer;-><init>(I)V

    aput-object v4, v3, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "set":Lcom/github/mikephil/charting/data/LineDataSet;
    :cond_0
    return-void
.end method
