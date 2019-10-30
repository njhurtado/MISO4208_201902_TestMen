.class public Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/AxisRenderer;
.source "XAxisRenderer.java"


# instance fields
.field protected mXAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 2
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "xAxis"    # Lcom/github/mikephil/charting/components/XAxis;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 24
    invoke-direct {p0, p1, p3}, Lcom/github/mikephil/charting/renderer/AxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 26
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 28
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 30
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 31
    return-void
.end method


# virtual methods
.method public computeAxis(FLjava/util/List;)V
    .locals 6
    .param p1, "xValAverageLength"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "xValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 36
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v0, "a":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getSpaceBetweenLabels()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 43
    .local v2, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 44
    const-string v3, "h"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    .line 48
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v5, "Q"

    invoke-static {v4, v5}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    .line 49
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3, p2}, Lcom/github/mikephil/charting/components/XAxis;->setValues(Ljava/util/List;)V

    .line 50
    return-void
.end method

.method protected drawLabels(Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pos"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 121
    const/4 v4, 0x2

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    .line 125
    .local v2, "position":[F
    iget v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mMinX:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mMaxX:I

    if-gt v0, v4, :cond_3

    .line 127
    int-to-float v4, v0

    aput v4, v2, v6

    .line 129
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 131
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    .local v1, "label":Ljava/lang/String;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->isAvoidFirstLastClippingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 139
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v3, v4

    .line 141
    .local v3, "width":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v4

    mul-float/2addr v4, v7

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    aget v4, v2, v6

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 143
    aget v4, v2, v6

    div-float v5, v3, v7

    sub-float/2addr v4, v5

    aput v4, v2, v6

    .line 153
    .end local v3    # "width":F
    :cond_0
    :goto_1
    aget v4, v2, v6

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, p2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    add-int/2addr v0, v4

    goto :goto_0

    .line 146
    .restart local v1    # "label":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    .line 148
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v3, v4

    .line 149
    .restart local v3    # "width":F
    aget v4, v2, v6

    div-float v5, v3, v7

    add-float/2addr v4, v5

    aput v4, v2, v6

    goto :goto_1

    .line 158
    .end local v1    # "label":Ljava/lang/String;
    .end local v3    # "width":F
    :cond_3
    return-void

    .line 121
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    .line 60
    .local v0, "yoffset":F
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v1, v2, :cond_2

    .line 66
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v1, v2, :cond_3

    .line 70
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v1, v2, :cond_4

    .line 74
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v1, v2, :cond_5

    .line 78
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0

    .line 82
    :cond_5
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;F)V

    .line 83
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawAxisLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_3

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 163
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->isDrawGridLinesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    :cond_0
    return-void

    .line 167
    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 171
    .local v2, "position":[F
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getGridColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getGridLineWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->getGridDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 175
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 177
    .local v0, "gridLinePath":Landroid/graphics/Path;
    iget v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mMinX:I

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mMaxX:I

    if-gt v1, v3, :cond_0

    .line 179
    int-to-float v3, v1

    aput v3, v2, v5

    .line 180
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 182
    aget v3, v2, v5

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    aget v3, v2, v5

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 185
    aget v3, v2, v5

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 186
    aget v3, v2, v5

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 177
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 167
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/XAxis;->getLimitLines()Ljava/util/List;

    move-result-object v5

    .line 206
    .local v5, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 258
    :cond_0
    return-void

    .line 209
    :cond_1
    const/4 v9, 0x4

    new-array v6, v9, [F

    .line 210
    .local v6, "pts":[F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 212
    .local v4, "limitLinePath":Landroid/graphics/Path;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 214
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/components/LimitLine;

    .line 216
    .local v2, "l":Lcom/github/mikephil/charting/components/LimitLine;
    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v10

    aput v10, v6, v9

    .line 217
    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v10

    aput v10, v6, v9

    .line 219
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v9, v6}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 221
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v10

    aput v10, v6, v9

    .line 222
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v10

    aput v10, v6, v9

    .line 224
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    const/4 v9, 0x2

    aget v9, v6, v9

    const/4 v10, 0x3

    aget v10, v6, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 232
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 235
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "label":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 240
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v7

    .line 241
    .local v7, "xOffset":F
    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    .line 243
    .local v0, "add":F
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 245
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextSize()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 249
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v9, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v0, v10

    add-float v8, v9, v10

    .line 251
    .local v8, "yOffset":F
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v9

    sget-object v10, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->POS_RIGHT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v9, v10, :cond_3

    .line 252
    const/4 v9, 0x0

    aget v9, v6, v9

    add-float/2addr v9, v7

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v10

    sub-float/2addr v10, v0

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 212
    .end local v0    # "add":F
    .end local v7    # "xOffset":F
    .end local v8    # "yOffset":F
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 254
    .restart local v0    # "add":F
    .restart local v7    # "xOffset":F
    .restart local v8    # "yOffset":F
    :cond_3
    const/4 v9, 0x0

    aget v9, v6, v9

    add-float/2addr v9, v7

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v10

    add-float/2addr v10, v8

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method
