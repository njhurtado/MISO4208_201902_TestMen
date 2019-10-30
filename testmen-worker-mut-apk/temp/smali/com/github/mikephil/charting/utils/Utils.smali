.class public abstract Lcom/github/mikephil/charting/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final POW_10:[I

.field private static mMaximumFlingVelocity:I

.field private static mMetrics:Landroid/util/DisplayMetrics;

.field private static mMinimumFlingVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x32

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 35
    const/16 v0, 0x1f40

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 255
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 173
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    return v1
.end method

.method public static calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;
    .locals 4
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 198
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 199
    new-instance v1, Lcom/github/mikephil/charting/utils/FSize;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    return-object v1
.end method

.method public static calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static convertDpToPixel(F)F
    .locals 4
    .param p0, "dp"    # F

    .prologue
    .line 113
    sget-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    .line 115
    const-string v2, "MPChartLib-Utils"

    const-string v3, "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertDpToPixel(...). Otherwise conversion does not take place."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local p0    # "dp":F
    :goto_0
    return p0

    .line 122
    .restart local p0    # "dp":F
    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    .line 123
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float v1, p0, v2

    .local v1, "px":F
    move p0, v1

    .line 124
    goto :goto_0
.end method

.method public static convertIntegers(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "integers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 384
    .local v1, "ret":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 385
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-object v1
.end method

.method public static convertPixelsToDp(F)F
    .locals 4
    .param p0, "px"    # F

    .prologue
    .line 136
    sget-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    .line 138
    const-string v2, "MPChartLib-Utils"

    const-string v3, "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertPixelsToDp(...). Otherwise conversion does not take place."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local p0    # "px":F
    :goto_0
    return p0

    .line 145
    .restart local p0    # "px":F
    :cond_0
    sget-object v1, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    .line 146
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    div-float v0, p0, v2

    .local v0, "dp":F
    move p0, v0

    .line 147
    goto :goto_0
.end method

.method public static convertStrings(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 401
    .local v1, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 402
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-object v1
.end method

.method public static formatDecimal(DI)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # D
    .param p2, "digits"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, "a":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 91
    if-nez v2, :cond_0

    .line 92
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_0
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_1
    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###,###,###,##0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "nf":Ljava/text/DecimalFormat;
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "formatted":Ljava/lang/String;
    return-object v1
.end method

.method public static formatNumber(FIZ)Ljava/lang/String;
    .locals 14
    .param p0, "number"    # F
    .param p1, "digitCount"    # I
    .param p2, "separateThousands"    # Z

    .prologue
    .line 270
    const/16 v11, 0x23

    new-array v8, v11, [C

    .line 272
    .local v8, "out":[C
    const/4 v5, 0x0

    .line 273
    .local v5, "neg":Z
    const/4 v11, 0x0

    cmpl-float v11, p0, v11

    if-nez v11, :cond_0

    .line 274
    const-string v11, "0"

    .line 344
    :goto_0
    return-object v11

    .line 277
    :cond_0
    const/4 v10, 0x0

    .line 278
    .local v10, "zero":Z
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, p0, v11

    if-gez v11, :cond_1

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v11, p0, v11

    if-lez v11, :cond_1

    .line 279
    const/4 v10, 0x1

    .line 282
    :cond_1
    const/4 v11, 0x0

    cmpg-float v11, p0, v11

    if-gez v11, :cond_2

    .line 283
    const/4 v5, 0x1

    .line 284
    neg-float p0, p0

    .line 287
    :cond_2
    sget-object v11, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    array-length v11, v11

    if-le p1, v11, :cond_3

    .line 288
    sget-object v11, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    array-length v11, v11

    add-int/lit8 p1, v11, -0x1

    .line 291
    :cond_3
    sget-object v11, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    aget v11, v11, p1

    int-to-float v11, v11

    mul-float/2addr p0, v11

    .line 292
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-long v6, v11

    .line 293
    .local v6, "lval":J
    array-length v11, v8

    add-int/lit8 v3, v11, -0x1

    .line 294
    .local v3, "ind":I
    const/4 v0, 0x0

    .line 295
    .local v0, "charCount":I
    const/4 v1, 0x0

    .local v1, "decimalPointAdded":Z
    move v4, v3

    .line 297
    .end local v3    # "ind":I
    .local v4, "ind":I
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-nez v11, :cond_4

    add-int/lit8 v11, p1, 0x1

    if-ge v0, v11, :cond_8

    .line 298
    :cond_4
    const-wide/16 v12, 0xa

    rem-long v12, v6, v12

    long-to-int v2, v12

    .line 299
    .local v2, "digit":I
    const-wide/16 v12, 0xa

    div-long/2addr v6, v12

    .line 300
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    add-int/lit8 v11, v2, 0x30

    int-to-char v11, v11

    aput-char v11, v8, v4

    .line 301
    add-int/lit8 v0, v0, 0x1

    .line 304
    if-ne v0, p1, :cond_6

    .line 305
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    const/16 v11, 0x2c

    aput-char v11, v8, v3

    .line 306
    add-int/lit8 v0, v0, 0x1

    .line 307
    const/4 v1, 0x1

    move v3, v4

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    :cond_5
    :goto_2
    move v4, v3

    .line 327
    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    goto :goto_1

    .line 310
    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    :cond_6
    if-eqz p2, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-eqz v11, :cond_5

    if-le v0, p1, :cond_5

    .line 312
    if-eqz v1, :cond_7

    .line 314
    sub-int v11, v0, p1

    rem-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_5

    .line 315
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    const/16 v11, 0x2e

    aput-char v11, v8, v3

    .line 316
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    goto :goto_2

    .line 321
    :cond_7
    sub-int v11, v0, p1

    rem-int/lit8 v11, v11, 0x4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    .line 322
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    const/16 v11, 0x2e

    aput-char v11, v8, v3

    .line 323
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    goto :goto_2

    .line 330
    .end local v2    # "digit":I
    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    :cond_8
    if-eqz v10, :cond_9

    .line 331
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    const/16 v11, 0x30

    aput-char v11, v8, v4

    .line 332
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .line 336
    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    :cond_9
    if-eqz v5, :cond_a

    .line 337
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    const/16 v11, 0x2d

    aput-char v11, v8, v4

    .line 338
    add-int/lit8 v0, v0, 0x1

    .line 341
    :goto_3
    array-length v11, v8

    sub-int v9, v11, v0

    .line 344
    .local v9, "start":I
    array-length v11, v8

    sub-int/2addr v11, v9

    invoke-static {v8, v9, v11}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .end local v3    # "ind":I
    .end local v9    # "start":I
    .restart local v4    # "ind":I
    :cond_a
    move v3, v4

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    goto :goto_3
.end method

.method public static getClosestDataSetIndex(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)I
    .locals 6
    .param p1, "val"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/SelectionDetail;",
            ">;F",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            ")I"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "valsAtIndex":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    const v3, -0x7fffffff

    .line 436
    .local v3, "index":I
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 438
    .local v1, "distance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 440
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/utils/SelectionDetail;

    .line 442
    .local v4, "sel":Lcom/github/mikephil/charting/utils/SelectionDetail;
    if-eqz p2, :cond_0

    iget-object v5, v4, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSet:Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 444
    :cond_0
    iget v5, v4, Lcom/github/mikephil/charting/utils/SelectionDetail;->val:F

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 445
    .local v0, "cdistance":F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    .line 446
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/utils/SelectionDetail;

    iget v3, v5, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSetIndex:I

    .line 447
    move v1, v0

    .line 438
    .end local v0    # "cdistance":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v4    # "sel":Lcom/github/mikephil/charting/utils/SelectionDetail;
    :cond_2
    return v3
.end method

.method public static getDecimals(F)I
    .locals 4
    .param p0, "number"    # F

    .prologue
    .line 370
    float-to-double v2, p0

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v0

    .line 371
    .local v0, "i":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public static getLegendFormatDigits(FI)I
    .locals 4
    .param p0, "step"    # F
    .param p1, "bonus"    # I

    .prologue
    .line 234
    float-to-double v0, p0

    const-wide v2, 0x3ee4c305a3adef92L    # 9.9E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 235
    add-int/lit8 v0, p1, 0x6

    .line 247
    :goto_0
    return v0

    .line 236
    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3f19f3c70c996b76L    # 9.9E-5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 237
    add-int/lit8 v0, p1, 0x5

    goto :goto_0

    .line 238
    :cond_1
    float-to-double v0, p0

    const-wide v2, 0x3f50385c67dfe32aL    # 9.9E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 239
    add-int/lit8 v0, p1, 0x4

    goto :goto_0

    .line 240
    :cond_2
    float-to-double v0, p0

    const-wide v2, 0x3f84467381d7dbf5L    # 0.0099

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 241
    add-int/lit8 v0, p1, 0x3

    goto :goto_0

    .line 242
    :cond_3
    float-to-double v0, p0

    const-wide v2, 0x3fb95810624dd2f2L    # 0.099

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 243
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 244
    :cond_4
    float-to-double v0, p0

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 245
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 247
    :cond_5
    add-int/lit8 v0, p1, 0x0

    goto :goto_0
.end method

.method public static getLineHeight(Landroid/graphics/Paint;)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 179
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    return v1
.end method

.method public static getLineSpacing(Landroid/graphics/Paint;)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 184
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    return v1
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 546
    sget v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    return v0
.end method

.method public static getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 5
    .param p1, "val"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/SelectionDetail;",
            ">;F",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            ")F"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "valsAtIndex":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 469
    .local v1, "distance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 471
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/utils/SelectionDetail;

    .line 473
    .local v3, "sel":Lcom/github/mikephil/charting/utils/SelectionDetail;
    iget-object v4, v3, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSet:Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 475
    iget v4, v3, Lcom/github/mikephil/charting/utils/SelectionDetail;->val:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 476
    .local v0, "cdistance":F
    cmpg-float v4, v0, v1

    if-gez v4, :cond_0

    .line 477
    move v1, v0

    .line 469
    .end local v0    # "cdistance":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v3    # "sel":Lcom/github/mikephil/charting/utils/SelectionDetail;
    :cond_1
    return v1
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 542
    sget v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    return v0
.end method

.method public static getNormalizedAngle(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 551
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 552
    add-float/2addr p0, v1

    goto :goto_0

    .line 554
    :cond_0
    rem-float v0, p0, v1

    return v0
.end method

.method public static getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 8
    .param p0, "center"    # Landroid/graphics/PointF;
    .param p1, "dist"    # F
    .param p2, "angle"    # F

    .prologue
    .line 496
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    float-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    float-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 498
    .local v0, "p":Landroid/graphics/PointF;
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 47
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 51
    const-string v2, "MPAndroidChart, Utils.init(...)"

    const-string v3, "PROVIDED CONTEXT OBJECT IS NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 55
    .local v1, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 56
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sput-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method

.method public static init(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    .line 75
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 77
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 78
    return-void
.end method

.method public static nextUp(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 416
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 420
    .end local p0    # "d":D
    :goto_0
    return-wide p0

    .line 419
    .restart local p0    # "d":D
    :cond_0
    add-double/2addr p0, v4

    .line 420
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 535
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 536
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 539
    :goto_0
    return-void

    .line 538
    :cond_0
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method public static roundToNextSignificant(D)F
    .locals 10
    .param p0, "number"    # D

    .prologue
    .line 354
    const-wide/16 v6, 0x0

    cmpg-double v3, p0, v6

    if-gez v3, :cond_0

    neg-double v6, p0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-float v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 355
    .local v0, "d":F
    float-to-int v3, v0

    rsub-int/lit8 v2, v3, 0x1

    .line 356
    .local v2, "pw":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 357
    .local v1, "magnitude":F
    float-to-double v6, v1

    mul-double/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 358
    .local v4, "shifted":J
    long-to-float v3, v4

    div-float/2addr v3, v1

    return v3

    .end local v0    # "d":F
    .end local v1    # "magnitude":F
    .end local v2    # "pw":I
    .end local v4    # "shifted":J
    :cond_0
    move-wide v6, p0

    .line 354
    goto :goto_0
.end method

.method public static velocityTrackerPointerUpCleanUpIfNecessary(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V
    .locals 12
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "tracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 506
    const/16 v10, 0x3e8

    sget v11, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 507
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 508
    .local v5, "upIndex":I
    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 509
    .local v3, "id1":I
    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    .line 510
    .local v7, "x1":F
    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    .line 511
    .local v9, "y1":F
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 512
    if-ne v2, v5, :cond_1

    .line 511
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 516
    .local v4, "id2":I
    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    mul-float v6, v7, v10

    .line 517
    .local v6, "x":F
    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    mul-float v8, v9, v10

    .line 519
    .local v8, "y":F
    add-float v1, v6, v8

    .line 520
    .local v1, "dot":F
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_0

    .line 521
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 525
    .end local v1    # "dot":F
    .end local v4    # "id2":I
    .end local v6    # "x":F
    .end local v8    # "y":F
    :cond_2
    return-void
.end method
