.class public Lcom/github/mikephil/charting/data/ScatterData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleData;
.source "ScatterData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleData",
        "<",
        "Lcom/github/mikephil/charting/data/ScatterDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>(Ljava/util/List;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/github/mikephil/charting/data/ScatterDataSet;)V
    .locals 1
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/ScatterDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/github/mikephil/charting/data/ScatterDataSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/github/mikephil/charting/data/ScatterData;->toList(Lcom/github/mikephil/charting/data/ScatterDataSet;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/ScatterDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/ScatterDataSet;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 23
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "xVals"    # [Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>([Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/github/mikephil/charting/data/ScatterDataSet;)V
    .locals 1
    .param p1, "xVals"    # [Ljava/lang/String;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/ScatterDataSet;

    .prologue
    .line 34
    invoke-static {p2}, Lcom/github/mikephil/charting/data/ScatterData;->toList(Lcom/github/mikephil/charting/data/ScatterDataSet;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "xVals"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/ScatterDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/ScatterDataSet;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 27
    return-void
.end method

.method private static toList(Lcom/github/mikephil/charting/data/ScatterDataSet;)Ljava/util/List;
    .locals 1
    .param p0, "dataSet"    # Lcom/github/mikephil/charting/data/ScatterDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/ScatterDataSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/ScatterDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "sets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/ScatterDataSet;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method


# virtual methods
.method public getGreatestShapeSize()F
    .locals 5

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "max":F
    iget-object v4, p0, Lcom/github/mikephil/charting/data/ScatterData;->mDataSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/ScatterDataSet;

    .line 53
    .local v2, "set":Lcom/github/mikephil/charting/data/ScatterDataSet;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getScatterShapeSize()F

    move-result v3

    .line 55
    .local v3, "size":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    .line 56
    move v1, v3

    goto :goto_0

    .line 59
    .end local v2    # "set":Lcom/github/mikephil/charting/data/ScatterDataSet;
    .end local v3    # "size":F
    :cond_1
    return v1
.end method
