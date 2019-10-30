.class public Lcom/github/mikephil/charting/components/XAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "XAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    }
.end annotation


# instance fields
.field private mAvoidFirstLastClipping:Z

.field public mAxisLabelModulus:I

.field private mIsAxisModulusCustom:Z

.field public mLabelHeight:I

.field public mLabelWidth:I

.field private mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

.field private mSpaceBetweenLabels:I

.field protected mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mYAxisLabelModulus:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    .line 23
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    .line 29
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mSpaceBetweenLabels:I

    .line 42
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    .line 48
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    .line 55
    iput v1, p0, Lcom/github/mikephil/charting/components/XAxis;->mYAxisLabelModulus:I

    .line 61
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    .line 64
    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 73
    return-void
.end method


# virtual methods
.method public getLongestLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    const-string v1, ""

    .line 191
    .local v1, "longest":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 195
    move-object v1, v2

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    return-object v0
.end method

.method public getSpaceBetweenLabels()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mSpaceBetweenLabels:I

    return v0
.end method

.method public getValues()Ljava/util/List;
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
    .line 183
    iget-object v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    return-object v0
.end method

.method public isAvoidFirstLastClippingEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    return v0
.end method

.method public isAxisModulusCustom()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    return v0
.end method

.method public resetLabelsToSkip()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    .line 127
    return-void
.end method

.method public setAvoidFirstLastClipping(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    .line 157
    return-void
.end method

.method public setLabelsToSkip(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 113
    if-gez p1, :cond_0

    .line 114
    const/4 p1, 0x0

    .line 116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mIsAxisModulusCustom:Z

    .line 117
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    .line 118
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    .line 89
    return-void
.end method

.method public setSpaceBetweenLabels(I)V
    .locals 0
    .param p1, "spaceCharacters"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mSpaceBetweenLabels:I

    .line 100
    return-void
.end method

.method public setValues(Ljava/util/List;)V
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
    .line 174
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/components/XAxis;->mValues:Ljava/util/List;

    .line 175
    return-void
.end method
