.class public Lcom/github/mikephil/charting/utils/ViewPortHandler;
.super Ljava/lang/Object;
.source "ViewPortHandler.java"


# instance fields
.field protected mChartHeight:F

.field protected mChartWidth:F

.field protected mContentRect:Landroid/graphics/RectF;

.field protected final mMatrixTouch:Landroid/graphics/Matrix;

.field private mMaxScaleX:F

.field private mMinScaleX:F

.field private mMinScaleY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransOffsetX:F

.field private mTransOffsetY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    .line 17
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    .line 18
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    .line 21
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 24
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 27
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 30
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    .line 33
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    .line 36
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    .line 39
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    .line 43
    return-void
.end method


# virtual methods
.method public canZoomInMoreX()Z
    .locals 2

    .prologue
    .line 494
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomOutMoreX()Z
    .locals 2

    .prologue
    .line 490
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized centerViewPort([FLandroid/view/View;)V
    .locals 5
    .param p1, "transformedPts"    # [F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 232
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 234
    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v4

    sub-float v1, v3, v4

    .line 235
    .local v1, "x":F
    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v4

    sub-float v2, v3, v4

    .line 239
    .local v2, "y":F
    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 241
    const/4 v3, 0x1

    invoke-virtual {p0, v0, p2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 231
    .end local v0    # "save":Landroid/graphics/Matrix;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public contentBottom()F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public contentHeight()F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public contentLeft()F
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public contentRight()F
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public contentTop()F
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public contentWidth()F
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public fitScreen()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 198
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 199
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 201
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 202
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 204
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 206
    .local v1, "vals":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 209
    const/4 v2, 0x2

    aput v4, v1, v2

    .line 210
    const/4 v2, 0x5

    aput v4, v1, v2

    .line 211
    const/4 v2, 0x0

    aput v3, v1, v2

    .line 212
    const/4 v2, 0x4

    aput v3, v1, v2

    .line 214
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 216
    return-object v0
.end method

.method public getChartHeight()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    return v0
.end method

.method public getChartWidth()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    return v0
.end method

.method public getContentCenter()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getMatrixTouch()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    return v0
.end method

.method public hasChartDimens()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoDragOffset()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 486
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyZoomedOut()Z
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyZoomedOutX()Z
    .locals 2

    .prologue
    .line 454
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 455
    :cond_0
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFullyZoomedOutY()Z
    .locals 2

    .prologue
    .line 441
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 442
    :cond_0
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInBounds(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsBottom(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 404
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 405
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsLeft(F)Z
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 391
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsRight(F)Z
    .locals 2
    .param p1, "x"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 395
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 396
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsTop(F)Z
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 400
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsX(F)Z
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x1

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsY(F)Z
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 14
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "content"    # Landroid/graphics/RectF;

    .prologue
    .line 271
    const/16 v11, 0x9

    new-array v9, v11, [F

    .line 272
    .local v9, "vals":[F
    invoke-virtual {p1, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 274
    const/4 v11, 0x2

    aget v2, v9, v11

    .line 275
    .local v2, "curTransX":F
    const/4 v11, 0x0

    aget v0, v9, v11

    .line 277
    .local v0, "curScaleX":F
    const/4 v11, 0x5

    aget v3, v9, v11

    .line 278
    .local v3, "curTransY":F
    const/4 v11, 0x4

    aget v1, v9, v11

    .line 281
    .local v1, "curScaleY":F
    iget v11, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iget v12, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iput v11, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    .line 284
    iget v11, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    .line 286
    const/4 v10, 0x0

    .line 287
    .local v10, "width":F
    const/4 v4, 0x0

    .line 289
    .local v4, "height":F
    if-eqz p2, :cond_0

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 294
    :cond_0
    neg-float v11, v10

    iget v12, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    mul-float v5, v11, v12

    .line 295
    .local v5, "maxTransX":F
    iget v11, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    sub-float v11, v5, v11

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iget v12, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 301
    .local v7, "newTransX":F
    iget v11, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    mul-float v6, v4, v11

    .line 302
    .local v6, "maxTransY":F
    iget v11, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    add-float/2addr v11, v6

    invoke-static {v3, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    neg-float v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 308
    .local v8, "newTransY":F
    const/4 v11, 0x2

    aput v7, v9, v11

    .line 309
    const/4 v11, 0x0

    iget v12, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    aput v12, v9, v11

    .line 311
    const/4 v11, 0x5

    aput v8, v9, v11

    .line 312
    const/4 v11, 0x4

    iget v12, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    aput v12, v9, v11

    .line 314
    invoke-virtual {p1, v9}, Landroid/graphics/Matrix;->setValues([F)V

    .line 315
    return-void
.end method

.method public offsetBottom()F
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public offsetLeft()F
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public offsetRight()F
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public offsetTop()F
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "newMatrix"    # Landroid/graphics/Matrix;
    .param p2, "chart"    # Landroid/view/View;
    .param p3, "invalidate"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 255
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 257
    if-eqz p3, :cond_0

    .line 258
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 261
    return-object p1
.end method

.method public restrainViewPort(FFFF)V
    .locals 3
    .param p1, "offsetLeft"    # F
    .param p2, "offsetTop"    # F
    .param p3, "offsetRight"    # F
    .param p4, "offsetBottom"    # F

    .prologue
    .line 75
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    sub-float/2addr v1, p3

    iget v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    sub-float/2addr v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    return-void
.end method

.method public setChartDimens(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v1

    .line 55
    .local v1, "offsetLeft":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v3

    .line 56
    .local v3, "offsetTop":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v2

    .line 57
    .local v2, "offsetRight":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v0

    .line 59
    .local v0, "offsetBottom":F
    iput p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    .line 60
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    .line 62
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 64
    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 467
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    .line 468
    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 477
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    .line 478
    return-void
.end method

.method public setMaximumScaleX(F)V
    .locals 2
    .param p1, "xScale"    # F

    .prologue
    .line 329
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 331
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 332
    return-void
.end method

.method public setMinMaxScaleX(FF)V
    .locals 2
    .param p1, "minScaleX"    # F
    .param p2, "maxScaleX"    # F

    .prologue
    .line 336
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 337
    const/high16 p1, 0x3f800000    # 1.0f

    .line 339
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 340
    iput p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 342
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 343
    return-void
.end method

.method public setMinimumScaleX(F)V
    .locals 2
    .param p1, "xScale"    # F

    .prologue
    .line 319
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 320
    const/high16 p1, 0x3f800000    # 1.0f

    .line 322
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 324
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 325
    return-void
.end method

.method public setMinimumScaleY(F)V
    .locals 2
    .param p1, "yScale"    # F

    .prologue
    .line 347
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 348
    const/high16 p1, 0x3f800000    # 1.0f

    .line 350
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 352
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 353
    return-void
.end method

.method public zoom(FFFF)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 182
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 183
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 187
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 189
    return-object v0
.end method

.method public zoomIn(FF)Landroid/graphics/Matrix;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const v2, 0x3fb33333    # 1.4f

    .line 149
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 150
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 152
    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 154
    return-object v0
.end method

.method public zoomOut(FF)Landroid/graphics/Matrix;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const v2, 0x3f333333    # 0.7f

    .line 163
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 164
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 166
    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 168
    return-object v0
.end method
