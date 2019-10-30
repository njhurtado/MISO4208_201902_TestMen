.class public Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;
.super Lcom/github/mikephil/charting/listener/ChartTouchListener;
.source "BarLineChartTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/listener/ChartTouchListener",
        "<",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<+",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleData",
        "<+",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field private mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/DataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;"
        }
    .end annotation
.end field

.field private mDecelerationCurrentPoint:Landroid/graphics/PointF;

.field private mDecelerationLastTime:J

.field private mDecelerationVelocity:Landroid/graphics/PointF;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mSavedDist:F

.field private mSavedMatrix:Landroid/graphics/Matrix;

.field private mSavedXDist:F

.field private mSavedYDist:F

.field private mTouchPointCenter:Landroid/graphics/PointF;

.field private mTouchStartPoint:Landroid/graphics/PointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;)V
    .locals 2
    .param p2, "touchMatrix"    # Landroid/graphics/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarLineChartBase",
            "<+",
            "Lcom/github/mikephil/charting/data/BarLineScatterCandleData",
            "<+",
            "Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;>;>;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "chart":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<+Lcom/github/mikephil/charting/data/BarLineScatterCandleData<+Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet<+Lcom/github/mikephil/charting/data/Entry;>;>;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Landroid/graphics/PointF;

    .line 43
    iput v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    .line 44
    iput v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    .line 45
    iput v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    .line 58
    iput-object p2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    .line 59
    return-void
.end method

.method private static getXDist(Landroid/view/MotionEvent;)F
    .locals 3
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 430
    .local v0, "x":F
    return v0
.end method

.method private static getYDist(Landroid/view/MotionEvent;)F
    .locals 3
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 441
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 442
    .local v0, "y":F
    return v0
.end method

.method private static midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .param p0, "point"    # Landroid/graphics/PointF;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 404
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 405
    .local v0, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 406
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 407
    return-void
.end method

