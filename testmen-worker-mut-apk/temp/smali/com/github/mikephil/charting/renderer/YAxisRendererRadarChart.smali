.class public Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;
.super Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.source "YAxisRendererRadarChart.java"


# instance fields
.field private mChart:Lcom/github/mikephil/charting/charts/RadarChart;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "yAxis"    # Lcom/github/mikephil/charting/components/YAxis;
    .param p3, "chart"    # Lcom/github/mikephil/charting/charts/RadarChart;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 22
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 23
    return-void
.end method


# virtual methods
.method public computeAxis(FF)V
    .locals 0
    .param p1, "yMin"    # F
    .param p2, "yMax"    # F

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->computeAxisValues(FF)V

    .line 28
    return-void
.end method

.method protected computeAxisValues(FF)V
    .locals 28
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 32
    move/from16 v23, p1

    .line 33
    .local v23, "yMin":F
    move/from16 v22, p2

    .line 35
    .local v22, "yMax":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->getLabelCount()I

    move-result v12

    .line 36
    .local v12, "labelCount":I
    sub-float v24, v22, v23

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 38
    .local v16, "range":D
    if-eqz v12, :cond_0

    const-wide/16 v24, 0x0

    cmpg-double v24, v16, v24

    if-gtz v24, :cond_1

    .line 39
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 123
    :goto_0
    return-void

    .line 44
    :cond_1
    int-to-double v0, v12

    move-wide/from16 v24, v0

    div-double v18, v16, v24

    .line 45
    .local v18, "rawInterval":D
    invoke-static/range {v18 .. v19}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v24

    move/from16 v0, v24

    float-to-double v8, v0

    .line 46
    .local v8, "interval":D
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 47
    .local v10, "intervalMagnitude":D
    div-double v24, v8, v10

    move-wide/from16 v0, v24

    double-to-int v7, v0

    .line 48
    .local v7, "intervalSigDigit":I
    const/16 v24, 0x5

    move/from16 v0, v24

    if-le v7, v0, :cond_2

    .line 51
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 55
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->isForceLabelsEnabled()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 57
    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v24, v0

    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v20, v24, v25

    .line 58
    .local v20, "step":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v12, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v12, :cond_3

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    new-array v0, v12, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 65
    :cond_3
    move/from16 v21, p1

    .line 67
    .local v21, "v":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_5

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    aput v21, v24, v6

    .line 69
    add-float v21, v21, v20

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    .end local v6    # "i":I
    .end local v20    # "step":F
    .end local v21    # "v":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->isShowOnlyMinMaxEnabled()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v23, v24, v25

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput v22, v24, v25

    .line 115
    :cond_5
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v24, v8, v24

    if-gez v24, :cond_b

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mDecimals:I

    .line 121
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    aget v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    goto/16 :goto_0

    .line 85
    :cond_6
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    mul-double v4, v24, v8

    .line 87
    .local v4, "first":D
    const-wide/16 v24, 0x0

    cmpl-double v24, v4, v24

    if-nez v24, :cond_7

    .line 88
    const-wide/16 v4, 0x0

    .line 90
    :cond_7
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    mul-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/Utils;->nextUp(D)D

    move-result-wide v14

    .line 94
    .local v14, "last":D
    const/4 v13, 0x0

    .line 95
    .local v13, "n":I
    move-wide v2, v4

    .local v2, "f":D
    :goto_3
    cmpg-double v24, v2, v14

    if-gtz v24, :cond_8

    .line 96
    add-int/lit8 v13, v13, 0x1

    .line 95
    add-double/2addr v2, v8

    goto :goto_3

    .line 99
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->getAxisMaxValue()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 100
    add-int/lit8 v13, v13, 0x1

    .line 102
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v13, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_a

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    new-array v0, v13, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 109
    :cond_a
    move-wide v2, v4

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v13, :cond_5

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    double-to-float v0, v2

    move/from16 v25, v0

    aput v25, v24, v6

    .line 109
    add-double/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 118
    .end local v2    # "f":D
    .end local v4    # "first":D
    .end local v6    # "i":I
    .end local v13    # "n":I
    .end local v14    # "last":D
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mDecimals:I

    goto/16 :goto_2
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 132
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 136
    .local v0, "center":Landroid/graphics/PointF;
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v1

    .line 138
    .local v1, "factor":F
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v7, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 140
    .local v4, "labelCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 142
    add-int/lit8 v7, v4, -0x1

    if-ne v2, v7, :cond_2

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->isDrawTopYLabelEntryEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 145
    :cond_2
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v7, v7, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v7, v7, v2

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v8, v8, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    sub-float/2addr v7, v8

    mul-float v6, v7, v1

    .line 147
    .local v6, "r":F
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v7

    invoke-static {v0, v6, v7}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 149
    .local v5, "p":Landroid/graphics/PointF;
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "label":Ljava/lang/String;
    iget v7, v5, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x41200000    # 10.0f

    add-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/components/YAxis;->getLimitLines()Ljava/util/List;

    move-result-object v5

    .line 160
    .local v5, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-nez v5, :cond_1

    .line 197
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v9

    .line 167
    .local v9, "sliceangle":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v1

    .line 169
    .local v1, "factor":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 171
    .local v0, "center":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 173
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/components/LimitLine;

    .line 175
    .local v4, "l":Lcom/github/mikephil/charting/components/LimitLine;
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 177
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v8, v10, v1

    .line 181
    .local v8, "r":F
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 183
    .local v6, "limitPath":Landroid/graphics/Path;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/RadarData;->getXValCount()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 185
    int-to-float v10, v3

    mul-float/2addr v10, v9

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v0, v8, v10}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v7

    .line 187
    .local v7, "p":Landroid/graphics/PointF;
    if-nez v3, :cond_2

    .line 188
    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 183
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    :cond_2
    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 193
    .end local v7    # "p":Landroid/graphics/PointF;
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 195
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
