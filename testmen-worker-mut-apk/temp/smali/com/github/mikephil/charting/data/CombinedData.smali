.class public Lcom/github/mikephil/charting/data/CombinedData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleData;
.source "CombinedData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleData",
        "<",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleDataSet",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private mBarData:Lcom/github/mikephil/charting/data/BarData;

.field private mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

.field private mCandleData:Lcom/github/mikephil/charting/data/CandleData;

.field private mLineData:Lcom/github/mikephil/charting/data/LineData;

.field private mScatterData:Lcom/github/mikephil/charting/data/ScatterData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>()V

    .line 22
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
    .line 25
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>(Ljava/util/List;)V

    .line 26
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "xVals"    # [Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleData;-><init>([Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    return-object v0
.end method

.method public getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

    return-object v0
.end method

.method public getCandleData()Lcom/github/mikephil/charting/data/CandleData;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mCandleData:Lcom/github/mikephil/charting/data/CandleData;

    return-object v0
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mLineData:Lcom/github/mikephil/charting/data/LineData;

    return-object v0
.end method

.method public getScatterData()Lcom/github/mikephil/charting/data/ScatterData;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mScatterData:Lcom/github/mikephil/charting/data/ScatterData;

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mLineData:Lcom/github/mikephil/charting/data/LineData;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mLineData:Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mCandleData:Lcom/github/mikephil/charting/data/CandleData;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mCandleData:Lcom/github/mikephil/charting/data/CandleData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->notifyDataChanged()V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mScatterData:Lcom/github/mikephil/charting/data/ScatterData;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mScatterData:Lcom/github/mikephil/charting/data/ScatterData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterData;->notifyDataChanged()V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleData;->notifyDataChanged()V

    .line 94
    :cond_4
    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/BarData;)V
    .locals 2
    .param p1, "data"    # Lcom/github/mikephil/charting/data/BarData;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->init()V

    .line 42
    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/BubbleData;)V
    .locals 2
    .param p1, "data"    # Lcom/github/mikephil/charting/data/BubbleData;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mBubbleData:Lcom/github/mikephil/charting/data/BubbleData;

    .line 58
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->init()V

    .line 60
    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/CandleData;)V
    .locals 2
    .param p1, "data"    # Lcom/github/mikephil/charting/data/CandleData;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mCandleData:Lcom/github/mikephil/charting/data/CandleData;

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->init()V

    .line 54
    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/LineData;)V
    .locals 2
    .param p1, "data"    # Lcom/github/mikephil/charting/data/LineData;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mLineData:Lcom/github/mikephil/charting/data/LineData;

    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->init()V

    .line 36
    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/ScatterData;)V
    .locals 2
    .param p1, "data"    # Lcom/github/mikephil/charting/data/ScatterData;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CombinedData;->mScatterData:Lcom/github/mikephil/charting/data/ScatterData;

    .line 46
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CombinedData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->init()V

    .line 48
    return-void
.end method
