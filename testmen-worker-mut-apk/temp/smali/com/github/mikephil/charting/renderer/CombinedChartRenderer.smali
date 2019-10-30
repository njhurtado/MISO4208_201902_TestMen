.class public Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "CombinedChartRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/renderer/CombinedChartRenderer$1;
    }
.end annotation


# instance fields
.field protected mRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/renderer/DataRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/CombinedChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 26
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->createRenderers(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 29
    return-void
.end method


# virtual methods
.method public calcXBounds(Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;I)V
    .locals 3
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;
    .param p2, "xAxisModulus"    # I

    .prologue
    .line 108
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 109
    .local v1, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v1, p1, p2}, Lcom/github/mikephil/charting/renderer/DataRenderer;->calcXBounds(Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;I)V

    goto :goto_0

    .line 110
    .end local v1    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method protected createRenderers(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 7
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/CombinedChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    move-result-object v4

    .line 45
    .local v4, "orders":[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    move-object v0, v4

    .local v0, "arr$":[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 47
    .local v3, "order":Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    sget-object v5, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$charts$CombinedChart$DrawOrder:[I

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :pswitch_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 50
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    invoke-direct {v6, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :pswitch_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 54
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;

    invoke-direct {v6, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :pswitch_2
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 58
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    invoke-direct {v6, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :pswitch_3
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;

    invoke-direct {v6, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :pswitch_4
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 66
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;

    invoke-direct {v6, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/ScatterDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v3    # "order":Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    :cond_1
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 83
    .local v1, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawData(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 84
    .end local v1    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 97
    .local v1, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 98
    .end local v1    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 102
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 103
    .local v1, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v1, p1, p2}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_0

    .line 104
    .end local v1    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 90
    .local v1, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 91
    .end local v1    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public getSubRenderer(I)Lcom/github/mikephil/charting/renderer/DataRenderer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/renderer/DataRenderer;

    goto :goto_0
.end method

.method public getSubRenderers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/renderer/DataRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    return-object v0
.end method

.method public initBuffers()V
    .locals 3

    .prologue
    .line 75
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 76
    .local v1, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->initBuffers()V

    goto :goto_0

    .line 77
    .end local v1    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public setSubRenderers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/renderer/DataRenderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "renderers":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/renderer/DataRenderer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    .line 136
    return-void
.end method