.method private performDrag(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v2

    .line 256
    .local v2, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isAnyAxisInverted()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    instance-of v3, v3, Lcom/github/mikephil/charting/charts/HorizontalBarChart;

    if-eqz v3, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    neg-float v0, v3

    .line 262
    .local v0, "dX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 273
    .local v1, "dY":F
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 275
    if-eqz v2, :cond_0

    .line 276
    invoke-interface {v2, p1, v0, v1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartTranslate(Landroid/view/MotionEvent;FF)V

    .line 277
    :cond_0
    return-void

    .line 264
    .end local v0    # "dX":F
    .end local v1    # "dY":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v4

    .line 265
    .restart local v0    # "dX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    neg-float v1, v3

    .restart local v1    # "dY":F
    goto :goto_0

    .line 269
    .end local v0    # "dX":F
    .end local v1    # "dY":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v4

    .line 270
    .restart local v0    # "dX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .restart local v1    # "dY":F
    goto :goto_0
.end method

.method private performHighlight(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 365
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    .line 367
    .local v0, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;->equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightTouch(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 369
    iput-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_1
    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    .line 372
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightTouch(Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_0
.end method

.method private performHighlightDrag(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    .line 385
    .local v0, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;->equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    .line 387
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightTouch(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 389
    :cond_0
    return-void
.end method

.method private performZoom(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1

    .line 288
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v2

    .line 292
    .local v2, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    invoke-static {p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v7

    .line 294
    .local v7, "totalDist":F
    const/high16 v10, 0x41200000    # 10.0f

    cmpl-float v10, v7, v10

    if-lez v10, :cond_1

    .line 297
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v10, v11}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getTrans(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 301
    .local v6, "t":Landroid/graphics/PointF;
    iget v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6

    .line 303
    iget v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    div-float v3, v7, v10

    .line 305
    .local v3, "scale":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v3, v10

    if-gez v10, :cond_2

    const/4 v1, 0x1

    .line 306
    .local v1, "isZoomingOut":Z
    :goto_0
    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomOutMoreX()Z

    move-result v0

    .line 310
    .local v0, "canZoomMoreX":Z
    :goto_1
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    move v4, v3

    .line 311
    .local v4, "scaleX":F
    :goto_2
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    move v5, v3

    .line 313
    .local v5, "scaleY":F
    :goto_3
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 316
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v12, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v4, v5, v11, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 318
    if-eqz v2, :cond_1

    .line 319
    invoke-interface {v2, p1, v4, v5}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartScale(Landroid/view/MotionEvent;FF)V

    .line 356
    .end local v0    # "canZoomMoreX":Z
    .end local v1    # "isZoomingOut":Z
    .end local v2    # "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .end local v3    # "scale":F
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    .end local v6    # "t":Landroid/graphics/PointF;
    .end local v7    # "totalDist":F
    :cond_1
    :goto_4
    return-void

    .line 305
    .restart local v2    # "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .restart local v3    # "scale":F
    .restart local v6    # "t":Landroid/graphics/PointF;
    .restart local v7    # "totalDist":F
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 306
    .restart local v1    # "isZoomingOut":Z
    :cond_3
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomInMoreX()Z

    move-result v0

    goto :goto_1

    .line 310
    .restart local v0    # "canZoomMoreX":Z
    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    .line 311
    .restart local v4    # "scaleX":F
    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    .line 322
    .end local v0    # "canZoomMoreX":Z
    .end local v1    # "isZoomingOut":Z
    .end local v3    # "scale":F
    .end local v4    # "scaleX":F
    :cond_6
    iget v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 324
    invoke-static {p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getXDist(Landroid/view/MotionEvent;)F

    move-result v8

    .line 325
    .local v8, "xDist":F
    iget v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    div-float v4, v8, v10

    .line 327
    .restart local v4    # "scaleX":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v4, v10

    if-gez v10, :cond_7

    const/4 v1, 0x1

    .line 328
    .restart local v1    # "isZoomingOut":Z
    :goto_5
    if-eqz v1, :cond_8

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomOutMoreX()Z

    move-result v0

    .line 332
    .restart local v0    # "canZoomMoreX":Z
    :goto_6
    if-eqz v0, :cond_1

    .line 334
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 335
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, v6, Landroid/graphics/PointF;->x:F

    iget v13, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v4, v11, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 337
    if-eqz v2, :cond_1

    .line 338
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v2, p1, v4, v10}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartScale(Landroid/view/MotionEvent;FF)V

    goto :goto_4

    .line 327
    .end local v0    # "canZoomMoreX":Z
    .end local v1    # "isZoomingOut":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 328
    .restart local v1    # "isZoomingOut":Z
    :cond_8
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomInMoreX()Z

    move-result v0

    goto :goto_6

    .line 341
    .end local v1    # "isZoomingOut":Z
    .end local v4    # "scaleX":F
    .end local v8    # "xDist":F
    :cond_9
    iget v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v10, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 343
    invoke-static {p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getYDist(Landroid/view/MotionEvent;)F

    move-result v9

    .line 344
    .local v9, "yDist":F
    iget v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    div-float v5, v9, v10

    .line 346
    .restart local v5    # "scaleY":F
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 349
    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, v6, Landroid/graphics/PointF;->x:F

    iget v13, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v5, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 351
    if-eqz v2, :cond_1

    .line 352
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v2, p1, v10, v5}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartScale(Landroid/view/MotionEvent;FF)V

    goto/16 :goto_4
.end method

.method private saveTouchStart(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 237
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 239
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getDataSetByTouchPoint(FF)Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/DataSet;

    .line 240
    return-void
.end method

.method private static spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 416
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 417
    .local v0, "x":F
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 418
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    .line 558
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 592
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 563
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getDragDecelerationFrictionCoef()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 564
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getDragDecelerationFrictionCoef()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 566
    iget-wide v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v11, v2, v3

    .line 568
    .local v11, "timeInterval":F
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v8, v2, v11

    .line 569
    .local v8, "distanceX":F
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v9, v2, v11

    .line 571
    .local v9, "distanceY":F
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v8

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 572
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v9

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 574
    const/4 v4, 0x2

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->y:F

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 575
    .local v10, "event":Landroid/view/MotionEvent;
    invoke-direct {p0, v10}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performDrag(Landroid/view/MotionEvent;)V

    .line 576
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 577
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v2, v3, v4, v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    .line 579
    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    .line 581
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_2

    .line 582
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 587
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 588
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 590
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->stopDeceleration()V

    goto/16 :goto_0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTrans(FF)Landroid/graphics/PointF;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 455
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v0

    .line 457
    .local v0, "vph":Lcom/github/mikephil/charting/utils/ViewPortHandler;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v3

    sub-float v1, p1, v3

    .line 458
    .local v1, "xTrans":F
    const/4 v2, 0x0

    .line 461
    .local v2, "yTrans":F
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isAnyAxisInverted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v3

    sub-float v3, p2, v3

    neg-float v2, v3

    .line 468
    :goto_0
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v4

    sub-float/2addr v3, v4

    neg-float v2, v3

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x3fb33333    # 1.4f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 488
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 490
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartDoubleTapped(Landroid/view/MotionEvent;)V

    .line 492
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 507
    :goto_0
    return v2

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDoubleTapToZoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getTrans(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 500
    .local v1, "trans":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v5

    :goto_1
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->zoom(FFFF)V

    .line 502
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    const-string v2, "BarlineChartTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Double-Tap, Zooming In, x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v1    # "trans":Landroid/graphics/PointF;
    :cond_1
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .restart local v1    # "trans":Landroid/graphics/PointF;
    :cond_2
    move v4, v6

    .line 500
    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 544
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 546
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 549
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 513
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 515
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 517
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartLongPressed(Landroid/view/MotionEvent;)V

    .line 519
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 532
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 534
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartSingleTapped(Landroid/view/MotionEvent;)V

    .line 538
    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performHighlight(Landroid/view/MotionEvent;)V

    .line 526
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 65
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 66
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 68
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 71
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 73
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 77
    :cond_1
    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-nez v4, :cond_2

    .line 78
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 221
    :goto_0
    return v8

    .line 85
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 219
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v4, v5, v6, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->stopDeceleration()V

    .line 91
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->saveTouchStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 96
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-lt v4, v7, :cond_4

    .line 98
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->disableScroll()V

    .line 100
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->saveTouchStart(Landroid/view/MotionEvent;)V

    .line 103
    invoke-static {p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getXDist(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    .line 106
    invoke-static {p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getYDist(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    .line 109
    invoke-static {p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    .line 111
    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 113
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isPinchZoomEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    iput v11, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    .line 124
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Landroid/graphics/PointF;

    invoke-static {v4, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 116
    :cond_6
    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    iget v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 117
    iput v7, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto :goto_2

    .line 119
    :cond_7
    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto :goto_2

    .line 129
    :pswitch_3
    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-ne v4, v8, :cond_8

    .line 131
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->disableScroll()V

    .line 132
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 134
    :cond_8
    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-eq v4, v7, :cond_9

    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-eq v4, v9, :cond_9

    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-ne v4, v11, :cond_b

    .line 136
    :cond_9
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->disableScroll()V

    .line 138
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 139
    :cond_a
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performZoom(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 141
    :cond_b
    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-nez v4, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5, v6, v7}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->distance(FFFF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 145
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->hasNoDragOffset()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 147
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isFullyZoomedOut()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 148
    iput v8, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto/16 :goto_1

    .line 150
    :cond_c
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isHighlightPerDragEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performHighlightDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 154
    :cond_d
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    iput v8, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto/16 :goto_1

    .line 162
    :pswitch_4
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 163
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 164
    .local v0, "pointerId":I
    const/16 v4, 0x3e8

    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getMaximumFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 166
    .local v3, "velocityY":F
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 168
    .local v2, "velocityX":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getMinimumFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_e

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getMinimumFlingVelocity()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 171
    :cond_e
    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-ne v4, v8, :cond_f

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragDecelerationEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 173
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->stopDeceleration()V

    .line 175
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    .line 176
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Landroid/graphics/PointF;

    .line 177
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    .line 179
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 183
    :cond_f
    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-eq v4, v7, :cond_10

    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-eq v4, v9, :cond_10

    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-eq v4, v11, :cond_10

    iget v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_11

    .line 191
    :cond_10
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 192
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 195
    :cond_11
    iput v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    .line 196
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->enableScroll()V

    .line 198
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_4

    .line 199
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 200
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 205
    .end local v0    # "pointerId":I
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v2    # "velocityX":F
    .end local v3    # "velocityY":F
    :pswitch_5
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {p2, v4}, Lcom/github/mikephil/charting/utils/Utils;->velocityTrackerPointerUpCleanUpIfNecessary(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V

    .line 207
    const/4 v4, 0x5

    iput v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto/16 :goto_1

    .line 212
    :pswitch_6
    iput v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto/16 :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public stopDeceleration()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Landroid/graphics/PointF;

    .line 554
    return-void
.end method
