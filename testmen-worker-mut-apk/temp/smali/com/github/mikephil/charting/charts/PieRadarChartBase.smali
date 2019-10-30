.class public abstract Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "PieRadarChartBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<+",
        "Lcom/github/mikephil/charting/data/DataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mRawRotationAngle:F

.field protected mRotateEnabled:Z

.field private mRotationAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 46
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/high16 v0, 0x43870000    # 270.0f

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 55
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXVals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mDeltaX:F

    .line 67
    return-void
.end method

.method public calculateOffsets()V
    .locals 30

    .prologue
    .line 101
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v14, 0x0

    .local v14, "legendLeft":F
    const/4 v15, 0x0

    .local v15, "legendRight":F
    const/4 v12, 0x0

    .local v12, "legendBottom":F
    const/16 v16, 0x0

    .line 103
    .local v16, "legendTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v29

    mul-float v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v28

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    move-result v28

    add-float v11, v27, v28

    .line 109
    .local v11, "fullLegendWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v27

    sget-object v28, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 112
    const/high16 v27, 0x41500000    # 13.0f

    invoke-static/range {v27 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v24

    .line 114
    .local v24, "spacing":F
    add-float v15, v11, v24

    .line 192
    .end local v24    # "spacing":F
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v27

    add-float v14, v14, v27

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v27

    add-float v15, v15, v27

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v27

    add-float v16, v16, v27

    .line 197
    .end local v11    # "fullLegendWidth":F
    :cond_1
    const/high16 v27, 0x41200000    # 10.0f

    invoke-static/range {v27 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v18

    .line 199
    .local v18, "min":F
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/github/mikephil/charting/charts/RadarChart;

    move/from16 v27, v0

    if-eqz v27, :cond_2

    move-object/from16 v27, p0

    .line 200
    check-cast v27, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/charts/RadarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v25

    .line 202
    .local v25, "x":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 203
    const/high16 v27, 0x41200000    # 10.0f

    invoke-static/range {v27 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v27

    move-object/from16 v0, v25

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 207
    .end local v25    # "x":Lcom/github/mikephil/charting/components/XAxis;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraTopOffset()F

    move-result v27

    add-float v16, v16, v27

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraRightOffset()F

    move-result v27

    add-float v15, v15, v27

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraBottomOffset()F

    move-result v27

    add-float v12, v12, v27

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraLeftOffset()F

    move-result v27

    add-float v14, v14, v27

    .line 212
    move/from16 v0, v18

    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 213
    .local v20, "offsetLeft":F
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 214
    .local v22, "offsetTop":F
    move/from16 v0, v18

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 215
    .local v21, "offsetRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v27

    move/from16 v0, v27

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 217
    .local v19, "offsetBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLogEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 220
    const-string v27, "MPAndroidChart"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "offsetLeft: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", offsetTop: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", offsetRight: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", offsetBottom: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    return-void

    .line 116
    .end local v18    # "min":F
    .end local v19    # "offsetBottom":F
    .end local v20    # "offsetLeft":F
    .end local v21    # "offsetRight":F
    .end local v22    # "offsetTop":F
    .restart local v11    # "fullLegendWidth":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v27

    sget-object v28, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 119
    const/high16 v27, 0x41000000    # 8.0f

    invoke-static/range {v27 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v24

    .line 121
    .restart local v24    # "spacing":F
    add-float v17, v11, v24

    .line 123
    .local v17, "legendWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    move/from16 v28, v0

    add-float v13, v27, v28

    .line 125
    .local v13, "legendHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v7

    .line 127
    .local v7, "c":Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v27, v17

    const/high16 v28, 0x41700000    # 15.0f

    add-float v27, v27, v28

    const/high16 v28, 0x41700000    # 15.0f

    add-float v28, v28, v13

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 128
    .local v6, "bottomRight":Landroid/graphics/PointF;
    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v9

    .line 130
    .local v9, "distLegend":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v27

    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v23

    .line 133
    .local v23, "reference":Landroid/graphics/PointF;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v10

    .line 134
    .local v10, "distReference":F
    const/high16 v27, 0x40a00000    # 5.0f

    invoke-static/range {v27 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v18

    .line 136
    .restart local v18    # "min":F
    cmpg-float v27, v9, v10

    if-gez v27, :cond_5

    .line 138
    sub-float v8, v10, v9

    .line 139
    .local v8, "diff":F
    add-float v15, v18, v8

    .line 142
    .end local v8    # "diff":F
    :cond_5
    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v27, v17

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_0

    .line 143
    move/from16 v15, v17

    goto/16 :goto_0

    .line 146
    .end local v6    # "bottomRight":Landroid/graphics/PointF;
    .end local v7    # "c":Landroid/graphics/PointF;
    .end local v9    # "distLegend":F
    .end local v10    # "distReference":F
    .end local v13    # "legendHeight":F
    .end local v17    # "legendWidth":F
    .end local v18    # "min":F
    .end local v23    # "reference":Landroid/graphics/PointF;
    .end local v24    # "spacing":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v27

    sget-object v28, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 149
    const/high16 v27, 0x41500000    # 13.0f

    invoke-static/range {v27 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v24

    .line 151
    .restart local v24    # "spacing":F
    add-float v14, v11, v24

    .line 153
    goto/16 :goto_0

    .end local v24    # "spacing":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v27

    sget-object v28, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 156
    const/high16 v27, 0x41000000    # 8.0f

    invoke-static/range {v27 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v24

    .line 158
    .restart local v24    # "spacing":F
    add-float v17, v11, v24

    .line 160
    .restart local v17    # "legendWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    move/from16 v28, v0

    add-float v13, v27, v28

    .line 162
    .restart local v13    # "legendHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v7

    .line 164
    .restart local v7    # "c":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    const/high16 v27, 0x41700000    # 15.0f

    sub-float v27, v17, v27

    const/high16 v28, 0x41700000    # 15.0f

    add-float v28, v28, v13

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 165
    .local v5, "bottomLeft":Landroid/graphics/PointF;
    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v9

    .line 167
    .restart local v9    # "distLegend":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v27

    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAngleForPoint(FF)F

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v23

    .line 170
    .restart local v23    # "reference":Landroid/graphics/PointF;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->distanceToCenter(FF)F

    move-result v10

    .line 171
    .restart local v10    # "distReference":F
    const/high16 v27, 0x40a00000    # 5.0f

    invoke-static/range {v27 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v18

    .line 173
    .restart local v18    # "min":F
    cmpg-float v27, v9, v10

    if-gez v27, :cond_8

    .line 175
    sub-float v8, v10, v9

    .line 176
    .restart local v8    # "diff":F
    add-float v14, v18, v8

    .line 179
    .end local v8    # "diff":F
    :cond_8
    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v27, v17

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_0

    .line 180
    move/from16 v14, v17

    goto/16 :goto_0

    .line 183
    .end local v5    # "bottomLeft":Landroid/graphics/PointF;
    .end local v7    # "c":Landroid/graphics/PointF;
    .end local v9    # "distLegend":F
    .end local v10    # "distReference":F
    .end local v13    # "legendHeight":F
    .end local v17    # "legendWidth":F
    .end local v18    # "min":F
    .end local v23    # "reference":Landroid/graphics/PointF;
    .end local v24    # "spacing":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v27

    sget-object v28, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v27

    sget-object v28, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v27

    sget-object v28, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 187
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBottomOffset()F

    move-result v26

    .line 188
    .local v26, "yOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move/from16 v27, v0

    add-float v27, v27, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v29

    mul-float v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v12

    goto/16 :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    instance-of v0, v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    check-cast v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;->computeScroll()V

    .line 83
    :cond_0
    return-void
.end method

.method public distanceToCenter(FF)F
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 282
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 284
    .local v0, "c":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 286
    .local v1, "dist":F
    const/4 v2, 0x0

    .line 287
    .local v2, "xDist":F
    const/4 v3, 0x0

    .line 289
    .local v3, "yDist":F
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    .line 290
    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v4

    .line 295
    :goto_0
    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    .line 296
    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float v3, p2, v4

    .line 302
    :goto_1
    float-to-double v4, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 304
    return v1

    .line 292
    :cond_0
    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, v4, p1

    goto :goto_0

    .line 298
    :cond_1
    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float v3, v4, p2

    goto :goto_1
.end method

.method public getAngleForPoint(FF)F
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 235
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v1

    .line 237
    .local v1, "c":Landroid/graphics/PointF;
    iget v10, v1, Landroid/graphics/PointF;->x:F

    sub-float v10, p1, v10

    float-to-double v6, v10

    .local v6, "tx":D
    iget v10, v1, Landroid/graphics/PointF;->y:F

    sub-float v10, p2, v10

    float-to-double v8, v10

    .line 238
    .local v8, "ty":D
    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 239
    .local v2, "length":D
    div-double v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    .line 241
    .local v4, "r":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v0, v10

    .line 243
    .local v0, "angle":F
    iget v10, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v10, p1, v10

    if-lez v10, :cond_0

    .line 244
    const/high16 v10, 0x43b40000    # 360.0f

    sub-float v0, v10, v0

    .line 247
    :cond_0
    const/high16 v10, 0x42b40000    # 90.0f

    add-float/2addr v0, v10

    .line 250
    const/high16 v10, 0x43b40000    # 360.0f

    cmpl-float v10, v0, v10

    if-lez v10, :cond_1

    .line 251
    const/high16 v10, 0x43b40000    # 360.0f

    sub-float/2addr v0, v10

    .line 253
    :cond_1
    return v0
.end method

.method public getDiameter()F
    .locals 3

    .prologue
    .line 374
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 375
    .local v0, "content":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public abstract getIndexForAngle(F)I
.end method

.method protected getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 8
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "dist"    # F
    .param p3, "angle"    # F

    .prologue
    .line 267
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    float-to-double v4, p2

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    float-to-double v4, p2

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 269
    .local v0, "p":Landroid/graphics/PointF;
    return-object v0
.end method

.method public abstract getRadius()F
.end method

.method public getRawRotationAngle()F
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    return v0
.end method

.method protected abstract getRequiredBaseOffset()F
.end method

.method protected abstract getRequiredBottomOffset()F
.end method

.method public getRotationAngle()F
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    return v0
.end method

.method public getSelectionDetailsAtIndex(I)Ljava/util/List;
    .locals 5
    .param p1, "xIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/SelectionDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 426
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v0

    .line 429
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValForXIndex(I)F

    move-result v3

    .line 430
    .local v3, "yVal":F
    const/high16 v4, 0x7fc00000    # NaNf

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    .line 424
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    new-instance v4, Lcom/github/mikephil/charting/utils/SelectionDetail;

    invoke-direct {v4, v3, v1, v0}, Lcom/github/mikephil/charting/utils/SelectionDetail;-><init>(FILcom/github/mikephil/charting/data/DataSet;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    .end local v3    # "yVal":F
    :cond_1
    return-object v2
.end method

.method public getYChartMax()F
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    .prologue
    .line 409
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 61
    new-instance v0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 62
    return-void
.end method

.method public isRotationEnabled()Z
    .locals 1

    .prologue
    .line 365
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mDataNotSet:Z

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calcMinMax()V

    .line 92
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calculateOffsets()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setRotationAngle(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 323
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    .line 324
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRawRotationAngle:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->getNormalizedAngle(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotationAngle:F

    .line 325
    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 356
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->mRotateEnabled:Z

    .line 357
    return-void
.end method

.method public spin(IFFLcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 4
    .param p1, "durationmillis"    # I
    .param p2, "fromangle"    # F
    .param p3, "toangle"    # F
    .param p4, "easing"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lcom/github/mikephil/charting/charts/PieRadarChartBase;, "Lcom/github/mikephil/charting/charts/PieRadarChartBase<TT;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 472
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 459
    const-string v1, "rotationAngle"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 461
    .local v0, "spinAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 462
    invoke-static {p4}, Lcom/github/mikephil/charting/animation/Easing;->getEasingFunctionFromOption(Lcom/github/mikephil/charting/animation/Easing$EasingOption;)Lcom/github/mikephil/charting/animation/EasingFunction;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 464
    new-instance v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 471
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
