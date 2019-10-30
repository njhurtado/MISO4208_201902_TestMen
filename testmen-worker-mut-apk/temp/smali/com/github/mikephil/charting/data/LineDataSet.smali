.class public Lcom/github/mikephil/charting/data/LineDataSet;
.super Lcom/github/mikephil/charting/data/LineRadarDataSet;
.source "LineDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private mCircleColorHole:I

.field private mCircleColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleSize:F

.field private mCubicIntensity:F

.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mDrawCircleHole:Z

.field private mDrawCircles:Z

.field private mDrawCubic:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 17
    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColorHole:I

    .line 23
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    .line 26
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    .line 29
    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 32
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->copy()Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/LineDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 63
    .local v0, "copied":Lcom/github/mikephil/charting/data/LineDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mColors:Ljava/util/List;

    .line 64
    iget v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    iput v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    .line 65
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 66
    iget-object v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 67
    iget-boolean v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    iput-boolean v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    .line 68
    iget-boolean v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    iput-boolean v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    .line 69
    iget v3, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/LineDataSet;->mHighLightColor:I

    .line 71
    return-object v0
.end method

.method public disableDashedLine()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 136
    return-void
.end method

.method public enableDashedLine(FFF)V
    .locals 3
    .param p1, "lineLength"    # F
    .param p2, "spaceLength"    # F
    .param p3, "phase"    # F

    .prologue
    .line 126
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 129
    return-void
.end method

.method public getCircleColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCircleColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    return-object v0
.end method

.method public getCircleHoleColor()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColorHole:I

    return v0
.end method

.method public getCircleSize()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    return v0
.end method

.method public getCubicIntensity()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    return v0
.end method

.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public isDashedLineEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDrawCircleHoleEnabled()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    return v0
.end method

.method public isDrawCirclesEnabled()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    return v0
.end method

.method public isDrawCubicEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    return v0
.end method

.method public resetCircleColors()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 279
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/LineDataSet;->resetCircleColors()V

    .line 271
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public setCircleColorHole(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColorHole:I

    .line 288
    return-void
.end method

.method public setCircleColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 227
    return-void
.end method

.method public setCircleColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 239
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 240
    return-void
.end method

.method public setCircleColors([ILandroid/content/Context;)V
    .locals 6
    .param p1, "colors"    # [I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v1, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .line 257
    .local v2, "color":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "color":I
    :cond_0
    iput-object v1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 261
    return-void
.end method

.method public setCircleSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 106
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleSize:F

    .line 107
    return-void
.end method

.method public setCubicIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 83
    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 85
    const p1, 0x3d4ccccd    # 0.05f

    .line 87
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    .line 88
    return-void
.end method

.method public setDrawCircleHole(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    .line 306
    return-void
.end method

.method public setDrawCircles(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    .line 164
    return-void
.end method

.method public setDrawCubic(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCubic:Z

    .line 183
    return-void
.end method
