.class public Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/AxisRenderer;
.source "YAxisRenderer.java"


# instance fields
.field protected mYAxis:Lcom/github/mikephil/charting/components/YAxis;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 2
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "yAxis"    # Lcom/github/mikephil/charting/components/YAxis;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 26
    invoke-direct {p0, p1, p3}, Lcom/github/mikephil/charting/renderer/AxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 28
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 30
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    return-void
.end method


# virtual methods
.method public computeAxis(FF)V
    .locals 5
    .param p1, "yMin"    # F
    .param p2, "yMax"    # F

    .prologue
    .line 46
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutY()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/PointD;

    move-result-object v0

    .line 49
    .local v0, "p1":Lcom/github/mikephil/charting/utils/PointD;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/PointD;

    move-result-object v1

    .line 51
    .local v1, "p2":Lcom/github/mikephil/charting/utils/PointD;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/PointD;->y:D

    double-to-float p1, v2

    .line 53
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/PointD;->y:D

    double-to-float p2, v2

    .line 61
    .end local v0    # "p1":Lcom/github/mikephil/charting/utils/PointD;
    .end local v1    # "p2":Lcom/github/mikephil/charting/utils/PointD;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxisValues(FF)V

    .line 62
    return-void

    .line 56
    .restart local v0    # "p1":Lcom/github/mikephil/charting/utils/PointD;
    .restart local v1    # "p2":Lcom/github/mikephil/charting/utils/PointD;
    :cond_1
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/PointD;->y:D

    double-to-float p1, v2

    .line 57
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/PointD;->y:D

    double-to-float p2, v2

    goto :goto_0
.end method

.method protected computeAxisValues(FF)V
    .locals 28
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 72
    move/from16 v23, p1

    .line 73
    .local v23, "yMin":F
    move/from16 v22, p2

    .line 75
    .local v22, "yMax":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->getLabelCount()I

    move-result v12

    .line 76
    .local v12, "labelCount":I
    sub-float v24, v22, v23

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 78
    .local v16, "range":D
    if-eqz v12, :cond_0

    const-wide/16 v24, 0x0

    cmpg-double v24, v16, v24

    if-gtz v24, :cond_1

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 154
    :goto_0
    return-void

    .line 84
    :cond_1
    int-to-double v0, v12

    move-wide/from16 v24, v0

    div-double v18, v16, v24

    .line 85
    .local v18, "rawInterval":D
    invoke-static/range {v18 .. v19}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v24

    move/from16 v0, v24

    float-to-double v8, v0

    .line 86
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

    .line 87
    .local v10, "intervalMagnitude":D
    div-double v24, v8, v10

    move-wide/from16 v0, v24

    double-to-int v7, v0

    .line 88
    .local v7, "intervalSigDigit":I
    const/16 v24, 0x5

    move/from16 v0, v24

    if-le v7, v0, :cond_2

    .line 91
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->isForceLabelsEnabled()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 97
    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v24, v0

    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v20, v24, v25

    .line 98
    .local v20, "step":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v12, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v12, :cond_3

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    new-array v0, v12, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 105
    :cond_3
    move/from16 v21, p1

    .line 107
    .local v21, "v":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    aput v21, v24, v6

    .line 109
    add-float v21, v21, v20

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 116
    .end local v6    # "i":I
    .end local v20    # "step":F
    .end local v21    # "v":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->isShowOnlyMinMaxEnabled()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v23, v24, v25

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput v22, v24, v25

    .line 149
    :cond_5
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v24, v8, v24

    if-gez v24, :cond_9

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

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

    goto/16 :goto_0

    .line 125
    :cond_6
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    mul-double v4, v24, v8

    .line 126
    .local v4, "first":D
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    mul-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/Utils;->nextUp(D)D

    move-result-wide v14

    .line 130
    .local v14, "last":D
    const/4 v13, 0x0

    .line 131
    .local v13, "n":I
    move-wide v2, v4

    .local v2, "f":D
    :goto_2
    cmpg-double v24, v2, v14

    if-gtz v24, :cond_7

    .line 132
    add-int/lit8 v13, v13, 0x1

    .line 131
    add-double/2addr v2, v8

    goto :goto_2

    .line 135
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v13, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_8

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    new-array v0, v13, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 142
    :cond_8
    move-wide v2, v4

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v13, :cond_5

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    move-object/from16 v24, v0

    double-to-float v0, v2

    move/from16 v25, v0

    aput v25, v24, v6

    .line 142
    add-double/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 152
    .end local v2    # "f":D
    .end local v4    # "first":D
    .end local v6    # "i":I
    .end local v13    # "n":I
    .end local v14    # "last":D
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/YAxis;->mDecimals:I

    goto/16 :goto_0
