.class public Lcom/github/mikephil/charting/components/LimitLine;
.super Ljava/lang/Object;
.source "LimitLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    }
.end annotation


# instance fields
.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mLabel:Ljava/lang/String;

.field private mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field private mLimit:F

.field private mLineColor:I

.field private mLineWidth:F

.field private mTextSize:F

.field private mTextStyle:Landroid/graphics/Paint$Style;

.field private mValueTextColor:I


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "limit"    # F

    .prologue
    const/16 v1, 0x5b

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    .line 26
    const/16 v0, 0xed

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    .line 29
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mValueTextColor:I

    .line 32
    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextSize:F

    .line 35
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 44
    sget-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->POS_RIGHT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 58
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    .line 59
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 2
    .param p1, "limit"    # F
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x5b

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    .line 26
    const/16 v0, 0xed

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    .line 29
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mValueTextColor:I

    .line 32
    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextSize:F

    .line 35
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 44
    sget-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->POS_RIGHT:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 69
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    .line 70
    iput-object p2, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public disableDashedLine()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 143
    return-void
.end method

.method public enableDashedLine(FFF)V
    .locals 3
    .param p1, "lineLength"    # F
    .param p2, "spaceLength"    # F
    .param p3, "phase"    # F

    .prologue
    .line 133
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 136
    return-void
.end method

.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    return-object v0
.end method

.method public getLimit()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    return v0
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mValueTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextSize:F

    return v0
.end method

.method public getTextStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public isDashedLineEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setLabelPosition(Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 209
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    .line 114
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 90
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 91
    const p1, 0x3e4ccccd    # 0.2f

    .line 92
    :cond_0
    const/high16 v0, 0x41400000    # 12.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 93
    const/high16 p1, 0x41400000    # 12.0f

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    .line 95
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mValueTextColor:I

    .line 171
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 245
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextSize:F

    .line 246
    return-void
.end method

.method public setTextStyle(Landroid/graphics/Paint$Style;)V
    .locals 0
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    .line 190
    return-void
.end method
