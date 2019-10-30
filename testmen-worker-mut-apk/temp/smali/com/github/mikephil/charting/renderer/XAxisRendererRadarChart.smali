.class public Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "XAxisRendererRadarChart.java"


# instance fields
.field private mChart:Lcom/github/mikephil/charting/charts/RadarChart;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "xAxis"    # Lcom/github/mikephil/charting/components/XAxis;
    .param p3, "chart"    # Lcom/github/mikephil/charting/charts/RadarChart;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 19
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 20
    return-void
.end method


# virtual methods
.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 25
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 51
    :cond_0
    return-void

    .line 28
    :cond_1
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 30
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/XAxis;->getTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v5

    .line 36
    .local v5, "sliceangle":F
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    .line 38
    .local v2, "factor":F
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v1

    .line 40
    .local v1, "center":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->getValues()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 42
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->getValues()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 44
    .local v6, "text":Ljava/lang/String;
    int-to-float v7, v3

    mul-float/2addr v7, v5

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float v0, v7, v8

    .line 46
    .local v0, "angle":F
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v7

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v8, v8, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    invoke-static {v1, v7, v0}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 49
    .local v4, "p":Landroid/graphics/PointF;
    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v9, v9, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    return-void
.end method
