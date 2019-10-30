.class public Lcom/github/mikephil/charting/renderer/LegendRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "LegendRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/renderer/LegendRenderer$1;
    }
.end annotation


# instance fields
.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendFormPaint:Landroid/graphics/Paint;

.field protected mLegendLabelPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 3
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "legend"    # Lcom/github/mikephil/charting/components/Legend;

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 38
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    return-void
.end method


# virtual methods
.method public computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/ChartData",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/components/Legend;->isLegendCustom()Z

    move-result v19

    if-nez v19, :cond_9

    .line 76
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v13, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v6, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v7

    .line 84
    .local v7, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<+Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/DataSet;->getColors()Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v8

    .line 88
    .local v8, "entryCount":I
    instance-of v0, v7, Lcom/github/mikephil/charting/data/BarDataSet;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v19, v7

    check-cast v19, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object v3, v7

    .line 90
    check-cast v3, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 91
    .local v3, "bds":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarDataSet;->getStackLabels()[Ljava/lang/String;

    move-result-object v16

    .line 93
    .local v16, "sLabels":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_0

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarDataSet;->getStackSize()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_0

    .line 95
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    rem-int v19, v11, v19

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 101
    const/16 v19, -0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v3    # "bds":Lcom/github/mikephil/charting/data/BarDataSet;
    .end local v16    # "sLabels":[Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 105
    .end local v11    # "j":I
    :cond_2
    instance-of v0, v7, Lcom/github/mikephil/charting/data/PieDataSet;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/ChartData;->getXVals()Ljava/util/List;

    move-result-object v18

    .local v18, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v15, v7

    .line 108
    check-cast v15, Lcom/github/mikephil/charting/data/PieDataSet;

    .line 110
    .local v15, "pds":Lcom/github/mikephil/charting/data/PieDataSet;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    if-ge v11, v8, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    .line 112
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 116
    :cond_3
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 118
    const/16 v19, -0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 124
    .end local v11    # "j":I
    .end local v15    # "pds":Lcom/github/mikephil/charting/data/PieDataSet;
    .end local v18    # "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1

    if-ge v11, v8, :cond_1

    .line 127
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    .line 129
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_5
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 132
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v12

    .line 133
    .local v12, "label":Ljava/lang/String;
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 141
    .end local v4    # "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<+Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v8    # "entryCount":I
    .end local v11    # "j":I
    .end local v12    # "label":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/components/Legend;->getExtraColors()[I

    move-result-object v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/components/Legend;->getExtraLabels()[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/components/Legend;->getExtraColors()[I

    move-result-object v2

    .local v2, "arr$":[I
    array-length v14, v2

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_6
    if-ge v10, v14, :cond_7

    aget v5, v2, v10

    .line 143
    .local v5, "color":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 144
    .end local v5    # "color":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/components/Legend;->getExtraLabels()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "arr$":[I
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/Legend;->setComputedColors(Ljava/util/List;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/github/mikephil/charting/components/Legend;->setComputedLabels(Ljava/util/List;)V

    .line 151
    .end local v6    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    .end local v13    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    .line 153
    .local v17, "tf":Landroid/graphics/Typeface;
    if-eqz v17, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 156
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/github/mikephil/charting/components/Legend;->calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 161
    return-void
.end method

.method protected drawForm(Landroid/graphics/Canvas;FFILcom/github/mikephil/charting/components/Legend;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "index"    # I
    .param p5, "legend"    # Lcom/github/mikephil/charting/components/Legend;

    .prologue
    .line 386
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getColors()[I

    move-result-object v0

    aget v0, v0, p4

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getColors()[I

    move-result-object v1

    aget v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v6

    .line 392
    .local v6, "formsize":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v7, v6, v0

    .line 394
    .local v7, "half":F
    sget-object v0, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm:[I

    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendForm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    add-float v0, p2, v7

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 399
    :pswitch_1
    sub-float v2, p3, v7

    add-float v3, p2, v6

    add-float v4, p3, v7

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 402
    :pswitch_2
    add-float v3, p2, v6

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 417
    return-void
.end method

.method public getFormPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public renderLegend(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v35

    .line 170
    .local v35, "tf":Landroid/graphics/Typeface;
    if-eqz v35, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 173
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v26

    .line 177
    .local v26, "labelLineHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getYEntrySpace()F

    move-result v3

    add-float v27, v2, v3

    .line 178
    .local v27, "labelLineSpacing":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const-string v3, "ABC"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v23, v26, v2

    .line 180
    .local v23, "formYOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getLabels()[Ljava/lang/String;

    move-result-object v28

    .line 181
    .local v28, "labels":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getColors()[I

    move-result-object v16

    .line 183
    .local v16, "colors":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    move-result v22

    .line 184
    .local v22, "formToTextSpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXEntrySpace()F

    move-result v37

    .line 185
    .local v37, "xEntrySpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-result-object v19

    .line 186
    .local v19, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v21

    .line 189
    .local v21, "formSize":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getStackSpace()F

    move-result v34

    .line 193
    .local v34, "stackSpace":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v39

    .line 194
    .local v39, "yoffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v38

    .line 196
    .local v38, "xoffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v29

    .line 198
    .local v29, "legendPosition":Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    sget-object v2, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition:[I

    invoke-virtual/range {v29 .. v29}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 203
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v17

    .line 207
    .local v17, "contentWidth":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_b

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    add-float v31, v2, v38

    .line 211
    .local v31, "originPosX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    add-float v31, v31, v2

    .line 223
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLineSizes()[Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v15

    .line 224
    .local v15, "calculatedLineSizes":[Lcom/github/mikephil/charting/utils/FSize;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelSizes()[Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v14

    .line 225
    .local v14, "calculatedLabelSizes":[Lcom/github/mikephil/charting/utils/FSize;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelBreakPoints()[Ljava/lang/Boolean;

    move-result-object v13

    .line 227
    .local v13, "calculatedLabelBreakPoints":[Ljava/lang/Boolean;
    move/from16 v4, v31

    .line 228
    .local v4, "posX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    sub-float v2, v2, v39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float v32, v2, v3

    .line 230
    .local v32, "posY":F
    const/16 v30, 0x0

    .line 232
    .local v30, "lineIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "count":I
    :goto_2
    move/from16 v0, v18

    if-ge v6, v0, :cond_0

    .line 233
    aget-object v2, v13, v6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    move/from16 v4, v31

    .line 235
    add-float v2, v26, v27

    add-float v32, v32, v2

    .line 238
    :cond_4
    cmpl-float v2, v4, v31

    if-nez v2, :cond_5

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_5

    .line 239
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_d

    aget-object v2, v15, v30

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    :goto_3
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v4, v2

    .line 240
    add-int/lit8 v30, v30, 0x1

    .line 243
    :cond_5
    aget v2, v16, v6

    const/4 v3, -0x2

    if-eq v2, v3, :cond_e

    const/16 v20, 0x1

    .line 244
    .local v20, "drawingForm":Z
    :goto_4
    aget-object v2, v28, v6

    if-nez v2, :cond_f

    const/16 v25, 0x1

    .line 246
    .local v25, "isStacked":Z
    :goto_5
    if-eqz v20, :cond_7

    .line 247
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_6

    .line 248
    sub-float v4, v4, v21

    .line 250
    :cond_6
    add-float v5, v32, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFILcom/github/mikephil/charting/components/Legend;)V

    .line 252
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_7

    .line 253
    add-float v4, v4, v21

    .line 256
    :cond_7
    if-nez v25, :cond_12

    .line 257
    if-eqz v20, :cond_8

    .line 258
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_10

    move/from16 v0, v22

    neg-float v2, v0

    :goto_6
    add-float/2addr v4, v2

    .line 260
    :cond_8
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_9

    .line 261
    aget-object v2, v14, v6

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    sub-float/2addr v4, v2

    .line 263
    :cond_9
    add-float v2, v32, v26

    aget-object v3, v28, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 265
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_a

    .line 266
    aget-object v2, v14, v6

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v4, v2

    .line 268
    :cond_a
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_11

    move/from16 v0, v37

    neg-float v2, v0

    :goto_7
    add-float/2addr v4, v2

    .line 232
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 214
    .end local v4    # "posX":F
    .end local v6    # "i":I
    .end local v13    # "calculatedLabelBreakPoints":[Ljava/lang/Boolean;
    .end local v14    # "calculatedLabelSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .end local v15    # "calculatedLineSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .end local v18    # "count":I
    .end local v20    # "drawingForm":Z
    .end local v25    # "isStacked":Z
    .end local v30    # "lineIndex":I
    .end local v31    # "originPosX":F
    .end local v32    # "posY":F
    :cond_b
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_c

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v2

    sub-float v31, v2, v38

    .line 217
    .restart local v31    # "originPosX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    sub-float v31, v31, v2

    goto/16 :goto_1

    .line 221
    .end local v31    # "originPosX":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v17, v3

    add-float v31, v2, v3

    .restart local v31    # "originPosX":F
    goto/16 :goto_1

    .line 239
    .restart local v4    # "posX":F
    .restart local v6    # "i":I
    .restart local v13    # "calculatedLabelBreakPoints":[Ljava/lang/Boolean;
    .restart local v14    # "calculatedLabelSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .restart local v15    # "calculatedLineSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .restart local v18    # "count":I
    .restart local v30    # "lineIndex":I
    .restart local v32    # "posY":F
    :cond_d
    aget-object v2, v15, v30

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    neg-float v2, v2

    goto/16 :goto_3

    .line 243
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 244
    .restart local v20    # "drawingForm":Z
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_5

    .restart local v25    # "isStacked":Z
    :cond_10
    move/from16 v2, v22

    .line 258
    goto :goto_6

    :cond_11
    move/from16 v2, v37

    .line 268
    goto :goto_7

    .line 271
    :cond_12
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_13

    move/from16 v0, v34

    neg-float v2, v0

    :goto_9
    add-float/2addr v4, v2

    goto :goto_8

    :cond_13
    move/from16 v2, v34

    goto :goto_9

    .line 286
    .end local v4    # "posX":F
    .end local v6    # "i":I
    .end local v13    # "calculatedLabelBreakPoints":[Ljava/lang/Boolean;
    .end local v14    # "calculatedLabelSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .end local v15    # "calculatedLineSizes":[Lcom/github/mikephil/charting/utils/FSize;
    .end local v17    # "contentWidth":F
    .end local v18    # "count":I
    .end local v20    # "drawingForm":Z
    .end local v25    # "isStacked":Z
    .end local v30    # "lineIndex":I
    .end local v31    # "originPosX":F
    .end local v32    # "posY":F
    :pswitch_1
    const/16 v33, 0x0

    .line 287
    .local v33, "stack":F
    const/16 v36, 0x0

    .line 289
    .local v36, "wasStacked":Z
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_18

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :goto_a
    add-float v4, v3, v2

    .line 293
    .restart local v4    # "posX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v3

    add-float v32, v2, v3

    .line 327
    .restart local v32    # "posY":F
    :goto_b
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c
    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v6, v2, :cond_0

    .line 329
    aget v2, v16, v6

    const/4 v3, -0x2

    if-eq v2, v3, :cond_21

    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 330
    .local v20, "drawingForm":Ljava/lang/Boolean;
    move v9, v4

    .line 332
    .local v9, "x":F
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 333
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_22

    .line 334
    add-float v9, v9, v33

    .line 338
    :goto_e
    add-float v10, v32, v23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFILcom/github/mikephil/charting/components/Legend;)V

    .line 340
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_14

    .line 341
    add-float v9, v9, v21

    .line 344
    :cond_14
    aget-object v2, v28, v6

    if-eqz v2, :cond_26

    .line 346
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_24

    if-nez v36, :cond_24

    .line 347
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_23

    move/from16 v2, v22

    :goto_f
    add-float/2addr v9, v2

    .line 352
    :cond_15
    :goto_10
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_16

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    aget-object v3, v28, v6

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v9, v2

    .line 355
    :cond_16
    if-nez v36, :cond_25

    .line 356
    add-float v2, v32, v26

    aget-object v3, v28, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 363
    :goto_11
    add-float v2, v26, v27

    add-float v32, v32, v2

    .line 364
    const/16 v33, 0x0

    .line 327
    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 290
    .end local v4    # "posX":F
    .end local v6    # "i":I
    .end local v9    # "x":F
    .end local v20    # "drawingForm":Ljava/lang/Boolean;
    .end local v32    # "posY":F
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto/16 :goto_a

    .line 296
    :cond_18
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_19

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_19

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_1c

    :cond_19
    const/16 v24, 0x1

    .line 301
    .local v24, "isRightAligned":Z
    :goto_13
    if-eqz v24, :cond_1d

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    sub-float v4, v2, v38

    .line 303
    .restart local v4    # "posX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1a

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    sub-float/2addr v4, v2

    .line 311
    :cond_1a
    :goto_14
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_1b

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_1e

    .line 313
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    add-float v32, v2, v39

    .restart local v32    # "posY":F
    goto/16 :goto_b

    .line 296
    .end local v4    # "posX":F
    .end local v24    # "isRightAligned":Z
    .end local v32    # "posY":F
    :cond_1c
    const/16 v24, 0x0

    goto :goto_13

    .line 306
    .restart local v24    # "isRightAligned":Z
    :cond_1d
    move/from16 v4, v38

    .line 307
    .restart local v4    # "posX":F
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v19

    if-ne v0, v2, :cond_1a

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v2, v2, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    add-float/2addr v4, v2

    goto :goto_14

    .line 314
    :cond_1e
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-eq v0, v2, :cond_1f

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v29

    if-ne v0, v2, :cond_20

    .line 316
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float v32, v2, v3

    .restart local v32    # "posY":F
    goto/16 :goto_b

    .line 323
    .end local v32    # "posY":F
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    add-float v32, v2, v39

    .restart local v32    # "posY":F
    goto/16 :goto_b

    .line 329
    .end local v24    # "isRightAligned":Z
    .restart local v6    # "i":I
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 336
    .restart local v9    # "x":F
    .restart local v20    # "drawingForm":Ljava/lang/Boolean;
    :cond_22
    sub-float v2, v21, v33

    sub-float/2addr v9, v2

    goto/16 :goto_e

    .line 347
    :cond_23
    move/from16 v0, v22

    neg-float v2, v0

    goto/16 :goto_f

    .line 349
    :cond_24
    if-eqz v36, :cond_15

    .line 350
    move v9, v4

    goto/16 :goto_10

    .line 358
    :cond_25
    add-float v2, v26, v27

    add-float v32, v32, v2

    .line 359
    add-float v2, v32, v26

    aget-object v3, v28, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto/16 :goto_11

    .line 366
    :cond_26
    add-float v2, v21, v34

    add-float v33, v33, v2

    .line 367
    const/16 v36, 0x1

    goto/16 :goto_12

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
