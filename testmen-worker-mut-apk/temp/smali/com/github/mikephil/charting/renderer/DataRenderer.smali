.class public abstract Lcom/github/mikephil/charting/renderer/DataRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "DataRenderer.java"


# instance fields
.field protected mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

.field protected mDrawPaint:Landroid/graphics/Paint;

.field protected mHighlightPaint:Landroid/graphics/Paint;

.field protected mRenderPaint:Landroid/graphics/Paint;

.field protected mValuePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 4
    .param p1, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p2, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/16 v3, 0x3f

    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 37
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mDrawPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xbb

    const/16 v3, 0x73

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getValueTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getValueTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getValueTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    return-void
.end method

.method public abstract drawData(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawExtras(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
.end method

.method public abstract drawValues(Landroid/graphics/Canvas;)V
.end method

.method public getPaintHighlight()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintRender()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintValues()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public abstract initBuffers()V
.end method
