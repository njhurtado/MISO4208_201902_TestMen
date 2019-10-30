.class public abstract Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "LineScatterCandleRadarRenderer.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .param p1, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p2, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected drawHighlightLines(Landroid/graphics/Canvas;[FZZ)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pts"    # [F
    .param p3, "horizontal"    # Z
    .param p4, "vertical"    # Z

    .prologue
    .line 27
    if-eqz p4, :cond_0

    .line 28
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v0, 0x1

    aget v2, p2, v0

    const/4 v0, 0x2

    aget v3, p2, v0

    const/4 v0, 0x3

    aget v4, p2, v0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 31
    :cond_0
    if-eqz p3, :cond_1

    .line 32
    const/4 v0, 0x4

    aget v1, p2, v0

    const/4 v0, 0x5

    aget v2, p2, v0

    const/4 v0, 0x6

    aget v3, p2, v0

    const/4 v0, 0x7

    aget v4, p2, v0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 33
    :cond_1
    return-void
.end method