.end method

.method protected drawYLabels(Landroid/graphics/Canvas;F[FF)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "fixedPosition"    # F
    .param p3, "positions"    # [F
    .param p4, "offset"    # F

    .prologue
    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    if-ge v0, v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawTopYLabelEntryEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 248
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 246
    .restart local v1    # "text":Ljava/lang/String;
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    add-float/2addr v2, p4

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 162
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v7, v7, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    mul-int/lit8 v7, v7, 0x2

    new-array v3, v7, [F

    .line 167
    .local v3, "positions":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_2

    .line 171
    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v8, v8, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    div-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    aput v8, v3, v7

    .line 167
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 174
    :cond_2
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 176
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 177
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getXOffset()F

    move-result v5

    .line 181
    .local v5, "xoffset":F
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v8, "A"

    invoke-static {v7, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40200000    # 2.5f

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v8

    add-float v6, v7, v8

    .line 183
    .local v6, "yoffset":F
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    .line 184
    .local v0, "dependency":Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v2

    .line 186
    .local v2, "labelPosition":Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    const/4 v4, 0x0

    .line 188
    .local v4, "xPos":F
    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v7, :cond_4

    .line 190
    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v2, v7, :cond_3

    .line 191
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 192
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v7

    sub-float v4, v7, v5

    .line 209
    :goto_2
    invoke-virtual {p0, p1, v4, v3, v6}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->drawYLabels(Landroid/graphics/Canvas;F[FF)V

    goto/16 :goto_0

    .line 194
    :cond_3
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 195
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v7

    add-float v4, v7, v5

    goto :goto_2

    .line 200
    :cond_4
    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v2, v7, :cond_5

    .line 201
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 202
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v7

    add-float v4, v7, v5

    goto :goto_2

    .line 204
    :cond_5
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 205
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v7

    sub-float v4, v7, v5

    goto :goto_2
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawAxisLineEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 221
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    .line 253
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isDrawGridLinesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    :cond_0
    return-void

    .line 257
    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [F

    .line 259
    .local v2, "position":[F
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getGridColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getGridLineWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 261
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getGridDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 263
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 266
    .local v0, "gridLinePath":Landroid/graphics/Path;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    if-ge v1, v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v3, v3, v1

    aput v3, v2, v5

    .line 269
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 271
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v3

    aget v4, v2, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 272
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    aget v4, v2, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 275
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 277
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    .line 289
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->getLimitLines()Ljava/util/List;

    move-result-object v4

    .line 291
    .local v4, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 342
    :cond_0
    return-void

    .line 294
    :cond_1
    const/4 v8, 0x2

    new-array v5, v8, [F

    .line 295
    .local v5, "pts":[F
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 297
    .local v3, "limitLinePath":Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 299
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/components/LimitLine;

    .line 301
    .local v1, "l":Lcom/github/mikephil/charting/components/LimitLine;
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 306
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v8

    aput v8, v5, v11

    .line 308
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 310
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v8

    aget v9, v5, v11

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 311
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v8

    aget v9, v5, v11

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 313
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 314
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 317
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "label":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 322
    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    .line 323
    .local v6, "xOffset":F
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v9, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, v8, v9

    .line 325
    .local v7, "yOffset":F
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 326
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 327
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 329
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v8

    sget-object v9, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->POS_RIGHT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v8, v9, :cond_3

    .line 333
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 334
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v8

    sub-float/2addr v8, v6

    aget v9, v5, v11

    sub-float/2addr v9, v7

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    .end local v6    # "xOffset":F
    .end local v7    # "yOffset":F
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 337
    .restart local v6    # "xOffset":F
    .restart local v7    # "yOffset":F
    :cond_3
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 338
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v8

    add-float/2addr v8, v6

    aget v9, v5, v11

    sub-float/2addr v9, v7

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method
