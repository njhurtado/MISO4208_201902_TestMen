.class public Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;
.super Ljava/lang/Object;
.source "BarLineChartBase.java"

# interfaces
.implements Lcom/github/mikephil/charting/utils/FillFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/charts/BarLineChartBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultFillFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/mikephil/charting/charts/BarLineChartBase;


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;)V
    .locals 0

    .prologue
    .line 1468
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>.DefaultFillFormatter;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;->this$0:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/data/LineData;FF)F
    .locals 6
    .param p1, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .param p2, "data"    # Lcom/github/mikephil/charting/data/LineData;
    .param p3, "chartMaxY"    # F
    .param p4, "chartMinY"    # F

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>.DefaultFillFormatter;"
    const/4 v5, 0x0

    .line 1474
    const/4 v0, 0x0

    .line 1476
    .local v0, "fillMin":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getYMax()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getYMin()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 1477
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return v0

    .line 1480
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase$DefaultFillFormatter;->this$0:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isStartAtZeroEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1484
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineData;->getYMax()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 1485
    const/4 v1, 0x0

    .line 1488
    .local v1, "max":F
    :goto_1
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineData;->getYMin()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 1489
    const/4 v2, 0x0

    .line 1493
    .local v2, "min":F
    :goto_2
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineDataSet;->getYMin()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    move v0, v2

    .line 1494
    :goto_3
    goto :goto_0

    .line 1487
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_1
    move v1, p3

    .restart local v1    # "max":F
    goto :goto_1

    .line 1491
    :cond_2
    move v2, p4

    .restart local v2    # "min":F
    goto :goto_2

    :cond_3
    move v0, v1

    .line 1493
    goto :goto_3

    .line 1495
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
