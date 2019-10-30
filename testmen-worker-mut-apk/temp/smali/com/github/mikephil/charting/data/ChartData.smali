.class public abstract Lcom/github/mikephil/charting/data/ChartData;
.super Ljava/lang/Object;
.source "ChartData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/DataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mDataSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mLastEnd:I

.field protected mLastStart:I

.field protected mLeftAxisMax:F

.field protected mLeftAxisMin:F

.field protected mRightAxisMax:F

.field protected mRightAxisMin:F

.field private mXValAverageLength:F

.field protected mXVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mYMax:F

.field protected mYMin:F

.field private mYValCount:I

.field private mYValueSum:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 44
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 53
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
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
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 44
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 53
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 73
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 75
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 44
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 53
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 99
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 100
    iput-object p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 102
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "xVals"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 44
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 53
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 85
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 87
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "xVals"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 44
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 53
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 114
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 115
    iput-object p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 117
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 118
    return-void
.end method

.method private arrayToList([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "array"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcXValAverageLength()V
    .locals 3

    .prologue
    .line 150
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 151
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 157
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    goto :goto_0
.end method

.method public static generateXVals(II)Ljava/util/List;
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v1, "xvals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_0
    return-object v1
.end method

.method private handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "firstLeft":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .local p2, "firstRight":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-nez p1, :cond_1

    .line 591
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 592
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    if-nez p2, :cond_0

    .line 594
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 595
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0
.end method

.method private isLegal()V
    .locals 3

    .prologue
    .line 170
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v1, :cond_1

    .line 181
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYVals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or more of the DataSet Entry arrays are longer than the x-values array of this ChartData object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDataSet(Lcom/github/mikephil/charting/data/DataSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "d":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-nez p1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 539
    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 540
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 542
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 544
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 545
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 547
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    .line 549
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 550
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 576
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 553
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_1

    .line 557
    :cond_3
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 558
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 559
    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 560
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 562
    :cond_5
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_7

    .line 564
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 565
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 566
    :cond_6
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 567
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    goto :goto_1

    .line 569
    :cond_7
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 570
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 571
    :cond_8
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 572
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto/16 :goto_1
.end method

.method public addEntry(Lcom/github/mikephil/charting/data/Entry;I)V
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 650
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p2, :cond_8

    if-ltz p2, :cond_8

    .line 652
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 653
    .local v1, "val":F
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 655
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    if-nez v2, :cond_2

    .line 656
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 657
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 659
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_1

    .line 661
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 662
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 688
    :cond_0
    :goto_0
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 689
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 691
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V

    .line 694
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->addEntry(Lcom/github/mikephil/charting/data/Entry;)V

    .line 698
    .end local v0    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .end local v1    # "val":F
    :goto_1
    return-void

    .line 664
    .restart local v0    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .restart local v1    # "val":F
    :cond_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 665
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0

    .line 669
    :cond_2
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    .line 670
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 671
    :cond_3
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 672
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 674
    :cond_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_6

    .line 676
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 677
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 678
    :cond_5
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 679
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    goto :goto_0

    .line 681
    :cond_6
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 682
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 683
    :cond_7
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 684
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0

    .line 696
    .end local v0    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .end local v1    # "val":F
    :cond_8
    const-string v2, "addEntry"

    const-string v3, "Cannot add Entry because dataSetIndex too high or too low."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addXValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "xVal"    # Ljava/lang/String;

    .prologue
    .line 407
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 408
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public calcMinMax(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    .line 196
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 198
    :cond_0
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 199
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 265
    :goto_0
    return-void

    .line 202
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    .line 203
    iput p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    .line 205
    iput v8, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 206
    const v5, -0x800001

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 208
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 210
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5, p1, p2}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    .line 212
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 215
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 208
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 219
    :cond_4
    iget v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_5

    .line 220
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 221
    iput v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 225
    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v1

    .line 227
    .local v1, "firstLeft":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-eqz v1, :cond_8

    .line 229
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 230
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 232
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 233
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v5, v6, :cond_6

    .line 234
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 235
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 237
    :cond_7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 238
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    goto :goto_2

    .line 244
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    .line 246
    .local v2, "firstRight":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-eqz v2, :cond_b

    .line 248
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 249
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 251
    iget-object v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 252
    .restart local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v5, v6, :cond_9

    .line 253
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 254
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 256
    :cond_a
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    .line 257
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto :goto_3

    .line 263
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-direct {p0, v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V

    goto/16 :goto_0
.end method

.method protected calcYValueCount()V
    .locals 3

    .prologue
    .line 290
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 292
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 302
    :goto_0
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :cond_1
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    goto :goto_0
.end method

.method protected calcYValueSum()V
    .locals 3

    .prologue
    .line 272
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 274
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v1, :cond_1

    .line 280
    :cond_0
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 278
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearValues()V
    .locals 1

    .prologue
    .line 953
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 954
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 955
    return-void
.end method

.method public contains(Lcom/github/mikephil/charting/data/DataSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 984
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 985
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    const/4 v2, 0x1

    .line 989
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 967
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 968
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/DataSet;->contains(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 969
    const/4 v2, 0x1

    .line 972
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getColors()[I
    .locals 8

    .prologue
    .line 784
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v7, :cond_1

    .line 785
    const/4 v4, 0x0

    .line 806
    :cond_0
    return-object v4

    .line 787
    :cond_1
    const/4 v1, 0x0

    .line 789
    .local v1, "clrcnt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 790
    iget-object v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/DataSet;->getColors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v1, v7

    .line 789
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 793
    :cond_2
    new-array v4, v1, [I

    .line 794
    .local v4, "colors":[I
    const/4 v3, 0x0

    .line 796
    .local v3, "cnt":I
    const/4 v5, 0x0

    :goto_1
    iget-object v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 798
    iget-object v7, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/DataSet;->getColors()Ljava/util/List;

    move-result-object v2

    .line 800
    .local v2, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 801
    .local v0, "clr":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 802
    add-int/lit8 v3, v3, 0x1

    .line 803
    goto :goto_2

    .line 796
    .end local v0    # "clr":Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 524
    :cond_0
    const/4 v0, 0x0

    .line 526
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    goto :goto_0
.end method

.method public getDataSetByLabel(Ljava/lang/String;Z)Lcom/github/mikephil/charting/data/DataSet;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "ignorecase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v1, p1, p2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetIndexByLabel(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v0

    .line 509
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 510
    :cond_0
    const/4 v1, 0x0

    .line 512
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    goto :goto_0
.end method

.method public getDataSetCount()I
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/data/DataSet;
    .locals 5
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/Entry;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v3, 0x0

    .line 760
    if-nez p1, :cond_1

    move-object v2, v3

    .line 773
    :cond_0
    :goto_0
    return-object v2

    .line 763
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 765
    iget-object v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    .line 767
    .local v2, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 768
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 763
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "j":I
    .end local v2    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :cond_3
    move-object v2, v3

    .line 773
    goto :goto_0
.end method

.method protected getDataSetIndexByLabel(Ljava/util/List;Ljava/lang/String;Z)I
    .locals 2
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "ignorecase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p3, :cond_1

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 445
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 453
    :goto_1
    return v1

    .line 444
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 449
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 450
    goto :goto_1

    .line 448
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 453
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getDataSetLabels()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 473
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 475
    .local v1, "types":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-object v1
.end method

.method public getDataSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    return-object v0
.end method

.method public getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2
    .param p1, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 489
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 490
    const/4 v0, 0x0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 827
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 828
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    .line 832
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstRight()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 837
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    .line 841
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 823
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 818
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 823
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getXValAverageLength()F
    .locals 1

    .prologue
    .line 368
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    return v0
.end method

.method public getXValCount()I
    .locals 1

    .prologue
    .line 463
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getXVals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    return-object v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 345
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    return v0
.end method

.method public getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 355
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 356
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 358
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto :goto_0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 323
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    return v0
.end method

.method public getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 333
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 334
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 336
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0
.end method

.method public getYValCount()I
    .locals 1

    .prologue
    .line 388
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    return v0
.end method

.method public getYValueSum()F
    .locals 1

    .prologue
    .line 378
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;->isLegal()V

    .line 138
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    iget v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(II)V

    .line 139
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcYValueSum()V

    .line 140
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcYValueCount()V

    .line 142
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcXValAverageLength()V

    .line 143
    return-void
.end method

.method public isHighlightEnabled()Z
    .locals 3

    .prologue
    .line 941
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 942
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->isHighlightEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 943
    const/4 v2, 0x0

    .line 945
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notifyDataChanged()V
    .locals 0

    .prologue
    .line 188
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->init()V

    .line 189
    return-void
.end method

.method public removeDataSet(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 634
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 635
    :cond_0
    const/4 v1, 0x0

    .line 638
    :goto_0
    return v1

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 638
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->removeDataSet(Lcom/github/mikephil/charting/data/DataSet;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeDataSet(Lcom/github/mikephil/charting/data/DataSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "d":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-nez p1, :cond_1

    .line 609
    const/4 v0, 0x0

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 614
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 616
    iget v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 617
    iget v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 619
    iget v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(II)V

    goto :goto_0
.end method

.method public removeEntry(II)Z
    .locals 4
    .param p1, "xIndex"    # I
    .param p2, "dataSetIndex"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v2, 0x0

    .line 739
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p2, v3, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v2

    .line 742
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 743
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 745
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 748
    invoke-virtual {p0, v1, p2}, Lcom/github/mikephil/charting/data/ChartData;->removeEntry(Lcom/github/mikephil/charting/data/Entry;I)Z

    move-result v2

    goto :goto_0
.end method

.method public removeEntry(Lcom/github/mikephil/charting/data/Entry;I)Z
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 709
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_2

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 725
    :cond_1
    :goto_0
    return v0

    .line 713
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/DataSet;->removeEntry(I)Z

    move-result v0

    .line 715
    .local v0, "removed":Z
    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 719
    .local v1, "val":F
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 720
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 722
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastStart:I

    iget v3, p0, Lcom/github/mikephil/charting/data/ChartData;->mLastEnd:I

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(II)V

    goto :goto_0
.end method

.method public removeXValue(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 417
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 418
    return-void
.end method

.method public setDrawValues(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 919
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 920
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/DataSet;->setDrawValues(Z)V

    goto :goto_0

    .line 922
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    :cond_0
    return-void
.end method

.method public setHighlightEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 929
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 930
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/DataSet;->setHighlightEnabled(Z)V

    goto :goto_0

    .line 932
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    :cond_0
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V
    .locals 3
    .param p1, "f"    # Lcom/github/mikephil/charting/utils/ValueFormatter;

    .prologue
    .line 867
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    if-nez p1, :cond_1

    .line 874
    :cond_0
    return-void

    .line 870
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 871
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/DataSet;->setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V

    goto :goto_0
.end method

.method public setValueTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 883
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 884
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/DataSet;->setValueTextColor(I)V

    goto :goto_0

    .line 886
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    :cond_0
    return-void
.end method

.method public setValueTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 907
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 908
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/DataSet;->setValueTextSize(F)V

    goto :goto_0

    .line 910
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    :cond_0
    return-void
.end method

.method public setValueTypeface(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 895
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 896
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/DataSet;->setValueTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 898
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    :cond_0
    return-void
.end method
