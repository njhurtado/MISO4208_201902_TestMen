.class public Lcom/github/mikephil/charting/utils/Transformer;
.super Ljava/lang/Object;
.source "Transformer.java"


# instance fields
.field private mMBuffer1:Landroid/graphics/Matrix;

.field private mMBuffer2:Landroid/graphics/Matrix;

.field protected mMatrixOffset:Landroid/graphics/Matrix;

.field protected mMatrixValueToPx:Landroid/graphics/Matrix;

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 1
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    .line 451
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    .line 459
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer2:Landroid/graphics/Matrix;

    .line 31
    iput-object p1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 32
    return-void
.end method


# virtual methods
.method public generateTransformedValuesBarChart(Ljava/util/List;ILcom/github/mikephil/charting/data/BarData;F)[F
    .locals 10
    .param p2, "dataSet"    # I
    .param p3, "bd"    # Lcom/github/mikephil/charting/data/BarData;
    .param p4, "phaseY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;I",
            "Lcom/github/mikephil/charting/data/BarData;",
            "F)[F"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    new-array v5, v8, [F

    .line 221
    .local v5, "valuePoints":[F
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    .line 222
    .local v3, "setCount":I
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v4

    .line 224
    .local v4, "space":F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_0

    .line 226
    div-int/lit8 v8, v2, 0x2

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 227
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    .line 230
    .local v1, "i":I
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v8

    add-int/lit8 v9, v3, -0x1

    mul-int/2addr v9, v1

    add-int/2addr v8, v9

    add-int/2addr v8, p2

    int-to-float v8, v8

    int-to-float v9, v1

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    add-float v6, v8, v9

    .line 232
    .local v6, "x":F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    .line 234
    .local v7, "y":F
    aput v6, v5, v2

    .line 235
    add-int/lit8 v8, v2, 0x1

    mul-float v9, v7, p4

    aput v9, v5, v8

    .line 224
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 238
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v1    # "i":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/Transformer;->getValueToPixelMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 240
    return-object v5
.end method

.method public generateTransformedValuesBubble(Ljava/util/List;FFII)[F
    .locals 6
    .param p2, "phaseX"    # F
    .param p3, "phaseY"    # F
    .param p4, "from"    # I
    .param p5, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;FFII)[F"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/Entry;>;"
    sub-int v4, p5, p4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v0, v4, 0x2

    .line 133
    .local v0, "count":I
    new-array v3, v0, [F

    .line 135
    .local v3, "valuePoints":[F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 137
    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 139
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    sub-int/2addr v4, p4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    int-to-float v5, p4

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 141
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    mul-float/2addr v5, p3

    aput v5, v3, v4

    .line 135
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 145
    .end local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/Transformer;->getValueToPixelMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 147
    return-object v3
.end method

.method public generateTransformedValuesCandle(Ljava/util/List;FFII)[F
    .locals 6
    .param p2, "phaseX"    # F
    .param p3, "phaseY"    # F
    .param p4, "from"    # I
    .param p5, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/CandleEntry;",
            ">;FFII)[F"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    sub-int v4, p5, p4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v0, v4, 0x2

    .line 191
    .local v0, "count":I
    new-array v3, v0, [F

    .line 193
    .local v3, "valuePoints":[F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 195
    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 197
    .local v1, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v2

    .line 199
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v5

    mul-float/2addr v5, p3

    aput v5, v3, v4

    .line 193
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 203
    .end local v1    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/Transformer;->getValueToPixelMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 205
    return-object v3
.end method

.method public generateTransformedValuesHorizontalBarChart(Ljava/util/List;ILcom/github/mikephil/charting/data/BarData;F)[F
    .locals 10
    .param p2, "dataSet"    # I
    .param p3, "bd"    # Lcom/github/mikephil/charting/data/BarData;
    .param p4, "phaseY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;I",
            "Lcom/github/mikephil/charting/data/BarData;",
            "F)[F"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    new-array v5, v8, [F

    .line 256
    .local v5, "valuePoints":[F
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    .line 257
    .local v3, "setCount":I
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v4

    .line 259
    .local v4, "space":F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_0

    .line 261
    div-int/lit8 v8, v2, 0x2

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 262
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    .line 265
    .local v1, "i":I
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v8

    add-int/lit8 v9, v3, -0x1

    mul-int/2addr v9, v1

    add-int/2addr v8, v9

    add-int/2addr v8, p2

    int-to-float v8, v8

    int-to-float v9, v1

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    add-float v6, v8, v9

    .line 267
    .local v6, "x":F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    .line 269
    .local v7, "y":F
    mul-float v8, v7, p4

    aput v8, v5, v2

    .line 270
    add-int/lit8 v8, v2, 0x1

    aput v6, v5, v8

    .line 259
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 273
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v1    # "i":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/Transformer;->getValueToPixelMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 275
    return-object v5
.end method

.method public generateTransformedValuesLine(Ljava/util/List;FFII)[F
    .locals 6
    .param p2, "phaseX"    # F
    .param p3, "phaseY"    # F
    .param p4, "from"    # I
    .param p5, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;FFII)[F"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/Entry;>;"
    sub-int v4, p5, p4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v0, v4, 0x2

    .line 162
    .local v0, "count":I
    new-array v3, v0, [F

    .line 164
    .local v3, "valuePoints":[F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 166
    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 168
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v2

    .line 170
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    mul-float/2addr v5, p3

    aput v5, v3, v4

    .line 164
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 174
    .end local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/Transformer;->getValueToPixelMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 176
    return-object v3
.end method

.method public generateTransformedValuesScatter(Ljava/util/List;F)[F
    .locals 5
    .param p2, "phaseY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;F)[F"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [F

    .line 106
    .local v2, "valuePoints":[F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 108
    div-int/lit8 v3, v1, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 110
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v1

    .line 112
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    mul-float/2addr v4, p2

    aput v4, v2, v3

    .line 106
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 116
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/Transformer;->getValueToPixelMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 118
    return-object v2
.end method

.method public getOffsetMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPixelToValueMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/Transformer;->getValueToPixelMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer2:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 462
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer2:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getValueMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getValueToPixelMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 454
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 455
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 456
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMBuffer1:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/PointD;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 413
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 414
    .local v0, "pts":[F
    aput p1, v0, v6

    .line 415
    aput p2, v0, v7

    .line 417
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 419
    aget v1, v0, v6

    float-to-double v2, v1

    .line 420
    .local v2, "xTouchVal":D
    aget v1, v0, v7

    float-to-double v4, v1

    .line 422
    .local v4, "yTouchVal":D
    new-instance v1, Lcom/github/mikephil/charting/utils/PointD;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/github/mikephil/charting/utils/PointD;-><init>(DD)V

    return-object v1
.end method

.method public pathValueToPixel(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 287
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 288
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 289
    return-void
.end method

.method public pathValuesToPixel(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 299
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method public pixelsToValue([F)V
    .locals 2
    .param p1, "pixels"    # [F

    .prologue
    .line 387
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 390
    .local v0, "tmp":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 391
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 393
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 394
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 396
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 397
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 398
    return-void
.end method

.method public pointValuesToPixel([F)V
    .locals 1
    .param p1, "pts"    # [F

    .prologue
    .line 311
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 312
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 313
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 314
    return-void
.end method

.method public prepareMatrixOffset(Z)V
    .locals 4
    .param p1, "inverted"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 83
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method

.method public prepareMatrixValuePx(FFFF)V
    .locals 5
    .param p1, "xChartMin"    # F
    .param p2, "deltaX"    # F
    .param p3, "deltaY"    # F
    .param p4, "yChartMin"    # F

    .prologue
    .line 42
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v2

    div-float v0, v2, p2

    .line 43
    .local v0, "scaleX":F
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentHeight()F

    move-result v2

    div-float v1, v2, p3

    .line 46
    .local v1, "scaleY":F
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 47
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    neg-float v3, p1

    neg-float v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 48
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    neg-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 49
    return-void
.end method

.method public rectValueToPixel(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 324
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 325
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 326
    return-void
.end method

.method public rectValueToPixel(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "phaseY"    # F

    .prologue
    .line 337
    iget v0, p1, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 338
    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 343
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 344
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 345
    return-void

    .line 340
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public rectValueToPixelHorizontal(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "phaseY"    # F

    .prologue
    .line 356
    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 357
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixValueToPx:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 362
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 363
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/Transformer;->mMatrixOffset:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 364
    return-void

    .line 359
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public rectValuesToPixel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/Transformer;->getValueToPixelMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 375
    .local v1, "m":Landroid/graphics/Matrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 376
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method
