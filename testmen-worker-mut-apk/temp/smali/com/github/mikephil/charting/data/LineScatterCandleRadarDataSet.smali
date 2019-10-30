.class public abstract Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet;
.source "LineScatterCandleRadarDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mDrawHorizontalHighlightIndicator:Z

.field protected mDrawVerticalHighlightIndicator:Z

.field protected mHighlightLineWidth:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 12
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    .line 13
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    .line 16
    iput v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    .line 20
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    .line 21
    return-void
.end method


# virtual methods
.method public getHighlightLineWidth()F
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    return v0
.end method

.method public isHorizontalHighlightIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    return v0
.end method

.method public isVerticalHighlightIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    return v0
.end method

.method public setDrawHighlightIndicators(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 44
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->setDrawVerticalHighlightIndicator(Z)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 46
    return-void
.end method

.method public setDrawHorizontalHighlightIndicator(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 28
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawHorizontalHighlightIndicator:Z

    .line 29
    return-void
.end method

.method public setDrawVerticalHighlightIndicator(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 36
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mDrawVerticalHighlightIndicator:Z

    .line 37
    return-void
.end method

.method public setHighlightLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 61
    .local p0, "this":Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;, "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;->mHighlightLineWidth:F

    .line 62
    return-void
.end method
