.class public abstract Lcom/github/mikephil/charting/components/ComponentBase;
.super Ljava/lang/Object;
.source "ComponentBase.java"


# instance fields
.field protected mEnabled:Z

.field protected mTextColor:I

.field protected mTextSize:F

.field protected mTypeface:Landroid/graphics/Typeface;

.field protected mXOffset:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x40a00000    # 5.0f

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    .line 20
    iput v1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    .line 23
    iput v1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    .line 29
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    .line 32
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    .line 36
    return-void
.end method


# virtual methods
.method public getTextColor()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getXOffset()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    return v0
.end method

.method public getYOffset()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    .line 149
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    .line 129
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 104
    const/high16 v0, 0x41c00000    # 24.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 105
    const/high16 p1, 0x41c00000    # 24.0f

    .line 106
    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 107
    const/high16 p1, 0x40c00000    # 6.0f

    .line 109
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    .line 110
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    .line 94
    return-void
.end method

.method public setXOffset(F)V
    .locals 1
    .param p1, "xOffset"    # F

    .prologue
    .line 54
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    .line 55
    return-void
.end method

.method public setYOffset(F)V
    .locals 1
    .param p1, "yOffset"    # F

    .prologue
    .line 75
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    .line 76
    return-void
.end method
