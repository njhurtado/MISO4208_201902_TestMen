.class public Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "PieChartRenderer.java"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextLastBounds:Landroid/graphics/RectF;

.field private mCenterTextLastValue:Ljava/lang/String;

.field private mCenterTextLayout:Landroid/text/StaticLayout;

.field private mCenterTextPaint:Landroid/text/TextPaint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Landroid/graphics/Bitmap;

.field protected mHolePaint:Landroid/graphics/Paint;

.field private mRectBuffer:[Landroid/graphics/RectF;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 5
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/PieChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 57
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 69
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 71
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected drawCenterText(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "centerText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v14

    .line 294
    .local v14, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isCenterTextWordWrapEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isHoleTransparent()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float v20, v2, v4

    .line 298
    .local v20, "innerRadius":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v17, v2, v4

    .line 299
    .local v17, "holeRect":Landroid/graphics/RectF;
    iget v2, v14, Landroid/graphics/PointF;->x:F

    sub-float v2, v2, v20

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 300
    iget v2, v14, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v20

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 301
    iget v2, v14, Landroid/graphics/PointF;->x:F

    add-float v2, v2, v20

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 302
    iget v2, v14, Landroid/graphics/PointF;->y:F

    add-float v2, v2, v20

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v13, v2, v4

    .line 304
    .local v13, "boundingRect":Landroid/graphics/RectF;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v27

    .line 307
    .local v27, "radiusPercent":F
    move/from16 v0, v27

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    .line 308
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v27

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v27

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v13, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 312
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 315
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 316
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/String;

    .line 319
    new-instance v2, Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v7, v8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 329
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v21, v0

    .line 331
    .local v21, "layoutHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 332
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v4, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v5, v21

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 370
    .end local v13    # "boundingRect":Landroid/graphics/RectF;
    .end local v14    # "center":Landroid/graphics/PointF;
    .end local v17    # "holeRect":Landroid/graphics/RectF;
    .end local v20    # "innerRadius":F
    .end local v21    # "layoutHeight":F
    .end local v27    # "radiusPercent":F
    :cond_3
    return-void

    .line 296
    .restart local v14    # "center":Landroid/graphics/PointF;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v20

    goto/16 :goto_0

    .line 339
    :cond_5
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 341
    .local v24, "lines":[Ljava/lang/String;
    const/16 v26, 0x0

    .line 344
    .local v26, "maxlineheight":F
    move-object/from16 v12, v24

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v23, v12, v19

    .line 345
    .local v23, "line":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 346
    .local v16, "curHeight":F
    cmpl-float v2, v16, v26

    if-lez v2, :cond_6

    .line 347
    move/from16 v26, v16

    .line 344
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 350
    .end local v16    # "curHeight":F
    .end local v23    # "line":Ljava/lang/String;
    :cond_7
    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v25, v26, v2

    .line 352
    .local v25, "linespacing":F
    move-object/from16 v0, v24

    array-length v2, v0

    int-to-float v2, v2

    mul-float v2, v2, v26

    move-object/from16 v0, v24

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float v4, v4, v25

    sub-float v28, v2, v4

    .line 354
    .local v28, "totalheight":F
    move-object/from16 v0, v24

    array-length v15, v0

    .line 356
    .local v15, "cnt":I
    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    .line 358
    .local v29, "y":F
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    .line 360
    move-object/from16 v0, v24

    array-length v2, v0

    sub-int v2, v2, v18

    add-int/lit8 v2, v2, -0x1

    aget-object v23, v24, v2

    .line 362
    .restart local v23    # "line":Ljava/lang/String;
    iget v2, v14, Landroid/graphics/PointF;->x:F

    int-to-float v4, v15

    mul-float v4, v4, v26

    add-float v4, v4, v29

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v28, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 365
    add-int/lit8 v15, v15, -0x1

    .line 366
    sub-float v29, v29, v25

    .line 358
    add-int/lit8 v18, v18, 0x1

    goto :goto_2
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v5

    float-to-int v4, v5

    .line 100
    .local v4, "width":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v5

    float-to-int v0, v5

    .line 102
    .local v0, "height":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 106
    :cond_0
    if-lez v4, :cond_3

    if-lez v0, :cond_3

    .line 108
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 109
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 116
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    .line 118
    .local v2, "pieData":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

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

    check-cast v3, Lcom/github/mikephil/charting/data/PieDataSet;

    .line 120
    .local v3, "set":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/PieDataSet;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    invoke-virtual {p0, p1, v3}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/PieDataSet;)V

    goto :goto_0

    .line 123
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pieData":Lcom/github/mikephil/charting/data/PieData;
    .end local v3    # "set":Lcom/github/mikephil/charting/data/PieDataSet;
    :cond_3
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/PieDataSet;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/PieDataSet;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v6

    .line 129
    .local v6, "angle":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v9

    .line 130
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v7

    .line 132
    .local v7, "drawAngles":[F
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 134
    aget v11, v7, v10

    .line 135
    .local v11, "newangle":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/PieDataSet;->getSliceSpace()F

    move-result v12

    .line 137
    .local v12, "sliceSpace":F
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/Entry;

    .line 140
    .local v8, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/PieData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v10}, Lcom/github/mikephil/charting/data/PieDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v12, v2

    add-float/2addr v2, v6

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    sub-float v3, v11, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v0

    mul-float/2addr v0, v11

    add-float/2addr v6, v0

    .line 132
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 155
    .end local v8    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v11    # "newangle":F
    .end local v12    # "sliceSpace":F
    :cond_1
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawHole(Landroid/graphics/Canvas;)V

    .line 243
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawCenterText(Landroid/graphics/Canvas;)V

    .line 245
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v12

    .line 376
    .local v12, "rotationAngle":F
    const/4 v8, 0x0

    .line 378
    .local v8, "angle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v10

    .line 379
    .local v10, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v7

    .line 381
    .local v7, "absoluteAngles":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v11, v1, :cond_3

    .line 384
    aget-object v1, p2, v11

    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v16

    .line 385
    .local v16, "xIndex":I
    array-length v1, v10

    move/from16 v0, v16

    if-lt v0, v1, :cond_1

    .line 381
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 388
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    aget-object v3, p2, v11

    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v13

    .line 392
    .local v13, "set":Lcom/github/mikephil/charting/data/PieDataSet;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/PieDataSet;->isHighlightEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    if-nez v16, :cond_2

    .line 396
    move v8, v12

    .line 400
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    mul-float/2addr v8, v1

    .line 402
    aget v15, v10, v16

    .line 404
    .local v15, "sliceDegrees":F
    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/PieDataSet;->getSelectionShift()F

    move-result v14

    .line 405
    .local v14, "shift":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v9

    .line 413
    .local v9, "circleBox":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v14

    iget v3, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v14

    iget v4, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v14

    iget v5, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v14

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 418
    .local v2, "highlighted":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/PieDataSet;->getSliceSpace()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    mul-float/2addr v4, v15

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/PieDataSet;->getSliceSpace()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 398
    .end local v2    # "highlighted":Landroid/graphics/RectF;
    .end local v9    # "circleBox":Landroid/graphics/RectF;
    .end local v14    # "shift":F
    .end local v15    # "sliceDegrees":F
    :cond_2
    add-int/lit8 v1, v16, -0x1

    aget v1, v7, v1

    add-float v8, v12, v1

    goto :goto_2

    .line 426
    .end local v13    # "set":Lcom/github/mikephil/charting/data/PieDataSet;
    .end local v16    # "xIndex":I
    :cond_3
    return-void
.end method

.method protected drawHole(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 253
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v3

    .line 256
    .local v3, "transparentCircleRadius":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v1

    .line 257
    .local v1, "holeRadius":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v2

    .line 259
    .local v2, "radius":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v0

    .line 261
    .local v0, "center":Landroid/graphics/PointF;
    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    div-float v7, v2, v9

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    div-float v7, v2, v9

    mul-float/2addr v7, v1

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 280
    .end local v0    # "center":Landroid/graphics/PointF;
    .end local v1    # "holeRadius":F
    .end local v2    # "radius":F
    .end local v3    # "transparentCircleRadius":F
    :cond_1
    return-void
.end method

.method protected drawRoundedSlices(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v14

    if-nez v14, :cond_1

    .line 475
    :cond_0
    return-void

    .line 438
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/data/PieDataSet;

    move-result-object v5

    .line 440
    .local v5, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieDataSet;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v3

    .line 444
    .local v3, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v11

    .line 447
    .local v11, "r":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v14

    mul-float/2addr v14, v11

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    sub-float v14, v11, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    .line 449
    .local v4, "circleRadius":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v8

    .line 450
    .local v8, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v6

    .line 451
    .local v6, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v2

    .line 453
    .local v2, "angle":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_0

    .line 455
    aget v10, v6, v9

    .line 457
    .local v10, "newangle":F
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/Entry;

    .line 460
    .local v7, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 462
    sub-float v14, v11, v4

    float-to-double v14, v14

    add-float v16, v2, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    iget v0, v3, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v12, v14

    .line 465
    .local v12, "x":F
    sub-float v14, v11, v4

    float-to-double v14, v14

    add-float v16, v2, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    iget v0, v3, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    .line 469
    .local v13, "y":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Lcom/github/mikephil/charting/data/PieDataSet;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v12, v13, v4, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 473
    .end local v12    # "x":F
    .end local v13    # "y":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v14

    mul-float/2addr v14, v10

    add-float/2addr v2, v14

    .line 453
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 32
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v7

    .line 163
    .local v7, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v22

    .line 164
    .local v22, "r":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v23

    .line 165
    .local v23, "rotationAngle":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v12

    .line 166
    .local v12, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v6

    .line 168
    .local v6, "absoluteAngles":[F
    const/high16 v28, 0x41200000    # 10.0f

    div-float v28, v22, v28

    const v29, 0x40666666    # 3.6f

    mul-float v20, v28, v29

    .line 170
    .local v20, "off":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 171
    const/high16 v28, 0x42c80000    # 100.0f

    div-float v28, v22, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v29

    mul-float v28, v28, v29

    sub-float v28, v22, v28

    const/high16 v29, 0x40000000    # 2.0f

    div-float v20, v28, v29

    .line 174
    :cond_0
    sub-float v22, v22, v20

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/PieData;

    .line 177
    .local v9, "data":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v11

    .line 178
    .local v11, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieDataSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSliceTextEnabled()Z

    move-result v13

    .line 180
    .local v13, "drawXVals":Z
    const/4 v8, 0x0

    .line 182
    .local v8, "cnt":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 184
    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/PieDataSet;

    .line 186
    .local v10, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->isDrawValuesEnabled()Z

    move-result v28

    if-nez v28, :cond_2

    if-nez v13, :cond_2

    .line 182
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 190
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 192
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->getYVals()Ljava/util/List;

    move-result-object v15

    .line 194
    .local v15, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/16 v17, 0x0

    .local v17, "j":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v29

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v29

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 195
    .local v19, "maxEntry":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 198
    aget v28, v12, v8

    const/high16 v29, 0x40000000    # 2.0f

    div-float v21, v28, v29

    .line 201
    .local v21, "offset":F
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v28, v0

    aget v30, v6, v8

    add-float v30, v30, v23

    sub-float v30, v30, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v31

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    iget v0, v7, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v26, v0

    .line 204
    .local v26, "x":F
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v28, v0

    aget v30, v6, v8

    add-float v30, v30, v23

    sub-float v30, v30, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v31

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    .line 208
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v28

    if-eqz v28, :cond_4

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/charts/PieChart;->getYValueSum()F

    move-result v29

    div-float v28, v28, v29

    const/high16 v29, 0x42c80000    # 100.0f

    mul-float v25, v28, v29

    .line 211
    .local v25, "value":F
    :goto_2
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/utils/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v24

    .line 213
    .local v24, "val":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40800000    # 4.0f

    invoke-static/range {v29 .. v29}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v29

    add-float v18, v28, v29

    .line 216
    .local v18, "lineHeight":F
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieDataSet;->isDrawValuesEnabled()Z

    move-result v14

    .line 219
    .local v14, "drawYVals":Z
    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 222
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getXValCount()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 223
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    add-float v29, v27, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 234
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 195
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 208
    .end local v14    # "drawYVals":Z
    .end local v18    # "lineHeight":F
    .end local v24    # "val":Ljava/lang/String;
    .end local v25    # "value":F
    :cond_4
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v25

    goto/16 :goto_2

    .line 226
    .restart local v14    # "drawYVals":Z
    .restart local v18    # "lineHeight":F
    .restart local v24    # "val":Ljava/lang/String;
    .restart local v25    # "value":F
    :cond_5
    if-eqz v13, :cond_6

    if-nez v14, :cond_6

    .line 227
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getXValCount()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 228
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const/high16 v29, 0x40000000    # 2.0f

    div-float v29, v18, v29

    add-float v29, v29, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 229
    :cond_6
    if-nez v13, :cond_3

    if-eqz v14, :cond_3

    .line 231
    const/high16 v28, 0x40000000    # 2.0f

    div-float v28, v18, v28

    add-float v28, v28, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 237
    .end local v10    # "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    .end local v14    # "drawYVals":Z
    .end local v15    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v17    # "j":I
    .end local v18    # "lineHeight":F
    .end local v19    # "maxEntry":I
    .end local v21    # "offset":F
    .end local v24    # "val":Ljava/lang/String;
    .end local v25    # "value":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_7
    return-void
.end method

.method public getPaintCenterText()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintHole()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
